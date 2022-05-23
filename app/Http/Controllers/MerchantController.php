<?php

namespace App\Http\Controllers;

use App\Models\Merchant;
use App\WC\Api;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Rating;
use App\Models\User;

class MerchantController extends Controller
{
    public function all($merch_id = null)
    {
        if ($merch_id === null) {
            $merchants = DB::table('merchants')
                ->get();
            return $merchants;
        } else {
            $merchant = DB::table('merchants')
                ->where("merch_wp_id", "=", $merch_id)
                ->first();
            $merchant->vendor = Api::wp("wcfmmp/v1")->get("store-vendors/" . $merch_id);
            return response()->json($merchant);
        }
    }
    public function category_exists($categories, $category)
    {
        foreach ($categories as $c) {
            if ($c->id == $category->id) {
                return true;
            }
        }
        return false;
    }
    public function products(Request $request, $merch_id = null)
    {
        if ($merch_id == null) {
            return response()->json([
                "message" => "missing merchant id",
            ]);
        } else {
            $categories = [];
            $products = Api::wp("wcfmmp/v1")->get("store-vendors/" . $merch_id . "/products");
            foreach ($products as $product) {
                foreach ($product->categories as $category) {
                    if (!$this->category_exists($categories, $category)) {
                        array_push($categories, $category);
                    }
                }
            }
            return response()->json([
                "merchant" => $this->all($merch_id)->original,
                "categories" => $categories,
                "products" => $this->injectMerchantModel($products),
            ]);
        }
    }
    public function injectMerchantModel($products)
    {
        $stores = [];
        $flatten_stores = [];
        foreach ($products as $s) {
            if (isset($s->store->vendor_id))
                array_push($stores, $s->store->vendor_id);
        }
        $stores = array_unique($stores);
        foreach ($stores as $store) {
            array_push($flatten_stores, $store);
        }
        $merchant = [];
        $merchants = Merchant::whereIn("merch_wp_id", $flatten_stores)->get();
        foreach ($merchants as $m) {
            $merchant[$m->merch_wp_id] = $m;
        }
        foreach ($products as $s) {
            if (isset($s->store->vendor_id))
                $s->merchant = $merchant[$s->store->vendor_id];
        }
        return $products;
    }

    public function productArchive(Request $request)
    {
        $return = Api::wp("wc/v3")->get("products", $request->all());
        foreach ($return as $key => $product) {
            $pid = $product->id;
            $rating = Rating::where("ratee_id", $pid);
            $product->ratings = [
                "merchant" => User::where("user_id", $pid)->first(),
                "rating_count" => $rating->count(),
                "rating" => (float)$rating->sum('rate_number'),
                "average" => $rating->sum('rate_number') / ($rating->count() > 0 ? $rating->count() : 1),
                "rated" => Rating::where("user_id", $request->user_id)->exists(),
                "ratings" => Rating::join('users', 'users.user_id', '=', 'rating.user_id')->where("ratee_id", $pid)->get()
            ];
        }
        return $this->injectMerchantModel($return);
    }

    public function merchantArchive(Request $request)
    {
        $return = Api::wp("wcfmmp/v1")->get("store-vendors", $request->all());
        foreach ($return as $key => $vendor) {
            $vid = $vendor->vendor_id;
            $merchant = Merchant::where("merch_wp_id", $vid)->first();
            $vendor->merch = $merchant;

            $rating = Rating::where("ratee_id", $merchant->merch_id);
            $vendor->ratings = [
                "merchant" => User::where("user_id", $merchant->merch_id)->first(),
                "rating_count" => $rating->count(),
                "rating" => (float)$rating->sum('rate_number'),
                "average" => $rating->sum('rate_number') / ($rating->count() > 0 ? $rating->count() : 1),
                "rated" => Rating::where("user_id", $request->user_id)->exists(),
                "ratings" => Rating::join('users', 'users.user_id', '=', 'rating.user_id')->where("ratee_id", $merchant->merch_id)->get()
            ];
        }
        return response()->json($return);
    }

    public function merchantInsert(Request $request)
    {
        $url = "http://localhost:3002/wp-json/mo/v1/store-location";
        $merchants = Api::wp("wcfmmp/v1")->get("store-vendors");

        return response()->json([
            "merchant" => $merchants,
        ]);

        /*
            Update vendor data to merchant table - in laravel check first if merchant exist through merch_name
            call api http://localhost:3002/wp-json/mo/v1/store-location
            to insert meta_key _wcfm_store_lng and _wcfm_store_lat to merch_lat and merch_long

        */
    }

    public function rateMerchant(Request $request)
    {
        return Rating::create($request->all());
    }

    public function getRatings(Request $request)
    {
        if ($request->product_id) {
            $id = $request->product_id;
        } else {
            $id = $request->merchant_id;
        }
        $rating = Rating::where("ratee_id", $id);
        return [
            "merchant" => User::where("user_id", $id)->first(),
            "rating_count" => $rating->count(),
            "rating" => (float)$rating->sum('rate_number'),
            "average" => $rating->sum('rate_number') / $rating->count(),
            "rated" => Rating::where("user_id", $request->user_id)->exists(),
            "ratings" => Rating::join('users', 'users.user_id', '=', 'rating.user_id')->where("ratee_id", $id)->get()
        ];
    }
}

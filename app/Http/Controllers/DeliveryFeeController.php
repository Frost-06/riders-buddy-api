<?php

namespace App\Http\Controllers;

use App\Models\DeliveryFee;
use Illuminate\Http\Request;

class DeliveryFeeController extends Controller
{
    public static $dowMap = array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');

    // public function setFee(Request $request)
    // {
    //     $validation = Validator::make($request->all(), [
    //         "id" => "required",
    //         "date_from" => "required",
    //         "date_to" => "required",
    //         "days" => "required",
    //         "fee" => "required",
    //     ]);
    //     if ($validation->fails()) {
    //         return $validation->messages();
    //     }

    //     return $this->authenticate()->http($request, function ($request, $cred) {
    //         $fee = DeliveryFee::where("id", "=", $cred->id);
    //         if ($fee->get()->first()) {
    //             $fee->update($request->except(["token"]));
    //         } else {
    //             $fee = DeliveryFee::create($request->all());
    //         }
    //         return $fee->get()->first();
    //     });
    // }

    public function getFee(Request $request)
    {
        return $this->authenticate()->http($request, function ($request, $cred) {
            $date = date("Y-m-d");
            $now = DeliveryFee::whereRaw("date_from <= '$date' and date_to >= '$date'")->get()->filter(function ($value, $key) {
                $dow = DeliveryFeeController::$dowMap[date("w")];
                $days = explode(",", $value["days"]);
                return in_array($dow, $days);
            })->first();
            return $now;
        });
    }
}

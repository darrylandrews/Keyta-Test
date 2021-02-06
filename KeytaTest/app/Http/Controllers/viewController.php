<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Clothe;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class viewController extends Controller
{
    public function mainpage()
    {
        $clothes = Clothe::all();
        $carts = Cart::all();

        $grandtotal = 0;

        foreach($carts as $cart)
        {
            $grandtotal += $cart->subtotal;
        }

        return view('main', ['clothes' => $clothes], ['gt' => $grandtotal]);
    }

    public function detail(Request $request)
    {
        $clothes = Clothe::where('id', 'like', "$request->id")
                    ->first();
                    
        $carts = Cart::all();

        $grandtotal = 0;

        foreach($carts as $cart)
        {
            $grandtotal += $cart->subtotal;
        }

        return view('details', ['clothes' => $clothes], ['gt' => $grandtotal]);
    }

    public function addtocart(Request $request, $id)
    {
        $clothes = Clothe::where('id', 'like', "$id")
                    ->first();

        $clotheId = $clothes['id'];
        $qty = $request->quantity;
        $price = $clothes['price'];
        $subtotal = $clothes['price'] * $qty;

        $carts = Cart::where('clothe_id', 'like', "$id")
                    ->first();
    
        if($carts == [])
        {
            DB::table('carts')->insert([
                ['clothe_id' =>$clotheId , 'quantity' => $qty, 'price' => $price, 'subtotal' => $subtotal]
            ]);       
        }
        else
        {
            $newqty = $qty;
            $newsub = $price * $newqty;

            DB::table('carts')->where(['clothe_id' => $clotheId])->update([
                'quantity' => $newqty,
                'subtotal' => $newsub
            ]);
        }

        return redirect()->action([viewController::class, 'mainpage']);
    }

    public function checkout()
    {
        $carts = Cart::all();

        foreach($carts as $cart)
        {
            DB::table('carts')->where(['clothe_id' => $cart->clothe_id])
            ->delete();    
        }

        return redirect()->action([viewController::class, 'mainpage']);
    }
}

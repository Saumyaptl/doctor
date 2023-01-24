<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
class  AuthController extends Controller
{
    public function DocLogin(Request $request){
        // $valid = $this->rules($request->all());
        // if($valid->fails()){
        //     return redirect()->back();
        // }
        // else{
            $email = $request->get('email');
            $password=$request->get('password');
            if(Auth::attempt(['email'=>$email , 'password'=>$password, 'user_type'=>'doctor'])){
                return redirect()->intended('/doctor/dashboard');
            }
            else{
                return redirect()->back();
            }
        // }
    }
    public function rules($data){
        $messages=[
            'email.required' => 'please enter your email address',
            'email.exist' => 'Email already exist',
            'email.email' => 'please enter a valid email address',
            'password.required' => 'password is required',
            'password.min' => 'password must be at least 6 characters'
        ];
        $validator = Validator::make($data,[ 
            'email' => 'required|email|exists:users',
            'password' => 'required'
        ], $messages);
        
    }
    public function savedoc(Request $request)
    {
    //    $request->validate([
    //     'name' => 'required|string|regex:/^[a-zA-Z],{3,16}/i',
    //     'email' => 'required|unique:users|regex::/(.+)@(.+)\.(.+)/i',
    //     'password' => 'required|min:6|confirmed',
    //     'password_confirmation' => 'sometimes|required_with:password'

    //    ]);
       $users = new User([
        'name' => $request->get('name'),
        'email' => $request->get('email'),
        'password' => Hash::make($request->get('password')),
        'user_type' =>'doctor',
        'spl' => $request->get('spl')
       ]);
       $users->save();
       return redirect()->intended('/doctor/dashboard');
    }
}

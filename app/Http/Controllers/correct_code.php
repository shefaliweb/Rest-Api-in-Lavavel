<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Auth;
use Validator;

class AuthController extends Controller
{
  public function register(Request $request)
    {
        $rules = [
            'name'=>'required',
            'email'=>'required|email',
            'password'=>'required'
        ];

        $response = array('response' => '', 'success'=> false);
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $response['response'] = $validator->messages();
        }else{
            $class = new User([
                'name' => $request->post('name'),
                'email' => $request->post('email'),
                'password' => $request->post('password'),
            ]);

            $class->save();
            $response['response'] = ["message"=> "The class has been created successfully", "data"=>$class];
            $response['success'] = true;
        }
        return Response::json($response, 201);
    }


public function login(Request $request)
    {
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){ 
            $user = Auth::user(); 
            $success['token'] =  $user->createToken('MyApp')->accessToken; 
            $success['name'] =  $user->name;
            return response()->json([ $success, 'User login successfully.']);
        } 
        else{ 
            return response()->json(['Unauthorised.', ['error'=>'Unauthorised']]);
           



        }  
    }

}

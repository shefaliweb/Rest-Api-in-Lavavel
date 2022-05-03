<!-- <?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class AuthController extends Controller
{
   public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
        ]);
   
        if($validator->fails()){
            // return $this->sendError('Validation Error.', $validator->errors());   
               return response()->json([ 'error'=> $validator->errors() ]);    
        }
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] =  $user->createToken('MyApp')->accessToken;
        $data['name'] =  $user->name;
        $data['email'] =  $user->email;
        $data['password'] =  $user->password;
   
         return response()->json([ $data,'Status'=> True, 'Message'=>'User register successfully.']);

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
 -->
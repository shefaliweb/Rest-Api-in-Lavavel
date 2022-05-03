<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestController extends Controller
{
 public function get_crop_name_by_city(){
    header('Content-Type:application/json');
    $method = $_SERVER['REQUEST_METHOD'];
    if($method != 'POST'){
       echo json_encode(array('status' => 400,'message' => 'Unknown Method or Bad Request'));
   } else {
    $check_auth_client = $this->AgriModel->check_auth_client();


    if ($check_auth_client== true){
        $params = json_decode(file_get_contents('php://input'), TRUE);
        if($params['city']==''){
           $data = array(
            'status' => FALSE,
            'message' => 'city can\'t empty',
        );

       }else{

           $data = $this->AgriModel->get_crop_name($params['city']);
       }
       echo json_encode($data);
   }
}

}
}

   public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
       $params = json_decode(file_get_contents('php://input'), TRUE);
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        // $success['token'] =  $user->createToken('MyApp')->accessToken;
        $success['name'] =  $user->name;
        $success['email'] =  $user->email;
        $success['password'] =  $user->password;
   
         return response()->json([ $success,'Status'=> True, 'Message'=>'User register successfully.']);

    } 


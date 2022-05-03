<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Device;
use Validator;

class DeviceController extends Controller
{
 function testData(Request $req){

   $rules=array('name' =>'required' ,'member_id' =>'required' );

   $validator=Validator::make($req->all(),$rules);

   if ($validator->fails()) {

     return response()->json([ 'error'=> $validator->errors() ]);


  }else{

     $device=new Device;
     $device->name=$req->name;
     $device->member_id=$req->member_id;
     $result=$device->save();
     if ($result) {

        return response()->json([ 'Status'=> True,'Message'=>'Data Inserted Successfully']);

     }else{

        return response()->json([ 'Status'=> True,'Message'=>'SomeThing went wrong']);
     }


  }
}



function list(){

   return response()->json(Device::all());

}


function update(Request $req){

  $rules=array('name' =>'required' ,'member_id' =>'required','id'=>'required' );

  $validator=Validator::make($req->all(),$rules);

  if ($validator->fails()) {

       // return $validator->errors();
    return response()->json([ 'error'=> $validator->errors() ]);

 }else{

    $device=Device::find($req->id);
    $device->name=$req->name;
    $device->member_id=$req->member_id;
    $result= $device->save();
    if ($result) {
      return ["Result"=>"Data Update successfully"];
   }
   else{
     return ["Result"=>"error"];
  }


}
}

function delete(Request $req,$id){

  $rules=array('id'=>'required' );

  $validator=Validator::make($req->all(),$rules);

  if ($validator->fails()) {

       // return $validator->errors();
    return response()->json([ 'error'=> $validator->errors() ]);

 }else{

   $device=Device::find($id);
   $device->id=$req->id;
   $result= $device->delete();
   if ($result) {
      return ["Result"=>"Data Deleted successfully"];
   }
   else{
     return ["Result"=>"error"];
  }


}
}

}




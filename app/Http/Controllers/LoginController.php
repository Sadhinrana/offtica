<?php

namespace App\Http\Controllers;

use App\Salesman;
use Session;
use Response;
use Validator;
use App\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class LoginController extends Controller
{
    // Authinticate client
	public function login(Request $request){
		// Validate form data 
        $rules = array(
        'email' => 'required|email',
        'password' => 'required',
        );
        
        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails()){
            return Response::json(array('errors' => $validator->getMessageBag()->toarray()));
        }
		
		// Checks if the account is activated
		$client = Client::where('email', $request->email)
		->where('status', '0')
		->first();
		if($client){
			return Response::json(array('errors' => array('response' => 'Your E-mail is not verified! Please check your E-mail & click on the link in the mail to activate your account. Thank you.')));
		}
		
		// Authorizes client
		$client = Client::where('email', $request->email)
		->where('password', md5($request->password))
		->first();

		if($client){
			Session::put('ID', $client->id);
			Session::put('Name', $client->clientName);
			return response()->json($client);
		}else{ 
			return Response::json(array('errors' => array('response' => 'Invalid E-mail or Password or both ! ')));
		}
	}

    // Logout client
    public function logout(Request $request){
        // Clear the user session
        Session::put('ID', NULL);
        Session::put('Name', NULL);

        // Redirect user to home page
        return redirect('/home');
    }

    // Authinticate salesman
    public function sales_login(Request $request){
        // Validate form data
        $rules = array(
            'email' => 'required|email',
            'password' => 'required',
        );

        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails()){
            return Response::json(array('errors' => $validator->getMessageBag()->toarray()));
        }

        // Authorizes Salesman
        $salesman = Salesman::where('email', $request->email)
            ->where('password', md5($request->password))
            ->first();

        if($salesman){
            Session::put('salesman_id', $salesman->id);
            Session::put('salesman_name', $salesman->salesmanName);
            return response()->json($salesman);
        }else{
            return Response::json(array('errors' => array('response' => 'Invalid E-mail or Password or both ! ')));
        }
    }

	// Logout client
	public function sales_logout(Request $request){
		// Clear the user session
		Session::put('salesman_id', NULL);
		Session::put('salesman_name', NULL);
		
		// Redirect user to home page
		return redirect('/home');
	}

	// Login register view
    public function loginview(){
        // Return Login register page
        return view('login');
    }

    // Login register view
    public function login_view(){
        // Return Login register page
        return view('client_login');
    }
}

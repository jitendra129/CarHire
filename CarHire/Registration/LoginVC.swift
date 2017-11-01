//
//  LoginVC.swift
//  CarHire
//
//  Created by ASK ONLINE  on 01/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class LoginVC: UIViewController {
    @IBOutlet weak var txtUserName : UITextField!
    @IBOutlet weak var txtPass : UITextField!
    var accessObj: AccessToken?                       // Nested User object
    var userDet: Userdetail?
    var userDetret: Userdetail?
     var loginDet: [LoginDetail]?
     var respon: [Response]?
    override func viewDidLoad() {
        super.viewDidLoad()
         getAccessToken()
    }

    
  
    
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getAccessToken() {
        let todosEndpoint: String = ACCESSTOKENURL+"token"
        
       
        
        let newTodo: [String: Any] = ["grant_type": GRANT_TYPE, "client_id": CLIENT_ID,"client_secret":CLIENT_SECRET]
        Alamofire.request(todosEndpoint, method: .post, parameters: newTodo,
                          encoding: JSONEncoding.default)
            .responseJSON { response in
                guard response.result.error == nil else {
                    print("error calling POST on /todos/1")
                    print(response.result.error!)
                    return
                }
                if let result = response.result.value {
                    let JSON = result as! NSDictionary
                    print(JSON)
                    print(JSON["access_token"] as! String)
                 

                    let user = Mapper<AccessToken>().map(JSON: (JSON ) as! [String : Any])
                    self.accessObj=user
                    print(user?.accessToken ?? 0)
                    print(user?.expiresIn! ?? 0)
                     print(self.accessObj?.accessToken! ?? 0)
                    
                                   }
               
        }
    }
    
    
    func fetchAllRooms() {
        let todosEndpoint: String = SERVERURLPATH+"login"
        let newTodo: [String: Any] = ["username":txtUserName.text!, "password": txtPass.text!,"access_token":self.accessObj?.accessToken! ?? 0]
        

        Alamofire.request(
            URL(string: todosEndpoint)!,
            method: .post,
            parameters: newTodo)

            .responseJSON { (response) -> Void in
                guard response.result.isSuccess else {
                    print("Error while fetching remote rooms: \(String(describing: response.result.error))")
                  
                    return
                }
                
                if let result = response.result.value {
                    let JSON = result as! NSDictionary
                    print(JSON)
                    let user2 = Mapper<LoginDetail>().map(JSON: (JSON ) as! [String : Any])
                    self.userDet=user2?.response?.userdetail!
                    self.userDet!.saveToUserDefault()
//                    print(user2?.response?.userdetail!.userEmail ?? "not available")
//                    print(self.userDetret?.getFromUserDefault ?? 0)
//                    print(self.userDetret?.userEmail! ?? 0)

                    self.navigationController?.popViewController(animated: true)
                    
                }
            
                
             
        }
    }
 
    @IBAction func OnClickSkip(_ sender: Any) {
        fetchAllRooms()
        //  self.navigationController?.popViewController(animated: true)
        
    }

       @IBAction func OnClickSignIn(_ sender: Any) {
        fetchAllRooms()
        

    }
    }


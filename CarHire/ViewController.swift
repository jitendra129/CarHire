//
//  ViewController.swift
//  CarHire
//
//  Created by ASK ONLINE  on 30/06/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var ScrollView: UIScrollView!
     @IBOutlet weak var viewStartLoc: UIView!
     @IBOutlet weak var viewStopLoc: UIView!
     @IBOutlet weak var viewAgeLoc: UIView!
     @IBOutlet weak var viewMapLoc: UIView!
     @IBOutlet weak var viewAgeField: UIView!
     @IBOutlet weak var btnLocation: UIButton!
     @IBOutlet weak var btnAge: UIButton!
     @IBOutlet weak var btnMap: UIButton!
    var userDetail: Userdetail?
var userDet: Userdetail?
    
   var isDropLocOn = false
    var isAgeOn = false
    override func viewDidLoad() {
       
        super.viewDidLoad()
       // Userdetail.ge
      
        let data: Data? = UserDefaults.standard.object(forKey: "LoginDetail") as? Data
      //  userDetail = NSKeyedUnarchiver.unarchiveObject(with: data!)! as? Userdetail
       // self.userDet=getFromUserDefault() as? Userdetail
         print(userDetail?.userEmail ?? "not available")
      //  print(self.userDet?.userEmail ?? "not available")
        
        btnAge.setImage(UIImage(named: "Btn-icon.png"), for: .normal)
        btnLocation.setImage(UIImage(named: "Btn-icon.png"), for: .normal)

        self.viewStopLoc.frame = CGRect(x: self.viewStopLoc.frame.origin.x, y: self.viewStopLoc.frame.origin.y-50, width: self.viewStopLoc.frame.size.width, height: self.viewStopLoc.frame.size.height)
        
          self.viewAgeLoc.frame = CGRect(x: self.viewAgeLoc.frame.origin.x, y: self.viewAgeLoc.frame.origin.y-50, width: self.viewAgeLoc.frame.size.width, height: self.viewAgeLoc.frame.size.height)
        self.viewStartLoc.isHidden=true;
        self.viewAgeField.isHidden=true;
        self.navigationController?.isNavigationBarHidden = true
        
       ScrollView.contentSize = CGSize(width: 320,height: 790)
       
        ScrollView.delegate = self as? UIScrollViewDelegate
        ScrollView.minimumZoomScale = 0.1
        ScrollView.maximumZoomScale = 4.0
        ScrollView.zoomScale = 1.0
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
       
        self.navigationController?.pushViewController(newViewController, animated: true)
      
    }
   
    
    @IBAction func onClickAgeOn(_ sender: UIButton) {
        if isAgeOn==false {
            isAgeOn=true
            self.viewAgeField.isHidden=false;
           
 btnAge.setImage(UIImage(named: "Btn-icon-Hover.png"), for: .normal)

            self.viewAgeLoc.frame = CGRect(x: self.viewAgeLoc.frame.origin.x, y: self.viewAgeLoc.frame.origin.y+50, width: self.viewAgeLoc.frame.size.width, height: self.viewAgeLoc.frame.size.height)
        }else{
            self.viewAgeField.isHidden=true;
            isAgeOn=false
            btnAge.setImage(UIImage(named: "Btn-icon.png"), for: .normal)

            self.viewAgeLoc.frame = CGRect(x: self.viewAgeLoc.frame.origin.x, y: self.viewAgeLoc.frame.origin.y-50, width: self.viewAgeLoc.frame.size.width, height: self.viewAgeLoc.frame.size.height)
        }
        
        

         print("onClickAgeOn")
    }
    
    @IBAction func onMapOn(_ sender: UIButton) {
        
        print("onMapOn")
    }
    @IBAction func UserAccountClick(_ sender: Any) {
      
        
        print("UserAccountClick")

    }
    
    @IBAction func ClickOnMyBooking(_ sender: Any) {
        
        print("ClickOnMyBooking")
        
        
    }
    
    @IBAction func clickLocBtn(_ sender: UIButton) {
        if isDropLocOn==false {
            isDropLocOn=true
            self.viewStartLoc.isHidden=false;
             btnLocation.setImage(UIImage(named: "Btn-icon-Hover.png"), for: .normal)
            self.viewStopLoc.frame = CGRect(x: self.viewStopLoc.frame.origin.x, y: self.viewStopLoc.frame.origin.y+50, width: self.viewStopLoc.frame.size.width, height: self.viewStopLoc.frame.size.height)
           // self.viewAgeField.isHidden=false;
            self.viewAgeLoc.frame = CGRect(x: self.viewAgeLoc.frame.origin.x, y: self.viewAgeLoc.frame.origin.y+50, width: self.viewAgeLoc.frame.size.width, height: self.viewAgeLoc.frame.size.height)
        }else{
            self.viewStartLoc.isHidden=true;
            isDropLocOn=false
            btnLocation.setImage(UIImage(named: "Btn-icon.png"), for: .normal)

            self.viewStopLoc.frame = CGRect(x: self.viewStopLoc.frame.origin.x, y: self.viewStopLoc.frame.origin.y-50, width: self.viewStopLoc.frame.size.width, height: self.viewStopLoc.frame.size.height)
           // self.viewAgeField.isHidden=true;
      
            self.viewAgeLoc.frame = CGRect(x: self.viewAgeLoc.frame.origin.x, y: self.viewAgeLoc.frame.origin.y-50, width: self.viewAgeLoc.frame.size.width, height: self.viewAgeLoc.frame.size.height)
        }
        
        
        
        
         print("ClickOnMyBooking")
    }
    @IBAction func OnClickSearch(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "SearchListVC") as! SearchListVC
       // self.present(newViewController, animated: true, completion: nil)
      //  let newViewController = SearchListVC()
        self.navigationController?.pushViewController(newViewController, animated: true)
        

    }
    @IBAction func onClickLeft(_ sender: UIButton) {
        self.slideMenuController()?.openLeft()
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController : SlideMenuControllerDelegate {
    
    func leftWillOpen() {
        print("SlideMenuControllerDelegate: leftWillOpen")
    }
    
    func leftDidOpen() {
        print("SlideMenuControllerDelegate: leftDidOpen")
    }
    
    func leftWillClose() {
        print("SlideMenuControllerDelegate: leftWillClose")
    }
    
    func leftDidClose() {
        print("SlideMenuControllerDelegate: leftDidClose")
    }
    
    func rightWillOpen() {
        print("SlideMenuControllerDelegate: rightWillOpen")
    }
    
    func rightDidOpen() {
        print("SlideMenuControllerDelegate: rightDidOpen")
    }
    
    func rightWillClose() {
        print("SlideMenuControllerDelegate: rightWillClose")
    }
    
    func rightDidClose() {
        print("SlideMenuControllerDelegate: rightDidClose")
    }
    
    @IBAction func OnClickMyBooking(_ sender: Any) {
       let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "MyBookingVC") as! MyBookingVC
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    
    @IBAction func OnClickMyAccount(_ sender: Any) {
       let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "MyAccountVC") as! MyAccountVC
        self.navigationController?.pushViewController(newViewController, animated: true)
        
    }
    
    
    @IBAction func OnClickHeaderSearch(_ sender: Any) {
      
        self.navigationController?.popViewController(animated: true)
        
    }
}




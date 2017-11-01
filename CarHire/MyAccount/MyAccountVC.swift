//
//  MyAccountVC.swift
//  CarHire
//
//  Created by ASK ONLINE  on 11/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//

import UIKit

class MyAccountVC: UIViewController ,UITableViewDelegate,UITableViewDataSource,topBarDelegate{
 weak var delegate: LeftMenuProtocol?
    
    @IBOutlet weak var viewFirst: UIView!
    @IBOutlet weak var viewSecond: UIView!
    @IBOutlet weak var viewThird: UIView!
    
    var testVC: JKTopBar = JKTopBar();
    @IBOutlet var tableDriver: UITableView!
    @IBOutlet var tablePayment: UITableView!

    @IBOutlet weak var scrollFirst: UIScrollView!
    @IBOutlet weak var scrollSecond: UIScrollView!
    @IBOutlet weak var scrollThird: UIScrollView!
    @IBOutlet weak var segmetedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.viewFirst.frame = CGRect(x: 0, y: 120, width: self.view.frame.size.width, height: self.view.frame.size.height-120)
        self.view.addSubview(self.viewFirst)
        scrollFirst.contentSize = CGSize(width: 320,height: 600)

        testVC = (JKTopBar(controller: self, withTitle: "My Account", withImage: "") as JKTopBar)
        testVC.delegate=self
        self.view.addSubview(testVC.view);
    }

    
    
    @IBAction func indexChanged(sender:UISegmentedControl)
    {

        
        switch segmetedControl.selectedSegmentIndex
        {
        case 0:
            print("hello0");
            self.viewFirst.frame = CGRect(x: 0, y: 120, width: self.view.frame.size.width, height: self.view.frame.size.height-120)
            self.view.addSubview(self.viewFirst)
        case 1:
            print("hello1");
            self.viewSecond.frame = CGRect(x:0, y: 120, width: self.view.frame.size.width, height: self.view.frame.size.height-120)
            self.view.addSubview(self.viewSecond)
            
        case 2:
            print("hello2");
            self.viewThird.frame = CGRect(x: 0, y: 120, width: self.view.frame.size.width, height: self.view.frame.size.height-120)
            self.view.addSubview(self.viewThird)
        default:
            break;
        }
    }
    
    
    
    
    
    
    
    func controller(_ controller: JKTopBar, didTapItem: String) {
        
        print(didTapItem)
        if didTapItem=="back" {
            delegate?.changeViewController(LeftMenu.main)
               self.navigationController?.popViewController(animated: true)
            
        }
        if didTapItem=="Search" {
            self.navigationController?.popToRootViewController(animated: true)
            
        }
        if didTapItem=="UserAccount" {
            self.navigationController?.popViewController(animated: true)
            
        }
        if didTapItem=="Driver" {
           // self.navigationController?.popViewController(animated: true)
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "MyBookingVC") as! MyBookingVC
            
            self.navigationController?.pushViewController(newViewController, animated: true)
        }
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         if(tableView==self.tableDriver) {
        return 10
         }else{
        return 10
        }
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
         if(tableView==self.tableDriver) {
        let cell : DriverTableCell = tableView.dequeueReusableCell(withIdentifier: "DriverTableCell", for: indexPath) as! DriverTableCell
        
        
        
        return cell
         }else{
            let cell : PaymentTableCell = tableView.dequeueReusableCell(withIdentifier: "PaymentTableCell", for: indexPath) as! PaymentTableCell
            
            
            
            return cell
        }
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "CarDetailVC") as! CarDetailVC
        // self.present(newViewController, animated: true, completion: nil)
        //  let newViewController = SearchListVC()
        self.navigationController?.pushViewController(newViewController, animated: true)
    }

    @IBAction func onclickbtnchangePass(sender:Any){
        
    }
    
    
    @IBAction func onclickbtnMyBooking(sender:Any){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "MyBookingVC") as! MyBookingVC
        
        self.navigationController?.pushViewController(newViewController, animated: true)
        
        
    }
    @IBAction func onclickbtnAccountDetail(sender:Any){
        
        
        
    }
    
    @IBAction func onclickbtnSignOut(sender:Any){
    self.navigationController?.popToRootViewController(animated: true)
        
    }

}

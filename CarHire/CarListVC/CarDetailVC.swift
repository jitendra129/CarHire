//
//  CarDetailVC.swift
//  CarHire
//
//  Created by ASK ONLINE  on 01/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//

import UIKit

class CarDetailVC: UIViewController ,topBarDelegate{
    @IBOutlet weak var viewFirst: UIView!
    @IBOutlet weak var viewSecond: UIView!
    @IBOutlet weak var viewThird: UIView!
    
    var testVC: JKTopBar = JKTopBar();

    @IBOutlet weak var scrollFirst: UIScrollView!
    @IBOutlet weak var scrollSecond: UIScrollView!
    @IBOutlet weak var scrollThird: UIScrollView!
     @IBOutlet weak var segmetedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewFirst.frame = CGRect(x: 0, y: 120, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.view.addSubview(self.viewFirst)
        scrollFirst.contentSize = CGSize(width: 320,height: 2000)

        scrollSecond.contentSize = CGSize(width: 320,height: 790)

        scrollThird.contentSize = CGSize(width: 320,height: 1200)

       
       // testVC.ttl.text="Car details"
        testVC = (JKTopBar(controller: self, withTitle: "Car Details", withImage: "") as JKTopBar)
         testVC.delegate=self
       // [view addSubview:self.topBar.view];
        self.view.addSubview(testVC.view);
    }
    
    
   
    
    func controller(_ controller: JKTopBar, didTapItem: String) {
        
        print(didTapItem)
        if didTapItem=="back" {
            self.navigationController?.popViewController(animated: true)
            
        }
        if didTapItem=="Search" {
            self.navigationController?.popViewController(animated: true)
            
        }
        if didTapItem=="UserAccount" {
            self.navigationController?.popViewController(animated: true)
            
        }
        if didTapItem=="Driver" {
            self.navigationController?.popViewController(animated: true)
            
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    @IBAction func indexChanged(sender:UISegmentedControl)
    {
        
        self.scrollThird.contentOffset.y = 0
        self.scrollSecond.contentOffset.y = 0
        self.scrollFirst.contentOffset.y = 0
        
        
    switch segmetedControl.selectedSegmentIndex
    {
    case 0:
    print("hello0");
         self.viewFirst.frame = CGRect(x: 0, y: 120, width: self.view.frame.size.width, height: self.view.frame.size.height)
         self.view.addSubview(self.viewFirst)
    case 1:
    print("hello1");
         self.viewSecond.frame = CGRect(x:0, y: 120, width: self.view.frame.size.width, height: self.view.frame.size.height)
    self.view.addSubview(self.viewSecond)

    case 2:
    print("hello2");
         self.viewThird.frame = CGRect(x: 0, y: 120, width: self.view.frame.size.width, height: self.view.frame.size.height)
         self.view.addSubview(self.viewThird)
    default:
    break;
    }
    }
    
    @IBAction func ClickOnBack(_ sender: Any) {
        //        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController];
        //        self.navigationController!.popToViewController(viewControllers[viewControllers.count-2], animated: true);
        self.navigationController?.popViewController(animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

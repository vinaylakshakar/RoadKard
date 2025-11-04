//
//  Profile_RiderVC.swift
//  RoadKard_App
//


import UIKit


class Profile_RiderVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = false
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func complete_profilerider(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Complete_RiderProfileVC") as! Complete_RiderProfileVC
        
        
        self.navigationController?.pushViewController(VC1, animated: true)

        
    }
    @IBAction func rider_btn(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Profile_DriverVC") as! Profile_DriverVC
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    
    @IBAction func back_Action(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "RidesVC") as! RidesVC
        
        self.navigationController?.popViewController(animated: true)

    }

}

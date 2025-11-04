//
//  WelcomeAboard_RideVC.swift
//  RoadKard_App
//
//  Created by Silstone on 25/03/21.
//

import UIKit

class WelcomeAboard_RideVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: Any) {
        
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let tabbar: UIViewController? = (storyboard?.instantiateViewController(withIdentifier: "RidesVC") as? RidesVC) as! UIViewController
        
        self.navigationController?.pushViewController(tabbar!, animated: true)
        self.tabBarController?.tabBar.isHidden = false

    }
    

}

//
//  Trip_AcceptVC.swift
//  RoadKard_App
//
//  Created by Silstone on 25/03/21.
//

import UIKit

class Trip_AcceptVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func reject_Action(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        self.tabBarController?.tabBar.isHidden = false

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "RidesVC") as! RidesVC
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    @IBAction func back_Action(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func accept_Action(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        self.tabBarController?.tabBar.isHidden = true

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Start_TripVC") as! Start_TripVC
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

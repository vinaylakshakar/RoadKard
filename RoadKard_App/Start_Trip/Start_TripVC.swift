//
//  Start_TripVC.swift
//  RoadKard_App
//
//  Created by Silstone on 25/03/21.
//

import UIKit

class Start_TripVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func action_start(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        self.tabBarController?.tabBar.isHidden = true
        let VC1 = storyBoard.instantiateViewController(withIdentifier: "CompletetripVC") as! CompletetripVC
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

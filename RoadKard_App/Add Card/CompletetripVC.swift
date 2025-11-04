//
//  CompletetripVC.swift
//  RoadKard_App
//
//  Created by Silstone on 20/01/21.
//

import UIKit

class CompletetripVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tripReview(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        self.tabBarController?.tabBar.isHidden = true
        let VC1 = storyBoard.instantiateViewController(withIdentifier: "NewPaymentMethodVC") as! NewPaymentMethodVC
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

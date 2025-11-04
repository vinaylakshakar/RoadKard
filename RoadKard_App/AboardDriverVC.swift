//
//  AboardDriverVC.swift
//  RoadKard_App
//
//  Created by Silstone on 05/01/21.
//

import UIKit

class AboardDriverVC: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "We will require 12-24 hours\nfor the verification process."
        // Do any additional setup after loading the view.
    }
    

    @IBAction func Done(_ sender: Any) {
        
        let tabbar: UITabBarController? = (storyboard?.instantiateViewController(withIdentifier: "tabbar") as? UITabBarController)
        self.navigationController?.pushViewController(tabbar!, animated: true)
//        self.present(tabbar!, animated: true, completion: nil)


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

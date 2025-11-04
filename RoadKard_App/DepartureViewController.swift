//
//  DepartureViewController.swift
//  RoadKard_App
//
//  Created by Silstone on 18/01/21.
//

import UIKit

class DepartureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = false

        // Do any additional setup after loading the view.
    }
    
    @available(iOS 14.0, *)
    @IBAction func action_DateVC(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let VC1 = storyBoard.instantiateViewController(withIdentifier: "DatePickerVC") as! DatePickerVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    
    @IBAction func back_View(_ sender: Any) {

        self.navigationController?.popViewController(animated: true)

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

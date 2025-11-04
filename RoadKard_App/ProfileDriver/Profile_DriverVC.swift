//
//  Profile_DriverVC.swift
//  RoadKard_App
//
//  Created by Silstone on 18/01/21.
//

import UIKit
import iOSDropDown

class Profile_DriverVC: UIViewController {
    
    @IBOutlet weak var statefld: DropDown!
    @IBOutlet weak var cityfld: DropDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statefld.optionArray = ["Option 1", "Option 2", "Option 3"]
        cityfld.optionArray = ["Option 1", "Option 2", "Option 3"]
        
        statefld.optionIds = [1,23,54,22]
        cityfld.optionIds = [1,23,54,22]
        
        statefld.didSelect{(selectedText , index ,id) in
        self.statefld.text = " \(selectedText) \n index: \(index)"
        }
        cityfld.didSelect{(selectedText , index ,id) in
        self.cityfld.text = " \(selectedText) \n index: \(index)"
        }


        // Do any additional setup after loading the view.
    }
    
    @IBAction func back_Action(_ sender: Any) {
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

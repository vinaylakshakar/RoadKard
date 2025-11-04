//
//  UpdateCarProfileVC.swift
//  RoadKard_App
//
//  Created by Silstone on 06/01/21.
//

import UIKit
import iOSDropDown

class UpdateCarProfileVC: UIViewController {
    
     // Variable Outlet //**
    
    @IBOutlet weak var year_fld: DropDown!
    @IBOutlet weak var model_fld: DropDown!
    @IBOutlet weak var manufacturer_fld: DropDown!
    
    
    //Life Cycle//*
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manufacturer_fld.optionArray = ["Option1", "Option2", "Option3"]
        year_fld.optionArray = ["Option1", "Option2", "Option3"]
        model_fld.optionArray = ["Option1", "Option2", "Option3"]
        
        manufacturer_fld.optionIds = [1,23,54,22]
        year_fld.optionIds = [1,23,54,22]
        model_fld.optionIds = [1,23,54,22]
        
        model_fld.didSelect{(selectedText , index ,id) in
        self.model_fld.text = " \(selectedText) \n \(index)"
        }
        year_fld.didSelect{(selectedText , index ,id) in
        self.year_fld.text = " \(selectedText) \n  \(index)"
        }
        manufacturer_fld.didSelect{(selectedText , index ,id) in
            
        self.manufacturer_fld.text = "\(selectedText) \n  \(index)"
        }


        // Do any additional setup after loading the view.
    }
    
    // Add Fuctions //**
    
    @IBAction func back_Action(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func done_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController( withIdentifier: "AboardVC") as! AboardVC
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    

}

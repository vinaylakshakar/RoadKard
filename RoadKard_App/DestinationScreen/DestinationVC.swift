//
//  DestinationVC.swift
//  RoadKard_App
//
//  Created by Silstone on 18/01/21.
//

import UIKit

class DestinationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back_Action(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func action_Destination(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let VC1 = storyBoard.instantiateViewController(withIdentifier: "SeatVC") as! SeatVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

    }

}

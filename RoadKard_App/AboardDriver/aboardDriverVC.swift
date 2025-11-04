//
//  aboardDriverVC.swift
//  RoadKard_App
//
//  Created by Silstone on 05/04/21.
//

import UIKit

class aboardDriverVC: UIViewController {
    enum flowtype1 {
        
        case riderBtn1
        case driverBtn1
        
    }

//    var hasCome1  = flowtype1.riderBtn

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func create_Driver(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Upload_RideVC") as! Upload_RideVC
        
//        switch hasCome {
//        case .riderBtn:
//            VC1.hasCome1 = flowtype.riderBtn
//        case .driverBtn:
//            VC1.hasCome1 = flowtype.driverBtn
//        }

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

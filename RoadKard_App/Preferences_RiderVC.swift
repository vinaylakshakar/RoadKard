//
//  Preferences_RiderVC.swift
//  RoadKard_App
//
//

import UIKit

class Preferences_RiderVC: UIViewController {
    
//    var getdata : flowtype = .driverBtn
    
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.setImage(UIImage(named:"Checkmark"), for: .normal)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backward_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Upload_RideVC") as! Upload_RideVC
        self.navigationController?.popViewController(animated: true)

    }
    
     @IBAction func forward_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Pet_RideVC") as! Pet_RideVC
//        VC1.getdata1 = getdata
        self.navigationController?.pushViewController(VC1, animated: true)

        
     }

}

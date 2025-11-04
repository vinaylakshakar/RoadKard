//
//  ChoiceDriverVC.swift
//  RoadKard_App
//
//

import UIKit


class ChoiceDriverVC: UIViewController {
    
    @IBOutlet weak var riderBtn: UIButton!
    @IBOutlet weak var driverBtn: UIButton!
    
    enum flowtype {
        
        case riderBtn
        case driverBtn
        
    }

    var hasCome  = flowtype.riderBtn

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func driver_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let VC1 = storyBoard.instantiateViewController(withIdentifier: "aboardDriverVC") as! aboardDriverVC
        

        self.navigationController?.pushViewController(VC1, animated: true)


    }
//
    @IBAction func rider_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Upload_RideVC") as! Upload_RideVC
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

//
//  Pet_RideVC.swift
//  RoadKard_App
//
//

import UIKit

class Pet_RideVC: UIViewController {
    
//    var getdata1 : flowtype = .driverBtn

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.setImage(UIImage(named:"Checkmark"), for: .normal)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backward(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Preferences_RiderVC") as! Preferences_RiderVC
        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func forward(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Chatty_RideVC") as! Chatty_RideVC
//        VC1.getdata2 = getdata1
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

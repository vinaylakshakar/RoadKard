//
//  Chatty_RideVC.swift
//  RoadKard_App
//
//

import UIKit

class Chatty_RideVC: UIViewController {
    
//    var getdata2 : flowtype = .driverBtn

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.setImage(UIImage(named:"Checkmark"), for: .normal)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backward_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Pet_RideVC") as! Pet_RideVC
        self.navigationController?.popViewController(animated: true)

    }
    @IBAction func forward_action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Music_RideVC") as!
            Music_RideVC
//        VC1.getdata3 = getdata2
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

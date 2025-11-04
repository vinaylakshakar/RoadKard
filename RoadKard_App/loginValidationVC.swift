//
//  loginValidationVC.swift
//  RoadKard_App
//
//  Created by Silstone on 24/12/20.
//

import UIKit

class loginValidationVC: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl1.text = "Your account has been\n verified successfully!"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func done_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "ChoiceDriverVC") as! ChoiceDriverVC
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

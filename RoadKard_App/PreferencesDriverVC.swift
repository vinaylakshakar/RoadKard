//
//  PreferencesDriverVC.swift
//  RoadKard_App
//
//  Created by Silstone on 31/12/20.
//

import UIKit

class PreferencesDriverVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backward_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Upload_DocVC") as! Upload_DocVC
        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func forward_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "PetViewController") as! PetViewController
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

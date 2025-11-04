//
//  DriverDocVC.swift
//  RoadKard_App
//
//  Created by Silstone on 06/01/21.
//

import UIKit

class DriverDocVC: UIViewController {

    @IBOutlet weak var license_lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        license_lbl.text = "*We  value  the  safety, security\nand  quality  of  experience  of\nour  users, so we  ask that you\nu p l o a d  t h e  f o l l o w i n g\ndocuments  to  verify  your\n identity."
        license_lbl.textAlignment = .justified

        // Do any additional setup after loading the view.
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

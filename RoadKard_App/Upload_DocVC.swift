//
//  Upload_DocVC.swift
//  RoadKard_App
//
//  Created by Silstone on 29/12/20.
//

import UIKit

class Upload_DocVC: UIViewController {

    @IBOutlet weak var reload_billbtn: UIButton!
    @IBOutlet weak var reload_govbtn: UIButton!
    @IBOutlet weak var plus_btn: UIButton!
    @IBOutlet weak var photo_lbl: UILabel!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var bill_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bill_label.text = "Most recent\nPhone Bill"
        
        text.text =
              "We value the safety,security and quality of experience of nour users, so we ask that you upload the follow in g documents to verify your identity."
//
//        text.textAlignment = .justified

        // Do any additional setup after loading the view.
    }
    

    @IBAction func click_action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Upload_RideVC") as! Upload_RideVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    
    @IBAction func back_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Upload_RideVC") as! Upload_RideVC
        self.navigationController?.popViewController(animated: true)

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
extension UILabel {
  func setTextSpacingBy(value: Double) {
    if let textString = self.text {
      let attributedString = NSMutableAttributedString(string: textString)
        attributedString.addAttribute(NSAttributedString.Key.kern, value: value, range: NSRange(location: 0, length: attributedString.length - 1))
      attributedText = attributedString
    }
  }
}


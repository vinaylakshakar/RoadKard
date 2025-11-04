//
//  NewPaymentMethodVC.swift
//  RoadKard_App
//
//  Created by Silstone on 18/01/21.
//

import UIKit

class NewPaymentMethodVC: UIViewController,UITextViewDelegate {
    let maxLenghth = 120

    @IBOutlet weak var characterCount: UILabel!
    @IBOutlet weak var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func textViewDidChange(_ textView: UITextView) {
        characterCount.text = "\(maxLenghth - textview.text.count)"
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        return textview.text.count + (text.count - range.length) <= maxLenghth
    }

    @IBAction func actionforward(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "overallReviewVC") as! overallReviewVC
        
        
        self.navigationController?.pushViewController(VC1, animated: true)


    }
}

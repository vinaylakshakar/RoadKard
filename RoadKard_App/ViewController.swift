//
//  ViewController.swift
//  RoadKard_App
//
//  Created by Silstone on 23/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var start_btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let defaultAttributes = [
//            .font: UIFont.systemFont(ofSize: 59.0, weight: .regular),
//            .foregroundColor: UIColor.blue
//        ] as [NSAttributedString.Key : Any]
//
//        let marketingAttributes = [
//            .font: UIFont.systemFont(ofSize: 75.0, weight: .bold),
//            .foregroundColor: UIColor.black
//        ] as [NSAttributedString.Key : Any]
//
//        let attributedStringComponents = [
//            "Explore",
//            NSAttributedString(string: "Somewhere New",
//                               attributes: marketingAttributes),
//            "This Weekend!",
//            "!\n".toAttributed(with: [
//                .font: UIFont.systemFont(ofSize: 16.0, weight: .bold),
//                .foregroundColor: UIColor.red
//            ])
//        ] as [AttributedStringComponent]
//        label.attributedText = NSAttributedString(from: attributedStringComponents, defaultAttributes: defaultAttributes)
//        label.textAlignment = .right
//    }
//
//
   }
    
    @IBAction func get_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(VC, animated: true)

    }
}
extension UITextField{
        @IBInspectable var placeHolderColor: UIColor? {
            get {
                return self.placeHolderColor
            }
            set {
                self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ?
    self.placeholder! : "",
    attributes:[NSAttributedString.Key.foregroundColor : newValue!])
            }
        }
}

//
//  LoginVC.swift
//  RoadKard_App
//
//  Created by Silstone on 23/12/20.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {

    //    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var text_field: UITextField!
    @IBOutlet weak var Type_label: UILabel!
    
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl2.adjustsFontSizeToFitWidth = true
//        scroll.showsHorizontalScrollIndicator = false
        text_field.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        text_field.delegate = self
        text_field.becomeFirstResponder()
       Type_label.text = "Type in your\nphone number"
        

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard (_:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    


    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
            text_field.resignFirstResponder()

        
    }

    @IBAction func verify(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC = storyBoard.instantiateViewController(withIdentifier: "Login2VC") as! Login2VC
        self.navigationController?.pushViewController(VC, animated: true)


    }
    @objc func handleTextChange(_ textChange: UITextField) {
     if text_field.text?.count == 0 || text_field.text?.count == 5 {
       text_field.keyboardType = .numberPad
       text_field.reloadInputViews() // need to reload the input view for this to work
     } else {
       text_field.keyboardType = .numberPad
       text_field.reloadInputViews()
     }
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            
            return range.location < 10 //Here 10 is your character limit
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        text_field.resignFirstResponder()
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        text_field.resignFirstResponder()
        return true
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
extension UIView {

    @IBInspectable var cornerRadiusV: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }

    @IBInspectable var borderWidthV: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    @IBInspectable var borderColorV: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.masksToBounds = false
            layer.shadowRadius = newValue
        }
    }

    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.masksToBounds = false
            layer.shadowOpacity = newValue
        }
    }

    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.masksToBounds = false
            layer.shadowOffset = newValue
        }
    }

    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }

}


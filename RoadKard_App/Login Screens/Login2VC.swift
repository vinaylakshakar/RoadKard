//
//  Login2VC.swift
//  RoadKard_App
//
//  Created by Silstone on 24/12/20.
//

import UIKit

class Login2VC: UIViewController, UITextFieldDelegate {
    var count = 1
//    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var tf4: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var verification_lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        verification_lbl.text = "please type the verification code\nsent to +01 (415) xxx-2671"
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard (_:)))
        self.view.addGestureRecognizer(tapGesture)
//        scroll.showsHorizontalScrollIndicator = false

        tf1.delegate = self
        tf2.delegate = self
        tf3.delegate = self
        tf4.delegate = self

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tf1.becomeFirstResponder()
    }
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        tf1.resignFirstResponder()
        tf2.resignFirstResponder()
        tf3.resignFirstResponder()
        tf4.resignFirstResponder()

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        tf1.resignFirstResponder()
        tf2.resignFirstResponder()
        tf3.resignFirstResponder()
        tf4.resignFirstResponder()

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tf1.resignFirstResponder()
        tf2.resignFirstResponder()
        tf3.resignFirstResponder()
        tf4.resignFirstResponder()

        return true
    }


    @IBAction func resend_msg(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "loginValidationVC") as! loginValidationVC
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    @IBAction func back_toLogin(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.popViewController(animated: true)

    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if ((textField.text?.count)! < 1) && (string.count > 0) {
            if textField == tf1 {
                tf2.becomeFirstResponder()
            }
            if textField == tf2{
                tf3.becomeFirstResponder()
            }
            if textField == tf3{
                tf4.becomeFirstResponder()
            }
            if textField == tf4{
                tf4.resignFirstResponder()
            }
            textField.text = string
            
            return false
        }
        else if ((textField.text?.count)! >= 1) && (string.count == 0){
            if textField == tf2 {
                tf1.becomeFirstResponder()
            }
            if textField == tf3 {
                tf2.becomeFirstResponder()
            }
            if textField == tf4 {
                tf3.becomeFirstResponder()
            }
            if textField == tf1{
                tf1.resignFirstResponder()
            }
            textField.text = ""
            return false
        }
        else if (textField.text?.count)! >= 1 {
            textField.text = string
            return false
        }
        
        
        return true
    }
}

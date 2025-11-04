//
//  Upload_RideVC.swift
//  RoadKard_App
//
//

import UIKit
import iOSDropDown


class Upload_RideVC: UIViewController,UIPickerViewDelegate,UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    

    @IBOutlet weak var name_fld: UITextField!
    @IBOutlet weak var address_fld: UITextField!
    
    @IBOutlet weak var profileBtn: UIImageView!
    @IBOutlet weak var zip_fld: UITextField!
    @IBOutlet weak var upload: UILabel!
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var lastLabel: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var upload_btn: UIButton!
    
    @IBOutlet weak var state_fld: DropDown!
    @IBOutlet weak var city_fld: DropDown!
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard (_:)))
//        self.view.addGestureRecognizer(tapGesture)
        
         state_fld.optionArray = ["Option1", "Option2", "Option3"]
         city_fld.optionArray = ["Option1", "Option2", "Option3"]
        
          state_fld.optionIds = [1,23,54,22]
          city_fld.optionIds = [1,23,54,22]
        
         state_fld.didSelect{(selectedText , index ,id) in
         self.state_fld.text = " \(selectedText) \n  \(index)"
         }
        
         city_fld.didSelect{(selectedText , index ,id) in
         self.city_fld.text = " \(selectedText) \n  \(index)"
        }

    }
    




//    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
//        name_fld.resignFirstResponder()
//        city_fld.resignFirstResponder()
//        address_fld.resignFirstResponder()
//        name_fld.resignFirstResponder()
//
//    }
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//
//        name_fld.resignFirstResponder()
//        city_fld.resignFirstResponder()
//        address_fld.resignFirstResponder()
//        name_fld.resignFirstResponder()
//
//    }
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        name_fld.resignFirstResponder()
//        city_fld.resignFirstResponder()
//        address_fld.resignFirstResponder()
//        name_fld.resignFirstResponder()
//
//        return true
//    }

    @IBAction func upload_Action(_ sender: Any) {
        imagePicker.delegate = self
        let optionMenu = UIAlertController(title: nil, message: "Add Photo", preferredStyle: .actionSheet)

        let galleryAction = UIAlertAction(title: "Gallery", style: .default, handler:{
            (alert: UIAlertAction!) -> Void in
            self.addImageOnTapped()
        })

        let cameraAction = UIAlertAction(title: "Camera", style: .default, handler:{
            (alert: UIAlertAction!) -> Void in
            self.openCameraButton()
        })

        let cancleAction = UIAlertAction(title: "Cancel", style: .cancel, handler:{
            (alert: UIAlertAction!) -> Void in
            print("Cancel")
        })

        optionMenu.addAction(galleryAction)
        optionMenu.addAction(cameraAction)
        optionMenu.addAction(cancleAction)
        self.present(optionMenu, animated: true, completion: nil)

        

    }
    func openCameraButton(){
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        {
            imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.camera;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }


    func addImageOnTapped(){
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary){
            imagePicker = UIImagePickerController()
             imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary;
            imagePicker.allowsEditing = true

            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageview.image = image
        }

    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btn_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Upload_DocVC") as! Upload_DocVC
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    
    @IBAction func back_action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "ChoiceDriverVC") as! ChoiceDriverVC
        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func prefer_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC2 = storyBoard.instantiateViewController(withIdentifier: "Preferences_RiderVC") as! Preferences_RiderVC
//        VC2.getdata = hasCome1
        self.navigationController?.pushViewController(VC2, animated: true)

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

//
//  ProfileSetupVC.swift
//  RoadKard_App
//
//  Created by Silstone on 24/12/20.
//

import UIKit
import iOSDropDown

class ProfileSetupVC: UIViewController, UIPickerViewDelegate,UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    @IBOutlet weak var dropDown : DropDown!
    var count = 1

    @IBOutlet weak var code_tfd: UITextField!
    @IBOutlet weak var city_tfd: UITextField!
    @IBOutlet weak var add_tfd: UITextField!
    @IBOutlet weak var name_tfd: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scroll_view: UIScrollView!
    @IBOutlet weak var last_lbl: UILabel!
    @IBOutlet weak var label_upload: UILabel!
    var imagePicker = UIImagePickerController()


    override func viewDidLoad() {
        
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard (_:)))
        self.view.addGestureRecognizer(tapGesture)

        dropDown.optionArray = ["IL1", "IL2", "IL3"]
        //Its Id Values and its optional
        dropDown.optionIds = [1,23,54,22]
        scroll_view.showsHorizontalScrollIndicator = false
        // Image Array its optional
        last_lbl.text = "The journey is just as\nimportant as the destination"
        label_upload.text = "Upload Required\nDocuments"
}
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        code_tfd.resignFirstResponder()
        city_tfd.resignFirstResponder()
        add_tfd.resignFirstResponder()
        name_tfd.resignFirstResponder()

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        code_tfd.resignFirstResponder()
        city_tfd.resignFirstResponder()
        add_tfd.resignFirstResponder()
        name_tfd.resignFirstResponder()

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        code_tfd.resignFirstResponder()
        city_tfd.resignFirstResponder()
        add_tfd.resignFirstResponder()
        name_tfd.resignFirstResponder()

        return true
    }

    @IBAction func backword_action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "ChoiceDriverVC") as! ChoiceDriverVC
        self.navigationController?.popViewController(animated: true)

        
    }
    @IBAction func forword_action(_ sender: Any) {
        
        
        
    }
    @IBAction func uploadimagebtn(_ sender: Any) {
        
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
            imageView.image = image
        }

    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func uploadAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Upload_DocVC") as! Upload_DocVC
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    
}




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



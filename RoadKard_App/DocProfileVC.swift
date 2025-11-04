//
//  DocProfileVC.swift
//  RoadKard_App
//
//  Created by Silstone on 30/12/20.
//

import UIKit
import iOSDropDown

class DocProfileVC: UIViewController,UIPickerViewDelegate,UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate  {
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    
    @IBOutlet weak var prefer_btn: UIButton!
    @IBOutlet weak var tf4: UITextField!
    @IBOutlet weak var profile_image: UIImageView!
    @IBOutlet weak var drop: DropDown!
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard (_:)))
        self.view.addGestureRecognizer(tapGesture)

        drop.optionArray = ["IL1", "IL2", "IL3"]
        //Its Id Values and its optional
        drop.optionIds = [1,23,54,22]
//        scroll_view.showsHorizontalScrollIndicator = false

        // Do any additional setup after loading the view.
    }
    
    @IBAction func upload_profile_action(_ sender: Any) {
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
            profile_image.image = image
        }

    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        imagePicker.dismiss(animated: true, completion: nil)
    }

    @IBAction func back_action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Upload_DocVC") as! Upload_DocVC
        self.navigationController?.popViewController(animated: true)

    }
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        tf1.resignFirstResponder()
        tf2.resignFirstResponder()
        tf3.resignFirstResponder()
        tf4.resignFirstResponder()

    }

    @IBAction func prefer_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC2 = storyBoard.instantiateViewController(withIdentifier: "PreferencesDriverVC") as! PreferencesDriverVC
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

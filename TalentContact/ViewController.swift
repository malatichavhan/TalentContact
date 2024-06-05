//
//  ViewController.swift
//  TalentContact
//
//  Created by Malati Rathod on 2/05/24.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var textFieldFirstName: UITextField!
    
    @IBOutlet weak var textFieldLastName: UITextField!
    
    @IBOutlet weak var textFieldAddress: UITextField!
    
    @IBOutlet weak var textFieldDescription: UITextField!
    
    @IBOutlet weak var picView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func UpdateContact(_ sender: Any) {
        // Add or update contact info
    }
    
    @IBAction func DeleteContact(_ sender: Any) {
        
    }
    
  
    @IBAction func AddContact(_ sender: Any) {
        let firstName = textFieldFirstName.text!
        let lastName = textFieldLastName.text!
        let address = textFieldAddress.text!
        let description = textFieldDescription.text!
        let img = picView.image?.data!
        let contact = Contact(firstName: firstName, lastName: lastName, address: address, description: description,image: img!)
        ContactStore().add(contact)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func CancelAddScreen(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func UploadPhoto(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
    @IBAction func AddImagepickerallowsEditingfalsepickersourceTypephotoLibrarypickerdelegateselfpresentpickeranimatedtruecompletionnil(_ sender: Any) {
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        picView.image = image
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}


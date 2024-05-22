//
//  ViewController.swift
//  TalentContact
//
//  Created by Malati Rathod on 2/05/24.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    
    @IBOutlet weak var TxtEmailAddress: UITextField!
    
    @IBOutlet weak var txtDateOfBirth: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func UpdateContact(_ sender: Any) {
        
        // Add or update contact info
    }
    
  
    @IBAction func AddContact(_ sender: Any) {
        let FirstName = txtFirstName.text!
        let LastName = txtLastName.text!
        let Address = txtAddress.text!
        let EmailAddress = TxtEmailAddress!
        let DteofBirth = txtDateOfBirth!
        
        
    }
    
    
    /*
     @IBAction func addProductButton(_ sender: UIButton) {
         let code = codeTextField.text!
         let name = nameTextField.text!
         let price = Double(priceTextField.text!)
         let quantity = Int( quantityTextField.text!)
         let image = picView.image
         let product = Product(code: code, name: name, price: price!, quantity: quantity!, pic: image!)
         
         var products = readData()
         products.append(product)
     //save the list products into userdefaults
         
         let data = try! NSKeyedArchiver.archivedData(withRootObject: products, requiringSecureCoding: false)
         UserDefaults.standard.set(data, forKey: "products")
         
         //Should be a alert window code but I am writing console print statement for testing purpose
         
         print("Done")
         
         
     }
     */
    
    @IBAction func DeleteContact(_ sender: Any) {
    }
        
        // Add or update contact info
    @IBOutlet weak var picView: UIImageView!
    

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


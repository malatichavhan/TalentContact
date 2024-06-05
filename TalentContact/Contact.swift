//
//  Contact.swift
//  TalentContact
//
//  Created by Malati on 03/06/2024.
//

import Foundation
import UIKit

extension UIImage {
    var data: Data? {
        if let data = self.jpegData(compressionQuality: 1.0) {
            return data
        } else {
            return nil
        }
    }
}

extension Data {
    var image: UIImage? {
        if let image = UIImage(data: self) {
            return image
        } else {
            return nil
        }
    }
}

class Contact: Codable{
    
    var firstName: String
    var lastName: String
    var address: String
    var description: String
    var image : Data
    
    init(firstName: String, lastName: String, address: String, description: String ,image: Data
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.description = description
        self.image = image
    }
}

//
//  Contact.swift
//  TalentContact
//
//  Created by Malati on 03/06/2024.
//

import Foundation


class ContactStore{
    
    private(set) var people: [Contact]
    var saveKey = "ab"
    
    func add(_ prospect: Contact) {
        people.append(prospect)
        save()
    }
    
    func save() {
        if let encoded = try? JSONEncoder().encode(people) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }
    
    init() {
        if let data = UserDefaults.standard.data(forKey: saveKey) {
            if let decoded = try? JSONDecoder().decode([Contact].self, from: data) {
                people = decoded
                return
            }
        }

        people = []
    }
}

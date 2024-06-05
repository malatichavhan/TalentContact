//
//  ContactSearchController.swift
//  TalentContact
//
//  Created by Malati on 03/06/2024.
//

import Foundation
import UIKit


class ContactSearchController: UITableViewController, UISearchBarDelegate
{
    var contacts = ContactStore().people
    var filterContacts: [Contact]!
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = ContactStore().people
        searchBar.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        contacts = ContactStore().people
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! ContactTableViewCell
        cell.nameLabel.text = contacts[indexPath.row].firstName + " " + contacts[indexPath.row].lastName
        cell.photoImage.image = contacts[indexPath.row].image.image
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        contacts = []
        if searchText.isEmpty {
            contacts = ContactStore().people
        }else{
            for c in ContactStore().people{
                if c.firstName.lowercased().contains(searchText.lowercased()){
                    contacts.append(c)
                }
            }
        }
        self.tableView.reloadData()
    }
}

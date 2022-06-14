//
//  NewPlaceViewController.swift
//  MyPlaces (TableView App)
//
//  Created by User on 14.06.2022.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // remove additional lines
        tableView.tableFooterView = UIView()
    }
    
    //MARK: - TableView Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }


}
//MARK: - TextField Delegate

extension NewPlaceViewController: UITextFieldDelegate {
    // Hide keyboard on Done tapped
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

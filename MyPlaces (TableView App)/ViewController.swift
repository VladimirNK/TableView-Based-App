//
//  ViewController.swift
//  MyPlaces (TableView App)
//
//  Created by User on 12.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let cellReuseIdentifier = "cell"
    
    let places = Place.getPlaces()
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) { }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! CustomTableViewCell
        
        cell.nameLabel.text = places[indexPath.row].name
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
        return cell
    }
    
    
}

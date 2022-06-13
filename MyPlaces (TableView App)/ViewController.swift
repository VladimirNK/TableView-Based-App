//
//  ViewController.swift
//  MyPlaces (TableView App)
//
//  Created by User on 12.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let cellReuseIdentifier = "cell"
    
    let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)
        
        cell?.textLabel?.text = restaurantNames[indexPath.row]
        cell?.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        cell?.imageView?.layer.cornerRadius = (cell?.frame.height)!
        cell?.imageView?.clipsToBounds = true
        
        return cell!
    }
    
    //MARK: - Table view delegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    
}

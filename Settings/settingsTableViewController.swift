//
//  settingsTableViewController.swift
//  Settings
//
//  Created by ASWIN A on 14/09/23.
//

import UIKit

class settingsTableViewController: UITableViewController {
    
    let searchController = UISearchController()
    
    var arr = [["Airplane Mode"],["WiFi","Bluetooth","Mobile Data","Personal Hotspot"],["Notification","Sound & Haptics", "Focus", "Screen Time"]]
    
    var images = [["sound"],["notif","sound","focus","screen"],["notif","sound","focus","screen"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.searchController = searchController
        
        let toggleNib = UINib(nibName: "toggleTableViewCell", bundle: nil)
        tableView.register(toggleNib, forCellReuseIdentifier: "toggleCell")
        
        let labelNib = UINib(nibName: "labelTableViewCell", bundle: nil)
        tableView.register(labelNib, forCellReuseIdentifier: "labelCell")
        
        let userNib = UINib(nibName: "userTableViewCell", bundle: nil)
        tableView.register(userNib, forCellReuseIdentifier: "userCell")
}

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "toggleCell") as! toggleTableViewCell
            cell.airplane.text = arr[indexPath.section][indexPath.row]
            return cell
        }
        
        else if indexPath.section == 1 {
            if indexPath.row == 3{
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "toggleCell") as! toggleTableViewCell
                cell.airplane.text = arr[indexPath.section][indexPath.row]
                return cell
                
            }
            else{
                let cell1 = tableView.dequeueReusableCell(withIdentifier: "userCell") as! userTableViewCell
                cell1.uname.text = arr[indexPath.section][indexPath.row]
                return cell1
            }
        }
        else {
            if indexPath.row % 2 == 0 {
                let cell2 = tableView.dequeueReusableCell(withIdentifier: "labelCell") as! labelTableViewCell
                cell2.labelimg.image = UIImage(named: images[indexPath.section][indexPath.row])
                cell2.label.text = arr[indexPath.section][indexPath.row]
                return cell2
            }
            else{
                let cell1 = tableView.dequeueReusableCell(withIdentifier: "userCell") as! userTableViewCell
                cell1.uname.text = arr[indexPath.section][indexPath.row]
                return cell1
            }
        }
    }
}

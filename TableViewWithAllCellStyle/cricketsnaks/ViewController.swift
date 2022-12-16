//
//  ViewController.swift
//  cricketsnaks
//
//  Created by STC on 28/10/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let playerName : [String] = ["rohit","virat","hardik","jadeja","bumrah","shami"]
    let snaks : [String] =  ["poha","bhaji","padapav","samosa"]
    
    
    @IBOutlet weak var cricketTeam: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cricketTeam.dataSource = self
        cricketTeam.delegate = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return self.playerName.count
        }
        else{
            return self.snaks.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.cricketTeam.dequeueReusableCell(withIdentifier: "cell")
        if indexPath.section == 0
        {
         cell?.textLabel?.text = self.playerName[indexPath.row]
            cell?.backgroundColor = .orange
            cell?.textLabel?.textColor = .yellow
        }
        else
        {
            cell?.textLabel?.text = self.snaks[indexPath.row]
            cell?.backgroundColor = .blue
            cell?.textLabel?.textColor = .red
        }
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "team player \(section)"
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "footer=\(section)"
    }
}


//
//  secondViewController.swift
//  cricketsnaks
//
//  Created by STC on 29/10/22.
//

import UIKit

class secondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    let playerNames: [String] = ["rohit","virat","babar","hardik"]
    let contry : [String] = ["India","India","pak","India"]
    @IBOutlet weak var cricketTeam: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cricketTeam.dataSource = self
        cricketTeam.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.playerNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TableViewcell1 = self.cricketTeam.dequeueReusableCell(withIdentifier: "cell1")
        TableViewcell1?.textLabel?.text = self.playerNames[indexPath.row]
        TableViewcell1?.detailTextLabel?.text = self.contry[indexPath.row]
        TableViewcell1?.backgroundColor = .red
        TableViewcell1?.detailTextLabel?.textColor = .yellow
        TableViewcell1?.textLabel?.textColor = .blue
        return TableViewcell1!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "cricket team player \(section)"
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "section --\(section)"
    }

}

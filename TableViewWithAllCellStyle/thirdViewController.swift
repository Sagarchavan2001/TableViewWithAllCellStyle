//
//  thirdViewController.swift
//  cricketsnaks
//
//  Created by STC on 01/11/22.
//

import UIKit

class thirdViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    let employeeid : [String] = ["1","2","3","4"]
    let empname : [String] = ["sagar", "sachin","sanket","digvijay"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.employeeid.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = self.employeeLeftDatailTableView.dequeueReusableCell(withIdentifier: "Cell2")
        cell2?.textLabel?.text = self.employeeid[indexPath.row]
        cell2?.detailTextLabel?.text = self.empname[indexPath.row]
        cell2?.backgroundColor = .yellow
        return cell2!
    }
    

    @IBOutlet weak var employeeLeftDatailTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeLeftDatailTableView.dataSource = self
        employeeLeftDatailTableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

}

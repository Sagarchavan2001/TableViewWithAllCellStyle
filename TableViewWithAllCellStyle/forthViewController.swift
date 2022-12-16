//
//  forthViewController.swift
//  cricketsnaks
//
//  Created by STC on 01/11/22.
//

import UIKit

class forthViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let name : [String] = ["sachin","digvijay","sanket"]
    let age : [String] = ["21","22","20"]
    let images : [String] = ["rose","sunflower","flower1"]
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var subtitleTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subtitleTableView.delegate = self
        subtitleTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell4 = self.subtitleTableView.dequeueReusableCell(withIdentifier: "cell4")
        cell4?.textLabel!.text = self.name[indexPath.row]
        cell4?.detailTextLabel?.text = self.age[indexPath.row]
        cell4?.imageView?.image = UIImage(named: images[indexPath.row])
        return cell4!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

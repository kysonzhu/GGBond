//
//  GBPersonalCenterViewController.swift
//  GGbond
//
//  Created by kyson on 2018/10/3.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBPersonalCenterViewController: GBBaseViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var headerView :GBPersonalHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        headerView = GBPersonalHeaderView.loadFromXib()
        self.tableView.tableHeaderView = headerView
        
        
        self.tableView.register(UINib.init(nibName: "GBPersonalCenterCell", bundle: nil), forCellReuseIdentifier: "GBPersonalCenterCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
        let detailViewController : GBSettingViewController = GBSettingViewController.init()
        detailViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        let cell:GBPersonalCenterCell = tableView.dequeueReusableCell(withIdentifier: "GBPersonalCenterCell") as! GBPersonalCenterCell
        
        return cell
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

//
//  ViewController.swift
//  GGbond
//
//  Created by 程薇 on 2018/9/27.
//  Copyright © 2018年 程薇. All rights reserved.
//

import UIKit

class GBHomeViewController: GBBaseViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"

        self.tableView.dataSource = self
        self.tableView.delegate = self
        let cellNib : UINib = UINib.init(nibName: "GBPropertyTableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "cellReuseIdentifier")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 282
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
        let detailViewController : GBPropertyViewController = GBPropertyViewController.init()
        detailViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:GBPropertyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") as! GBPropertyTableViewCell
        
        return cell
    }


    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    
}


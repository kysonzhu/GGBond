//
//  GBPropertyViewController.swift
//  GGbond
//
//  Created by kyson on 2018/10/3.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit
import SnapKit
import ReactiveCocoa
import ReactiveSwift

class GBPropertyViewController: GBBaseViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var goPayButton: UIButton!
    var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel : GBPropertyViewModel = GBPropertyViewModel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "详情"
        
        self.goPayButton.reactive.controlEvents(.touchUpInside).observe{ event in
            let infoViewController : GBPayInfoViewController = GBPayInfoViewController.init()
            self.navigationController?.pushViewController(infoViewController, animated: true)
        }

        let flowLayout : GBPropertyFlowLayout = GBPropertyFlowLayout.init()
        flowLayout.scrollDirection = UICollectionViewScrollDirection.horizontal
        flowLayout.itemSize = CGSize.init(width: UIScreen.main.bounds.size.width, height: 190);
        
        self.collectionView = UICollectionView.init(frame: CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: UIScreen.main.bounds.size.width, height: 190)), collectionViewLayout: flowLayout)
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self

        self.collectionView.collectionViewLayout = flowLayout
        self.collectionView.isPagingEnabled = true
        self.collectionView.showsHorizontalScrollIndicator = false

        self.collectionView.register(UINib.init(nibName: "GBPropertyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GBPropertyCollectionViewCell")
        
        self.tableView.tableHeaderView = self.collectionView

        self.tableView.register(UINib.init(nibName: "GBPropertyDetailCell", bundle: nil), forCellReuseIdentifier: "GBPropertyDetailCell")
        self.tableView.register(UINib.init(nibName: "GBCookerSummeryCell", bundle: nil), forCellReuseIdentifier: "GBCookerSummeryCell")
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override func bindViewModel() {

//        self.viewModel.reactive.producer(forKeyPath: "property").startWithCompleted {
//
//        }
        self.viewModel.property.signal.observeValues { (value : GBProperty) in
            self.title = value.title;
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GBPropertyDetailCell", for: indexPath)
            return cell
        }
        
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GBCookerSummeryCell", for: indexPath)
            return cell
        }
        return UITableViewCell.init()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 210
        }
        return 114
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            let cookerViewController = GBCookerDetailViewController.init()
            self.navigationController?.pushViewController(cookerViewController, animated: true)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GBPropertyCollectionViewCell", for: indexPath)
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}

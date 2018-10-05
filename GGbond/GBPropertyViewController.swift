//
//  GBPropertyViewController.swift
//  GGbond
//
//  Created by kyson on 2018/10/3.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBPropertyViewController: GBBaseViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var goPayButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "详情"
        
        self.goPayButton.reactive.controlEvents(.touchUpInside).observe{ event in
            let infoViewController : GBPayInfoViewController = GBPayInfoViewController.init()
            self.navigationController?.pushViewController(infoViewController, animated: true)
        }
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        let flowLayout : GBPropertyFlowLayout = GBPropertyFlowLayout.init()
        flowLayout.scrollDirection = UICollectionViewScrollDirection.horizontal
        flowLayout.itemSize = CGSize.init(width: UIScreen.main.bounds.size.width, height: 190);

        self.collectionView.collectionViewLayout = flowLayout
        self.collectionView.isPagingEnabled = true

        self.collectionView.register(UINib.init(nibName: "GBPropertyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GBPropertyCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
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

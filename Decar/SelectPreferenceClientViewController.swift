//
//  SelectPreferenceClientViewController.swift
//  Decar
//
//  Created by Tzu-Yen Huang on 2019/5/19.
//  Copyright © 2019年 Tzu-Yen Huang. All rights reserved.
//

import UIKit

class SelectPreferenceClientViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet var pageController: UIPageControl!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var collectionViewLayout: UICollectionViewFlowLayout!
    var photoArray:Array<String>? = nil
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"ClientCollectionViewCell", for: indexPath) as! ClientCollectionViewCell
        //cell.clientImage.image = UIImage(named: photoArray![indexPath.row])
        
        if selectedIndexs.contains(indexPath.row) {
            cell.layer.borderWidth = 2.0
            cell.layer.borderColor = UIColor.red.cgColor
        } else {
            cell.layer.borderWidth = 0.0
        }
        return cell
    }

    var selectedIndexs = [Int]()
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let index = selectedIndexs.index(of: indexPath.row){
            selectedIndexs.remove(at: index)
        }else{
            selectedIndexs.append(indexPath.row)
        }
        self.collectionView?.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewLayout.sectionInset = UIEdgeInsets(top: 18, left: 20 ,bottom: 18, right: 20)
        collectionViewLayout.itemSize = CGSize(width: 150, height: 100)
        // 同一列Cell之間的間距
        collectionViewLayout.minimumInteritemSpacing = 10
        // 列和列之間的間距
        collectionViewLayout.minimumLineSpacing = 18
        collectionViewLayout.scrollDirection = .vertical
        collectionView.delegate = self
        collectionView.dataSource = self
        photoArray = ["1","2","3","4","5","6"]
    }

}

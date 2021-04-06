//
//  DetailViewController.swift
//  CollectionXIB
//
//  Created by zein rezky chandra on 06/04/21.
//

import UIKit

class DetailViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var noDataView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var productArray = ["iPhone X", "iPhone 11", "iPhone SE", "iPhone 12", "iPhone 6+", "iPhone 6", "iPhone 8", "iPhone 6 Plus", "iPhone 11 Pro", "iPhone 11 Pro Max", "iPhone 12 Pro", "iPhone 12 Pro Max"]
    
    var isProductEmpty = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCollection()
        
        setupBool()
    }
    
    private func navigateToThird(productName: String) {
        let thirdVC = ThirdViewController()
        thirdVC.name = productName
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }

    private func setupCollection() {
        collectionView.register(UINib(nibName: "DetailCell", bundle: nil), forCellWithReuseIdentifier: "productCellIdentifier")
        collectionView.register(UINib(nibName: "NoDataCell", bundle: nil), forCellWithReuseIdentifier: "noDataIdentifier")
    }
    
    private func setupBool() {
        isProductEmpty = true
        noDataView.isHidden = isProductEmpty ? false : true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if !isProductEmpty {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCellIdentifier", for: indexPath) as? DetailCell
            cell?.product = productArray[indexPath.item]
            cell?.productImage.image = UIImage(named: "images-\(indexPath.item+1)")
            return cell!
//        } else {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "noDataIdentifier", for: indexPath) as? NoDataCell
//            return cell!
//        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if isProductEmpty {
//            let width = 250
//            let height = 250
//
//            return CGSize(width: width, height: height)
//        } else {
//            let width = 150
//            let height = 150
//
//            return CGSize(width: width, height: height)
//        }
//    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Product selected name : \(productArray[indexPath.item]), with index selected : \(indexPath.row)")
        navigateToThird(productName: productArray[indexPath.item])
    }

}

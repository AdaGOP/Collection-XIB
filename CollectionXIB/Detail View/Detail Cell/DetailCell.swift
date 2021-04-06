//
//  DetailCell.swift
//  CollectionXIB
//
//  Created by zein rezky chandra on 06/04/21.
//

import UIKit

class DetailCell: UICollectionViewCell {

    @IBOutlet weak var containerBgView: UIView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    var product: String? {
        didSet {
            productName.text = product!
        }
    }
    
    var selectedIndex = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupImage() {

    }

}

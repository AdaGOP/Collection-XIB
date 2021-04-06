//
//  ThirdViewController.swift
//  CollectionXIB
//
//  Created by zein rezky chandra on 06/04/21.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var productNameDetail: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        productNameDetail.text = name
    }

}

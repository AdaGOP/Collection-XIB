//
//  ViewController.swift
//  CollectionXIB
//
//  Created by zein rezky chandra on 06/04/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToDetail(_ sender: UIButton) {
        let detailVC = DetailViewController()
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
}


//
//  ColorDetailsVC.swift
//  ColorsApp
//
//  Created by Pabitra Ranjan Sahoo   on 09/12/23.
//

import UIKit

class ColorDetailsVC: UIViewController {
    
    var color: UIColor?
    @IBOutlet weak var colorName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
        colorName.text = color?.accessibilityName
    }
  
}

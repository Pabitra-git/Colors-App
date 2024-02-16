//
//  ColorTableVC.swift
//  ColorsApp
//
//  Created by Pabitra Ranjan Sahoo   on 09/12/23.
//

import UIKit

class ColorTableVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var colors: [UIColor] = []
    
    enum Cells{
        static let colorcell = "colorCell"
    }
    enum Segues {
        static let toDetail = "ToColorDetailVC"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addColor()
    }
    
    func addColor() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailsVC
        destVC.color = sender as? UIColor
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorcell, for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}

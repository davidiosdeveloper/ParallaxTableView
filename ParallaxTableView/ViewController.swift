//
//  ViewController.swift
//  ParallaxTableView
//
//  Created by David Santiago on 10/26/18.
//  Copyright © 2018 David Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let i = indexPath.row
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customCell
        if i == 0 || i == 4 {
            cell.imagen.image = UIImage(named: "han1")
        }else if i == 1 || i == 5 {
            cell.imagen.image = UIImage(named: "han2")
        }else if i == 2 || i == 6 {
            cell.imagen.image = UIImage(named: "han3")
        }else if i == 3 || i == 7 {
            cell.imagen.image = UIImage(named: "han4")
        }
        cell.label.text = "Celda \(i+1)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let cells = tableView.visibleCells as! [customCell]
        let bounds = tableView.bounds
        for cell in cells {
            cell.updateParallaxOffSet(tableViewBounds: bounds)
        }
    }

}




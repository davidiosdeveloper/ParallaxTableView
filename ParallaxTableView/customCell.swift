//
//  customCell.swift
//  ParallaxTableView
//
//  Created by David Santiago on 10/26/18.
//  Copyright © 2018 David Santiago. All rights reserved.
//

import Foundation
import UIKit


class customCollectionCell:UICollectionViewCell {
    /*
    @IBOutlet weak var imagen:UIImageView!
    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var imagenCenterLayout:NSLayoutConstraint!
    
    var parallaxOffSet:CGFloat = 0 {
        didSet {
            imagenCenterLayout.constant = parallaxOffSet
        }
    }
    // Here comes the magic
    func updateParallaxOffSet(tableViewBounds bounds: CGRect){
        let center = CGPoint(x: bounds.midX, y: bounds.midY )
        let offsetCenter = CGPoint(x: center.x - self.center.x , y: center.y - self.center.y)
        let maxVerticalOffset = (bounds.height / 2) + (self.bounds.height / 2)
        let scaleFactor = 40.0 / maxVerticalOffset
        parallaxOffSet = -offsetCenter.y * scaleFactor
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clipsToBounds = false
    }
    
    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
    }
    */
}

class customCell:UITableViewCell {
    @IBOutlet weak var imagen:UIImageView!
    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var imagenCenterLayout:NSLayoutConstraint!
    
    var parallaxOffSet:CGFloat = 0 {
        didSet {
            imagenCenterLayout.constant = parallaxOffSet
        }
    }
    // Here comes the magic
    func updateParallaxOffSet(tableViewBounds bounds: CGRect){
        let center = CGPoint(x: bounds.midX, y: bounds.midY )
        let offsetCenter = CGPoint(x: center.x - self.center.x , y: center.y - self.center.y)
        let maxVerticalOffset = (bounds.height / 2) + (self.bounds.height / 2)
        let scaleFactor = 50 / maxVerticalOffset
        parallaxOffSet = -offsetCenter.y * scaleFactor
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

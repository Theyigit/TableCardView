//
//  MenuViewCell.swift
//  TableCardView
//
//  Created by Macbook on 8.05.2017.
//  Copyright © 2017 Yigit Yilmaz. All rights reserved.
//

import UIKit

class CardViewCell: UITableViewCell {

    @IBOutlet weak var sideLine: UIImageView!
    @IBOutlet weak var chain: UIImageView!

    
    override var frame: CGRect {
            get {
                return super.frame
            }
            set (newFrame) {
                let inset: CGFloat = 20
                var frame = newFrame
                frame.origin.x += inset
                frame.size.width -= 2 * inset
                super.frame = frame
            }
    }
}

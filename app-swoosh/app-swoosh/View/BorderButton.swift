//
//  BorderButton.swift
//  app-swoosh
//
//  Created by David Sadler on 9/28/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        // super calls the parent class of awake from nib - calling UIbutton.
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

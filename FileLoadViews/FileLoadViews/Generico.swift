//
//  Generico.swift
//  FileLoadViews
//
//  Created by MacBook on 03/10/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class Generico: UIButton {
    
   // @IBInspectable var colorDeFondo: CGColor = UIColor.red.cgColor
    @IBInspectable var colorDeFondo: UIColor = UIColor.red
    @IBInspectable var largo: CGFloat = 100

    
    override func awakeFromNib() {
        print("awake")
       // layer.backgroundColor = colorDeFondo
    }

    override func draw(_ rect: CGRect) {
        print("draw")
    }

}

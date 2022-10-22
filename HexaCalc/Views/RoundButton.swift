//
//  RoundButton.swift
//  BasicCalculator
//
//  Created by Anthony Hopkins on 2020-07-13.
//  Copyright © 2020 Anthony Hopkins. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var roundButton:Bool = false {
        didSet {
            // !!!: 这种属性代理的方式， 是不是框架ViewController也是这么实现
            if roundButton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 2
        }
    }

}

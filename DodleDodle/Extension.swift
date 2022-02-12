//
//  Extension.swift
//  DodleDodle
//
//  Created by 김지나 on 2022/02/12.
//

import Foundation
import UIKit

class TextField: UITextField {
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        let padding = UIEdgeInsets(top: 16, left: 19, bottom: 16, right: 19)
        return bounds.inset(by: padding)
    }
}

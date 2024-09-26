//
//  UIResponder+Extension.swift
//  tip-calculator
//
//  Created by David Okonkwo on 12/02/2024.
//

import UIKit

extension UIResponder {
    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }
}

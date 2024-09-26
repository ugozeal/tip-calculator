//
//  Double+Extension.swift
//  tip-calculator
//
//  Created by David Okonkwo on 12/02/2024.
//

import Foundation

extension Double {
    var currencyFormatter: String {
        var isWholeNumber: Bool {
            isZero ? true: !isNormal ? false: self == rounded()
        }
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_US")
        formatter.minimumFractionDigits = isWholeNumber ? 0 : 2
        return formatter.string(from: self as NSNumber) ?? ""
    }
}

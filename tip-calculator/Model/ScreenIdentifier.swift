//
//  ScreenIdentifier.swift
//  tip-calculator
//
//  Created by David Okonkwo on 12/06/2024.
//

import Foundation

enum ScreenIdentifier {
    
    enum ResultView: String {
        case totalAmountPerPersonValueLabel
        case totalTipValueLabel
        case totalBillValueLabel
    }
    
    enum BillInputView: String {
        case textField
    }
    
    enum LogoView: String {
        case logoView
    }
    
    enum TipInputView: String {
        case tenPercentButton
        case fiftenPercentButton
        case twentyPercentButton
        case customTiPButton
        case customTipAlertTextField
    }
    
    enum SplitInputView: String {
        case decrementButton
        case incrementButton
        case quantityValueLabel
    }
}

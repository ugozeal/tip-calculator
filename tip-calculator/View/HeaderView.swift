//
//  HeaderView.swift
//  tip-calculator
//
//  Created by David Okonkwo on 20/01/2024.
//

import UIKit

class HeaderView: UIView {
    private let topLabel: UILabel = {
        let label = LabelFactory.build(
            text: "",
            font: ThemeFont.bold(ofSize: 18))
        return label
    }()
    
    private let bottomLabel: UILabel = {
        let label = LabelFactory.build(
            text: "",
            font: ThemeFont.regular(ofSize: 16))
        return label
    }()
    
    private let topSpacerView = UIView()
    private let bottomSpacerView = UIView()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            topSpacerView,
            topLabel,
            bottomLabel,
            bottomSpacerView
        ])
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = -4
        return stackView
    }()
    
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func layout() {
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        topSpacerView.snp.makeConstraints { make in
            make.height.equalTo(bottomSpacerView)
        }
    }
    
    func configure(topText: String, bottomText: String) {
        topLabel.text = topText
        bottomLabel.text = bottomText
    }
}

//
//  CardView.swift
//  TedioffMVC
//
//  Created by Débora Oliveira on 31/08/19.
//  Copyright © 2019 Débora Oliveira. All rights reserved.
//

import UIKit

//
// MARK: - CardView
//
class CardView: UIView {
    //
    // MARK: - UI elements
    //
    lazy var titleLabel: UILabel = {
        var label = UILabel(frame: .zero)
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.font = UIFont.title
        label.numberOfLines = 0
        return label
    }()
    // FIXME: Talvez fosse bom indexPath aqui
    lazy var typeRowView: CardRowView = {
        var row = CardRowView(frame: .zero)
        return row
    }()
    lazy var accessibilityRowView: CardRowView = {
        var row = CardRowView(frame: .zero)
        return row
    }()
    lazy var priceRowView: CardRowView = {
        var row = CardRowView(frame: .zero)
        return row
    }()
    lazy var participantsRowView: CardRowView = {
        var row = CardRowView(frame: .zero)
        return row
    }()
    
    //
    // MARK: - Initializers
    //
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    //
    // MARK: - Class methods
    //
    private func setup() {
        backgroundColor = UIColor.white
        clipsToBounds = true
        layer.cornerRadius = 16
        
        addViews()
    }
    override func didMoveToSuperview() {
        autoLayout()
    }
    private func addViews() {
        addSubview(titleLabel)
        addSubview(typeRowView)
        addSubview(accessibilityRowView)
        addSubview(priceRowView)
        addSubview(participantsRowView)
    }
    private func autoLayout() {
        titleLabel.anchor(leading: leadingAnchor, top: topAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16))
        
        typeRowView.anchor(leading: leadingAnchor, top: titleLabel.bottomAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0))
        
        accessibilityRowView.anchor(leading: leadingAnchor, top: typeRowView.bottomAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0))
        
        priceRowView.anchor(leading: leadingAnchor, top: accessibilityRowView.bottomAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0))
        
        participantsRowView.anchor(leading: leadingAnchor, top: priceRowView.bottomAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0))
    }
    
}
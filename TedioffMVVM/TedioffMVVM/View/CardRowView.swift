//
//  CardRowView.swift
//  TedioffMVC
//
//  Created by Débora Oliveira on 31/08/19.
//  Copyright © 2019 Débora Oliveira. All rights reserved.
//

import UIKit

// MARK: - CardRowView

class CardRowView: UIView {    
    
    // MARK: - UI elements
    
    private lazy var imageView: UIImageView = {
        var image = UIImageView(frame: .zero)
        image.contentMode = .scaleAspectFit
        return image
    }()
    private lazy var label: UILabel = {
        var label = UILabel(frame: .zero)
        label.textColor = UIColor.black
        label.font = UIFont.primary
        label.numberOfLines = 1
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: - Class methods

    private func setup() {
        backgroundColor = UIColor.clear
        addViews()
    }
    override func didMoveToSuperview() {
        autoLayout()
    }
    private func addViews() {
        addSubview(imageView)
        addSubview(label)
    }
    private func autoLayout() {
        imageView.anchor(leading: leadingAnchor, top: topAnchor, bottom: bottomAnchor, padding: UIEdgeInsets(top: 0, left: 32, bottom: 0, right: 0))
        imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        label.anchor(leading: imageView.trailingAnchor, top: topAnchor, trailing: trailingAnchor, bottom: bottomAnchor, padding: UIEdgeInsets(top: 0, left: 32, bottom: 0, right: 0))
    }
    func setImage(_ image: UIImage?) {
        self.imageView.image = image
    }
    func setText(_ text: NSMutableAttributedString?) {
        self.label.attributedText = text
    }
    func setValues(_ image: UIImage?, _ text: NSMutableAttributedString?) {
        self.setImage(image)
        self.setText(text)
    }
}

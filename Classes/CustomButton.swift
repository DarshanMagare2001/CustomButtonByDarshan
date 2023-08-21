//
//  CustomButton.swift
//  Pods-CustomButtonByDarshan_Tests
//
//  Created by IPS-161 on 21/08/23.
//

import Foundation
import UIKit

@IBDesignable
open class CustomButton: UIButton {
    
    // MARK: - Properties
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.black {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0 {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize.zero {
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    // MARK: - Initialization
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        // Ensure shadow path matches the button's rounded corners
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
    }
    
    private func setup() {
        layer.cornerRadius = cornerRadius
        layer.borderColor = borderColor?.cgColor
        layer.borderWidth = borderWidth
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOpacity = shadowOpacity
        layer.shadowOffset = shadowOffset
        layer.shadowRadius = shadowRadius
    }
}

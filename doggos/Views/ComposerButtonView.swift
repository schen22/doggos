//
//  ComposerButtonView.swift
//  doggos
//
//  Created by Sarah Chen on 3/27/22.
//

import UIKit

class ComposerButtonView : UIButton {
  let composerButtonBlue = UIColor(red: 130/255, green: 160/255, blue: 250/255, alpha: 1)
  let alphaValue = 0.6
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = composerButtonBlue
    self.setUpPlusIcon()
  }

  private func setUpPlusIcon() {
    let plusIcon = UIImage(named: "plus_icon")
    
    self.setImage(plusIcon, for: .normal)
    self.setImage(plusIcon?.withAlpha(alphaValue), for: .highlighted)
    self.imageView?.contentMode = .scaleAspectFit
    self.contentHorizontalAlignment = .center
    self.contentVerticalAlignment = .center
    self.addTarget(self, action: #selector(ComposerButtonView.addFuzzy(sender:)), for: UIControl.Event.touchUpInside)
  }
  
  override open var isHighlighted: Bool {
    didSet {
      backgroundColor = isHighlighted ? composerButtonBlue.withAlphaComponent(alphaValue) : composerButtonBlue
    }
  }

  @objc func addFuzzy(sender: UIButton!) {
    // present composer view
    print("to add fuzzy composer view here!")
  }
  
}

// https://stackoverflow.com/a/60299680
extension UIImage {
  func withAlpha(_ alpha: CGFloat) -> UIImage {
    return UIGraphicsImageRenderer(size: size).image { _ in
        draw(at: .zero, blendMode: .normal, alpha: alpha)
    }
  }
}

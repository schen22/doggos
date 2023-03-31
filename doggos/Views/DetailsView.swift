//
//  FuzziesView.swift
//  doggos
//
//  Created by Sarah Chen on 3/15/22.
//

import UIKit

class FuzziesView: UIView {
  var fuzzy: UITextField!
  var saveButton: UIButton!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.layer.cornerRadius = Configuration().cornerRadius
    self.layer.masksToBounds = true
    self.fuzzy = UITextField(frame: CGRect(x: 16, y: 16, width: 200, height: 500))
    self.fuzzy.layer.cornerRadius = Configuration().cornerRadius
    self.fuzzy.layer.masksToBounds = true
    
  }

  //common func to init our view
  private func setupView() {
    backgroundColor = .red
  }

  required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
  }
}

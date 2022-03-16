//
//  DayCollectionViewCell.swift
//  doggos
//
//  Created by Sarah Chen on 3/12/22.
//

import UIKit

class DayCollectionViewCell: UICollectionViewCell {
  var thumbnailView: UIImageView!
  var titleLabel: UILabel!
  
  var day: Day? {
    didSet {
      thumbnailView.image = day?.thumbnail
      titleLabel.text = day?.title
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)

    self.layer.cornerRadius = 16
    self.layer.masksToBounds = true

    self.thumbnailView = UIImageView(frame: CGRect(x: 0, y: 0, width: 164, height: 164))
//    self.thumbnailView.sizeToFit()
    self.thumbnailView.contentMode = .center

    self.titleLabel = UILabel(frame: CGRect(x: 16, y: 16, width: 130, height: 40))
    self.titleLabel.textColor = UIColor.white
    self.titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
    self.titleLabel.shadowColor = UIColor.lightGray
    self.titleLabel.shadowOffset = CGSize(width: -1, height: -1) // default is CGSizeMake(0, -1) -- a top shadow
//    NSLayoutConstraint.activate([
//      self.titleLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 16),
//      self.titleLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor, constant: 106),
//      self.titleLabel.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 16),
////      self.titleLabel.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
//    ])
    self.addViews()

  }
  
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func addViews(){    
    addSubview(self.thumbnailView)
    addSubview(self.titleLabel)
  }
}

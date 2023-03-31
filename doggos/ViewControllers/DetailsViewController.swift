//
//  DetailsViewController.swift
//  doggos
//
//  Created by Sarah Chen on 3/30/23.
//

import UIKit

class DetailsViewController: UICollectionViewController {
  // MARK: - Properties
  private let sectionInsets = UIEdgeInsets(
    top: 50.0,
    left: 16.0,
    bottom: 50.0,
    right: 16.0)
  private let itemsPerRow: CGFloat = 2
  private let dayViewModel: DayViewModel = DayViewModel()
  private let detailsAView: DetailsView = 
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view

    self.collectionView.backgroundColor = Configuration().mainBackgroundColor
    self.collectionView.register(DayCollectionViewCell.self, forCellWithReuseIdentifier: dayCellReuseIdentifier)
    self.collectionView.delegate = self
    self.collectionView.dataSource = self
  }
}


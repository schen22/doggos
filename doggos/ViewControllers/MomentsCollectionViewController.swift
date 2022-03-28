//
//  MomentsCollectionViewController.swift
//  doggos
//
//  Created by Sarah Chen on 3/12/22.
//

import UIKit

class MomentsCollectionViewController: UICollectionViewController {
  // MARK: - Properties
  private let sectionInsets = UIEdgeInsets(
    top: 50.0,
    left: 16.0,
    bottom: 50.0,
    right: 16.0)
  private let itemsPerRow: CGFloat = 2
  
  private let dayViewModel: DayViewModel = DayViewModel()

  private let dayCellReuseIdentifier = "DayCollectionViewCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view

    self.collectionView.backgroundColor = Configuration().mainBackgroundColor
    self.collectionView.register(DayCollectionViewCell.self, forCellWithReuseIdentifier: dayCellReuseIdentifier)
    self.collectionView.delegate = self
    self.collectionView.dataSource = self
  }
}

// MARK: - UICollectionViewDataSource
extension MomentsCollectionViewController {
  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  override func collectionView(
    _ collectionView: UICollectionView,
    numberOfItemsInSection section: Int
  ) -> Int {
    return dayViewModel.allDays.count
  }
  
  override func collectionView(
    _ collectionView: UICollectionView,
    cellForItemAt indexPath: IndexPath
  ) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(
      withReuseIdentifier: dayCellReuseIdentifier,
      for: indexPath) as! DayCollectionViewCell
    // Configure the cell
    cell.day = dayViewModel.allDays[indexPath.row]
    cell.backgroundColor = .clear
    return cell
  }
}

//extension MomentsCollectionViewController: UICollectionViewFlowLayout {
//  self.scrollDirection = .horizontal
//
//}

// MARK: - Collection View Flow Layout Delegate
extension MomentsCollectionViewController : UICollectionViewDelegateFlowLayout {

//  func collectionView(
//    _ collectionView: UICollectionView,
//    layout collectionViewLayout: UICollectionViewLayout,
//    sizeForItemAt indexPath: IndexPath
//  ) -> CGSize {
//    let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
//    let availableWidth = view.frame.width - paddingSpace
//    let widthPerItem = availableWidth / itemsPerRow
//
//    return CGSize(width: widthPerItem, height: widthPerItem)
//  }
//
//
//  func collectionView(
//    _ collectionView: UICollectionView,
//    layout collectionViewLayout: UICollectionViewLayout,
//    insetForSectionAt section: Int
//  ) -> UIEdgeInsets {
//    return sectionInsets
//  }
//
//  func collectionView(
//    _ collectionView: UICollectionView,
//    layout collectionViewLayout: UICollectionViewLayout,
//    minimumLineSpacingForSectionAt section: Int
//  ) -> CGFloat {
//    return sectionInsets.left
//  }
  
  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print("selected item: \(indexPath.row)")
    guard let cell = collectionView.cellForItem(at: indexPath) as? DayCollectionViewCell else { return }
    print(cell.day?.id ?? "0")
    // TODO:
    // on tap, open day to view fuzzies.
  }

}



//
//  ViewController.swift
//  doggos
//
//  Created by Sarah Chen on 3/12/22.
//

import UIKit

// HomeViewController
class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
//    modalPresentationCapturesStatusBarAppearance = true

    self.setUpNavBar()
    let momentsCollectionViewController = MomentsCollectionViewController(collectionViewLayout: setUpCollectionLayout())
    // TODO: Somehow window is nil here, so instead of
    // returning 20 here, 0 is always returned. So
    // we instead rely on having collectionView take
    // up whole view
//    let statusBarFrameHeight = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 20
//    let navBarHeight = self.navigationController?.navigationBar.frame.size.height ?? 0
//    momentsCollectionViewController.collectionView.frame = CGRect(
//      x: 0,
//      y: statusBarFrameHeight + navBarHeight,
//      width: self.view.frame.width,
//      height: self.view.frame.size.height - statusBarFrameHeight - navBarHeight)
    momentsCollectionViewController.collectionView.frame = self.view.frame
    // TODO: Figure out why you need to add a child vc prior to adding subview and moving to parent
    self.addChild(momentsCollectionViewController)
    self.view.addSubview(momentsCollectionViewController.collectionView)
    self.didMove(toParent: momentsCollectionViewController)
  }
  
  // HomeViewController
  func setUpNavBar() {
    // https://developer.apple.com/documentation/uikit/uinavigationcontroller/customizing_your_app_s_navigation_bar
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = Configuration().navBarColor
    appearance.titleTextAttributes = [.foregroundColor: UIColor.white]

    self.navigationController?.navigationBar.standardAppearance = appearance;
    self.navigationController?.navigationBar.scrollEdgeAppearance = self.navigationController?.navigationBar.standardAppearance
    
    self.navigationItem.title = "Warm and fuzzies"
  }
  
  
  func setUpComposeButton() {
    
  }
  
  func setUpCollectionLayout() -> UICollectionViewLayout {
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                         heightDimension: .fractionalHeight(1.0))
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    item.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                           heightDimension: .fractionalWidth(0.5))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
    let spacing = CGFloat(16)
    group.interItemSpacing = .fixed(spacing)

    let section = NSCollectionLayoutSection(group: group)

    let layout = UICollectionViewCompositionalLayout(section: section)
    return layout

  }
  
  // CollectionView -- Moments
  func generateLayout() -> UICollectionViewLayout {
    //1 Create per photo item size
    let itemSize = NSCollectionLayoutSize(
      widthDimension: .fractionalWidth(1.0),
      heightDimension: .fractionalHeight(1.0))
    let fullPhotoItem = NSCollectionLayoutItem(layoutSize: itemSize)
    fullPhotoItem.contentInsets = NSDirectionalEdgeInsets(
      top: 4,
      leading: 4,
      bottom: 4,
      trailing: 4)
    //2 Create group of photos and define two columns layout
    let groupSize = NSCollectionLayoutSize(
      widthDimension: .fractionalWidth(0.04),
      heightDimension: .fractionalWidth(1/3))
    let group = NSCollectionLayoutGroup.horizontal(
      layoutSize: groupSize,
      subitem: fullPhotoItem,
      count: 2)
    let spacing = CGFloat(10)
    group.interItemSpacing = .fixed(spacing)

    //3
    let section = NSCollectionLayoutSection(group: group)
    let layout = UICollectionViewCompositionalLayout(section: section)
    return layout
  }
  
  // ComposeView
  // Update collection view with data + cell
  // have button that views all data
  
}


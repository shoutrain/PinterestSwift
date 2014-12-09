//
//  CHTCollectionViewDelegateWaterfallLayout.swift
//  PinterestSwift
//

import Foundation
import UIKit

@objc protocol CHTCollectionViewDelegateWaterfallLayout: UICollectionViewDelegate {
    
    func collectionView(collectionView: UICollectionView,layout collectionViewLayout:
        UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    
    optional func colletionView(collectionView: UICollectionView, layout collectionViewLayout:
        UICollectionViewLayout,
        heightForHeaderInSection section: NSInteger) -> CGFloat
    
    optional func colletionView(collectionView: UICollectionView, layout collectionViewLayout:
        UICollectionViewLayout,
        heightForFooterInSection section: NSInteger) -> CGFloat
    
    optional func colletionView(collectionView: UICollectionView, layout collectionViewLayout:
        UICollectionViewLayout,
        insetForSectionAtIndex section: NSInteger) -> UIEdgeInsets
    
    optional func colletionView(collectionView: UICollectionView, layout collectionViewLayout:
        UICollectionViewLayout,
        minimumInteritemSpacingForSectionAtIndex section: NSInteger) -> CGFloat
}
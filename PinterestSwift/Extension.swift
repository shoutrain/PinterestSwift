//
//  UIView+Utils.swift
//  PinterestSwift
//

import Foundation
import UIKit

extension UIView {
    func origin(point: CGPoint) {
        frame.origin.x = point.x
        frame.origin.y = point.y
    }
}

var kIndexPathPointer = "kIndexPathPointer"

extension UICollectionView {
    var currentIndexPath: NSIndexPath {
        get {
            return objc_getAssociatedObject(self, &kIndexPathPointer) as NSIndexPath
        }
        set {
            objc_setAssociatedObject(self, &kIndexPathPointer, newValue, objc_AssociationPolicy(OBJC_ASSOCIATION_RETAIN_NONATOMIC))
        }
    }
    
    func setToIndexPath(indexPath: NSIndexPath) {
        objc_setAssociatedObject(self, &kIndexPathPointer, indexPath, objc_AssociationPolicy(OBJC_ASSOCIATION_RETAIN_NONATOMIC))
    }
    
    func toIndexPath() -> NSIndexPath {
        let index = self.contentOffset.x / self.frame.size.width
        
        if index > 0 {
            return NSIndexPath(forRow: Int(index), inSection: 0)
        } else if let indexPath = objc_getAssociatedObject(self, &kIndexPathPointer) as NSIndexPath? {
            return indexPath
        } else {
            return NSIndexPath(forRow: 0, inSection: 0)
        }
    }
    
    func fromPageIndexPath() -> NSIndexPath {
        let index : Int = Int(self.contentOffset.x / self.frame.size.width)
        
        return NSIndexPath(forRow: index, inSection: 0)
    }
}
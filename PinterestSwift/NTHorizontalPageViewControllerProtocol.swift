//
//  NTHorizontalPageViewControllerProtocol.swift
//  PinterestSwift
//

import Foundation
import UIKit

@objc protocol NTHorizontalPageViewControllerProtocol: NTTransitionProtocol {
    func pageViewCellScrollViewContentOffset() -> CGPoint
}
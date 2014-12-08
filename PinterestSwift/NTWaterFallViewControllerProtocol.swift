//
//  NTWaterFallViewControllerProtocol.swift
//  PinterestSwift
//

import Foundation

@objc protocol NTWaterFallViewControllerProtocol: NTTransitionProtocol {
    func viewWillAppearWithPageIndex(pageIndex : NSInteger)
}
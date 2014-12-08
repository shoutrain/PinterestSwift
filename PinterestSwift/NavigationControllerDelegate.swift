//
//  NavigationControllerDelegate.swift
//  PinterestSwift
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    func navigationController(navigationController: UINavigationController!,
        animationControllerForOperation operation: UINavigationControllerOperation,
        fromViewController fromVC: UIViewController!,
        toViewController toVC: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
            let transition = NTTransition()
            
            transition.presenting = (operation == .Pop)
            
            return transition
    }
}
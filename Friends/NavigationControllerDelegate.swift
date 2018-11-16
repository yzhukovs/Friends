//
//  NavigationControllerDelegate.swift
//  Friends
//
//  Created by Yvette Zhukovsky on 11/15/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate  {
    
    
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        guard let toVC = toVC as? DetailViewController else { return nil }
        
        toVC.loadViewIfNeeded()
        
        animator.fromImageView = sourceCell.imageVIew
        animator.fromNameLabel = sourceCell.label
        animator.toImageView = toVC.imageView
        animator.toNameLabel = toVC.labelName
        
        
        return animator
    }
    
    
    
    // let animator = ImageTransitionAnimator()
    
    
    
    
    let animator = ImageTransitionAnimator()
    var sourceCell: FriendsTableViewCell!
}

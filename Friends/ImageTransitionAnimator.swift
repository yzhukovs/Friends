//
//  ImageTransitionAnimator.swift
//  Friends
//
//  Created by Yvette Zhukovsky on 11/15/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class ImageTransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        
       guard let toVC = transitionContext.viewController(forKey: .to) as? DetailViewController,
        
    let toView = transitionContext.view(forKey: .to) else { return }
        
        
        let containerView = transitionContext.containerView
        
       let toViewFinalFrame = transitionContext.finalFrame(for: toVC)
        containerView.addSubview(toView)
        toView.frame = toViewFinalFrame
        toView.alpha = 0.0
        
        fromNameLabel.alpha = 0.0
        fromImageView.alpha = 0.0
        toNameLabel.alpha = 0.0
        toImageView.alpha = 00
        
        let labelInitialFrame = containerView.convert(fromNameLabel.bounds, from: fromNameLabel)
        let animatedLabel = UILabel(frame: labelInitialFrame)
        animatedLabel.text = fromNameLabel.text
        animatedLabel.font = fromNameLabel.font
        containerView.addSubview(animatedLabel)
        
        
        let imageInitialFrame = containerView.convert(fromImageView.bounds, from: fromImageView)
        let animatedImageView = UIImageView(frame: imageInitialFrame)
        animatedImageView.image = fromImageView.image
        animatedImageView.contentMode = fromImageView.contentMode
        containerView.addSubview(animatedImageView)
        
        let duration = transitionDuration(using: transitionContext)
        toView.layoutIfNeeded()
        UIView.animate(withDuration: duration, animations: {
            animatedLabel.frame = containerView.convert(self.toNameLabel.bounds, from: self.toNameLabel)
            animatedLabel.frame = containerView.convert(self.toImageView.bounds, from: self.toImageView)
            toView.alpha = 1.0
            
        }) {(success) in
        
        self.fromNameLabel.alpha = 1.0
        self.fromImageView.alpha = 1.0
        self.toImageView.alpha = 1.0
        self.toNameLabel.alpha = 1.0
            
        animatedLabel.removeFromSuperview()
        animatedImageView.removeFromSuperview()
            
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        
    }
    
    }
    
    
    var fromNameLabel: UILabel!
    var fromImageView: UIImageView!
    var toNameLabel: UILabel!
    var toImageView: UIImageView!
    
    
    
    
}


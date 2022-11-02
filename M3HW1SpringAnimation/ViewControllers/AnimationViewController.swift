//
//  AnimationViewController.swift
//  M3HW1SpringAnimation
//
//  Created by Юрий Губин on 02.11.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBAction func runAnimation() {
        let animation = Animation.getAnimation()
        
        springView.animation = animation.animation
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        
        springView.animate()
    
        animationLabel.text = "Animation: \(animation.animation)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f",animation.duration))"
        delayLabel.text = "Delay: \(animation.delay)"
    }
}
    
    



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
    
    @IBOutlet var runButton: SpringButton!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }
    
    @IBAction func runAnimation() {
        
        springView.animation = animation.animation
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        
        springView.animate()
    
        setupLabels()
        animation = Animation.getAnimation()
        runButton.setTitle("Run " + animation.animation, for: .normal)
    }
    
    private func setupLabels() {
        animationLabel.text = "Animation: \(animation.animation)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "Delay: \(animation.delay)"
    }
}
    
    



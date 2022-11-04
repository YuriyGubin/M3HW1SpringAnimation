//
//  AnimationViewController.swift
//  M3HW1SpringAnimation
//
//  Created by Юрий Губин on 02.11.2022.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
   
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }
    
    @IBAction func runAnimation() {
        
        springView.animation = animation.animationName
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        
        springView.animate()
    
        setupLabels()
        animation = Animation.getAnimation()
        runButton.setTitle("Run " + animation.animationName, for: .normal)
    }
    
    private func setupLabels() {
        descriptionLabel.text = animation.description
    }
}
    
    



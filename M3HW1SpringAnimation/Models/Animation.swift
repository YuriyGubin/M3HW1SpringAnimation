//
//  Animation.swift
//  M3HW1SpringAnimation
//
//  Created by Юрий Губин on 02.11.2022.
//


struct Animation {
    let animation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let shared = DataStore.shared
        
        let randomAnimation = Int.random(in: 0..<shared.animations.count)
        let randomCurve = Int.random(in: 0..<shared.curves.count)
        
        let minDuration = shared.animations[randomAnimation].1
        let maxDuration = shared.animations[randomAnimation].2
        
        let animation = Animation(
            animation: shared.animations[randomAnimation].0,
            curve: shared.curves[randomCurve],
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: minDuration...maxDuration),
            delay: 0.3
        )
        
        return animation
    }
}

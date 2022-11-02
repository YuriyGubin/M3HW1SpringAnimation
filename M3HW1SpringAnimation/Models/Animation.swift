//
//  Animation.swift
//  M3HW1SpringAnimation
//
//  Created by Юрий Губин on 02.11.2022.
//


struct Animation {
    let animationName: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let shared = DataStore.shared
        
        let animation = Animation(
            animationName: shared.animations.randomElement() ?? "",
            curve: shared.curves.randomElement() ?? "",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 0.7...1.2),
            delay: 0.3
        )
        
        return animation
    }
}

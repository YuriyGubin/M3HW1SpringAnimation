//
//  DataStore.swift
//  M3HW1SpringAnimation
//
//  Created by Юрий Губин on 02.11.2022.
//

class DataStore {
    
    static let shared = DataStore()
    
    //Tuple include name of animation, min and max value for duration
    let animations = [
        ("pop", 0.8, 1.2),
        ("slideLeft", 1.0, 1.6),
        ("slideRight", 0.5, 0.8),
        ("slideDown", 0.5, 0.8),
        ("slideUp", 0.5, 0.8),
        ("squeezeLeft", 0.5, 0.8),
        ("squeezeRight", 0.5, 0.8),
        ("squeezeDown", 0.5, 0.8),
        ("squeezeUp", 0.5, 0.8),
        ("fadeIn", 0.5, 0.8),
        ("fadeOut", 0.5, 0.8),
        ("fadeOutIn", 0.5, 0.8),
        ("fadeInLeft", 0.5, 0.8),
        ("fadeInRight", 0.5, 0.8),
        ("fadeInDown", 0.5, 0.8),
        ("fadeInUp", 0.5, 0.8),
        ("zoomIn", 0.5, 0.8),
        ("zoomOut", 0.5, 0.8),
        ("fall", 0.5, 0.8),
        ("shake", 0.5, 0.8),
        ("flipX", 0.5, 0.8),
        ("flipY", 0.5, 0.8),
        ("morph", 0.5, 0.8),
        ("squeeze", 0.5, 0.8),
        ("flash", 0.5, 0.8),
        ("wobble", 0.5, 0.8),
        ("swing", 0.5, 0.8)
    ]
    
    let curves = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad",
        "easeInOutQuad",
        "easeInCubic",
        "easeOutCubic",
        "easeInOutCubic",
        "easeInQuart",
        "easeOutQuart",
        "easeInOutQuart",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack"
    ]
    
    private init() {}
}

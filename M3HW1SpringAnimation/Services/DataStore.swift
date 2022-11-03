//
//  DataStore.swift
//  M3HW1SpringAnimation
//
//  Created by Юрий Губин on 02.11.2022.
//

import SpringAnimation
class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    
    let curves = AnimationPreset.allCases
    
    private init() {}
}

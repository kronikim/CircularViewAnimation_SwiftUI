//
//  DrawCircularShape.swift
//  CircularViewAnimation_SwiftUI
//
//  Created by deniz karahan on 5.10.2022.
//

import Foundation
import SwiftUI

struct DrawCircularShape : Shape {
    var percent : Double
    var startAngle : Double
    
    typealias AnimatableData = Double
     var animatableData: Double {
         get {
             return percent
         }
         
         set {
             percent = newValue
         }
     }
    
    init(percent: Double=100, startAngle: Double = -90){
        self.percent = percent
        self.startAngle = startAngle
    }
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.width/2 , y: rect.height/2)
        let radius = min(rect.width,rect.height) / 2
        let endAngle = Self.percentToAngle(percent: percent, startAngle: startAngle)
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngle), clockwise: false)
        }
    }
    
    static func percentToAngle(percent: Double, startAngle:Double) -> Double {
        return (percent * 3.6 + startAngle)
    }
    
}

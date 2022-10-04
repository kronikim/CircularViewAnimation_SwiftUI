//
//  CircularView.swift
//  CircularViewAnimation_SwiftUI
//
//  Created by deniz karahan on 5.10.2022.
//

import SwiftUI
import Foundation

struct CircularView: View {
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader { geometry in
          ZStack {
              DrawCircularShape()
            .stroke(style: StrokeStyle(lineWidth: lineWidth))
            .fill(backgroundColor)
              DrawCircularShape(percent: percentage)
            .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
            .fill(foregroundColor)
            }
          .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth/2)
        }
    }
}

struct CircularView_Previews: PreviewProvider {
    static var previews: some View {
        CircularView(lineWidth: 10, backgroundColor: .red, foregroundColor: .blue, percentage: 40)
    }
}

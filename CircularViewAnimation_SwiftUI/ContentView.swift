//
//  ContentView.swift
//  CircularViewAnimation_SwiftUI
//
//  Created by deniz karahan on 5.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0
    
    var body: some View {
        ZStack{
            CircularView(lineWidth: 40,
                         backgroundColor: Color.blue.opacity(0.2),
                         foregroundColor: Color.blue,
                         percentage: firstCirclePercentage
            )
            .frame(width: 350, height: 350)
            .onTapGesture {
                self.firstCirclePercentage == 0 ? (self.firstCirclePercentage = 50) : (self.firstCirclePercentage = 0)
            }
              
            CircularView(lineWidth: 40,
                         backgroundColor: Color.red.opacity(0.2),
                         foregroundColor: Color.red,
                         percentage: secondCirclePercentage
            )
            .frame(width: 250, height: 250)
            .onTapGesture {
                self.secondCirclePercentage == 0 ? (self.secondCirclePercentage = 75) : (self.secondCirclePercentage = 0)
            }
              
            CircularView(lineWidth: 40,
                         backgroundColor: Color.green.opacity(0.2),
                         foregroundColor: Color.green,
                         percentage: thirdCirclePercentage
            )
            .frame(width: 150, height: 150)
            .onTapGesture {
                self.thirdCirclePercentage == 0 ? ( self.thirdCirclePercentage = 100 ) : (self.thirdCirclePercentage = 0)
            }
              
      }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

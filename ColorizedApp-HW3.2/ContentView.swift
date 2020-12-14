//
//  ContentView.swift
//  ColorizedApp-HW3.2
//
//  Created by Ivanov Sergey on 13.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var red: Double = Double.random(in: 0...255)
    @State private var green: Double = Double.random(in: 0...255)
    @State private var blue: Double = Double.random(in: 0...255)
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
            
            VStack {
                ColorView(red: red / 255, green: green / 255, blue: blue / 255)
                
                SliderWithValues(value: $red)
                SliderWithValues(value: $green)
                SliderWithValues(value: $blue)
                
                Spacer()
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

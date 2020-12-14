//
//  ColorView.swift
//  ColorizedApp-HW3.2
//
//  Created by Ivanov Sergey on 14.12.2020.
//

import SwiftUI

struct ColorView: View {
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        Color(red: red, green: green, blue: blue)
            .frame( height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .circular))
            .overlay(RoundedRectangle(cornerRadius: 20, style: .circular)
                        .stroke(Color.white, lineWidth: 4))
            .padding(30)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 0.8, green: 0.5, blue: 0.5)
    }
}

//
//  ColorView.swift
//  ColorizedApp-HW3.2
//
//  Created by Ivanov Sergey on 14.12.2020.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame( height: 120)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.white, lineWidth: 4))
            .padding(30)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 0.8, green: 0.5, blue: 0.5)
    }
}

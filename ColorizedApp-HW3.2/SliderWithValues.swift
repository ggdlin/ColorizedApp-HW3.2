//
//  SliderWithValues.swift
//  ColorizedApp-HW3.2
//
//  Created by Ivanov Sergey on 13.12.2020.
//

import SwiftUI

struct SliderWithValues: View {
    @Binding var value: Double
    @State private var showAlert = false
    private let numberFormatter = NumberFormatter()
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .frame(width: 35)
            
            Slider(value: $value, in: 0...255, step: 1)
            
            TextField("", value: $value, formatter: numberFormatter, onCommit: {
                
                if !(0.0...255.0).contains(value) {
                    value = 0
                    showAlert = true
                }
            })
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Wrong Format"),
                      message: Text("Please enter number from 0 to 255"))
            })
            .disableAutocorrection(true)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 50)
        }
        .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
    }
}

struct SliderWithValues_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            
            SliderWithValues(value: Binding.constant(50))
        }
        
    }
}

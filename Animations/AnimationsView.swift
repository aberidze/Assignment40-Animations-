//
//  AnimationsView.swift
//  Animations
//
//  Created by Macbook Air 13 on 25.12.23.
//

import SwiftUI

// ამ მსუყე დავალებებს შეჩვეული ეს რაღაც მეპატარავა და იმედია სწორად არის გაკეთებული :დ

struct AnimationsView: View {
    
    // MARK: - Properties
    @State var animated = false
    
    
    // MARK: - body
    var body: some View {
        
        Text("TBC IT Academy")
            .font(.system(size: animated ? 40 : 22))
            .offset(y: animated ? -60: 0)
            .foregroundStyle(animated ? .red : .blue)
        
            .onTapGesture {
                withAnimation(
                    .easeIn(duration: 2)
                    .repeatForever(autoreverses: true)) {
                        
                    animated.toggle()
                }
            }
    }
}


// MARK: - Preview
struct AnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsView()
    }
}

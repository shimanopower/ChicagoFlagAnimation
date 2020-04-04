//
//  ContentView.swift
//  ChicagoFlagAnimation
//
//  Created by shimanopower on 4/2/20.
//  Copyright © 2020 shimanopower. All rights reserved.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct ContentView: View {
    @State private var degrees: Double = 0
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Color.offWhite
                
            VStack {
                Button(action: {
                    self.degrees += 1080
                }, label: {
                    ChicagoFlag()
                })
            }
            
            HStack {
                ForEach((1...4), id: \.self) {_ in
                    ChicagoStar()
                }
                .scaleEffect(3)
                .padding(.horizontal, 20)
                
                }
            }.edgesIgnoringSafeArea(.all)
    }
}

struct ChicagoStar: View {
    var body: some View {
        Image(systemName: "staroflife.fill")
            .foregroundColor(Color.red)
    }
}

struct ChicagoFlag: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.offWhite)
                .frame(width: 720, height: 480)
                .scaleEffect(0.5)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            VStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 720, height: 80)
                Rectangle()
                    .fill(Color.offWhite)
                    .frame(width: 720, height: 160)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 720, height: 80)
            }.scaleEffect(0.5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  UV
//
//  Created by Sam Green on 29/3/2024.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Current UV Index: 6.0")
                .font(.title)
                .padding()

            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.green, .yellow, .red]), startPoint: .leading, endPoint: .trailing))
                .frame(height: 60)
                .overlay(
                    HStack {
                        ForEach(0...11, id: \.self) { num in
                            Spacer()
                            Text("\(num)")
                                .font(.caption)
                                .fontWeight(.heavy)
                            Spacer()
                        }
                    }
                )
            
            Spacer()
        }
        .padding()
    }
}


#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Skillbox-SwiftUI-M1
//
//  Created by Максим Морозов on 05.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var alpha = 0.0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("Roman")
                .opacity(alpha)
                .onAppear {
                    let animation = Animation.easeInOut(duration: 3)
                    withAnimation(animation) {
                        alpha = 1
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

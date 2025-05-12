//
//  ContentView.swift
//  SmartBrewerDemoApp
//

import SwiftUI

struct ContentView: View {
    @State private var isBrewing = false
    @State private var showAlert = false

    var body: some View {
        VStack(spacing: 20) {
            if isBrewing {
                Text("Brewing...").accessibilityIdentifier("brewingLabel")
            }

            Button(isBrewing ? "Stop Brew" : "Start Brew") {
                isBrewing.toggle()
                if isBrewing {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        showAlert = true
                        isBrewing = false
                    }
                }
            }
            .accessibilityIdentifier("brewButton")
            .padding()
            .background(Color.brown)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Coffee is ready!"))
        }
    }
}

#Preview {
    ContentView()
}


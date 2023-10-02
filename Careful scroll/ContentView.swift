//
//  ContentView.swift
//  Careful scroll
//
//  Created by Nikolay Volnikov on 01.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScrollView {
                VStack {
                    ForEach(1..<50) { item in
                        Text("row \(item)")
                            .font(.system(size: 22))
                            .frame(width: 350, alignment: .leading)
                            .padding()
                    }
                }
            }
            .safeAreaInset(edge: .bottom) {
                Rectangle()
                    .foregroundStyle(.red.opacity(0.6))
                    .frame(height: 50)
            }
            .tabItem {
                Label("First", systemImage: "star.fill")
            }
        }
    }
}

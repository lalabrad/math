//
//  ContentView.swift
//  math
//
//  Created by Yao Wang on 5/2/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
                TypeMath().tabItem { Image(systemName: "chart.bar").tag(1) }
                PlusAndMinus()
                        .tabItem { Image(systemName: "bitcoinsign.circle") }
                        .tag(2)
                    
                }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

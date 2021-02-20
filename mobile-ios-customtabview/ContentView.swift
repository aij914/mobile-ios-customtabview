//
//  ContentView.swift
//  mobile-ios-customtabview
//
//  Created by Alvin Ai on 2/19/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
//        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    @State var selectedIndex = 0
    
    var body: some View {
        VStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    Text("First")
                default:
                    Text("Remaining tabs")
                }
            }
            
            Spacer()
            
            HStack {
                Text("First tab button")
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

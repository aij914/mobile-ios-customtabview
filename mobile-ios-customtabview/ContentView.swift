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
    let tabBarImageNames = ["person", "gear", "plus.app.fill", "pencil", "lasso"]
    
    var body: some View {
        VStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    NavigationView {
                        Text("First")
                            .navigationTitle("First Tab")
                    }
                
                case 1:
                    ScrollView {
                        Text("Scroll View")
                    }
                default:
                    Text("Remaining tabs")
                }
            }
            
            Spacer()
            
            HStack {
                ForEach(0..<5) { num in
                    
                    Button(action: {
                        selectedIndex = num
                    }, label: {
                        Spacer()

                        if num == 2 {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 44, weight: .bold))
                                .foregroundColor(Color(.red))
                        } else {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.black) : Color(white: 0.8))
                        }
                        
                        Spacer()
                        
                    })
                }
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

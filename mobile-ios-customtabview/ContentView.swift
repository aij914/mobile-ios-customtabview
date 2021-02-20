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
    @State var shouldShowModal = false
    
    let tabBarImageNames = ["person", "gear", "plus.app.fill", "pencil", "lasso"]
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                
                Spacer()
                    .fullScreenCover(isPresented: $shouldShowModal, content: {
                        Button(action: {
                            shouldShowModal.toggle()
                        }, label: {
                            Text("Full Screen Cover")
                        })
                    })
                
                switch selectedIndex {
                case 0:
                    NavigationView {
                        ScrollView {
                            ForEach(0..<100) { num in
                                Text("\(num)")
                            }
                        }.navigationTitle("First Tab")
                    }
                
                case 1:
                    ScrollView {
                        Text("Scroll View")
                    }
                default:
                    NavigationView {
                        Text("Remaining tabs")
                    }
                }
            }
                        
            Divider()
                .padding(.bottom, 8)
            
            HStack {
                ForEach(0..<5) { num in
                    
                    Button(action: {
                        
                        if num == 2 {
                            shouldShowModal.toggle()
                            return
                        }
                        
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

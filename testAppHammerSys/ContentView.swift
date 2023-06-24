//
//  ContentView.swift
//  testAppHammerSys
//
//  Created by Борух Соколов on 24.06.2023.
//

import SwiftUI

struct ContentView: View {
    
  
    
    var body: some View {
        
        TabView{
            
            HomeScrean()
                .tabItem {
                    VStack{
                        Image("menu")
                       
                    }
                }
            
            VStack{
                Text("w")
            }
            .tabItem {
                Image("kobtakty")
                }
            VStack{
                Text("w")
            }
            .tabItem {
                Image("profile")
                }
            VStack{
                Text("w")
            }
            .tabItem {
                Image("trash")
                }
            
        }
        
        
        
    }
    
    
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

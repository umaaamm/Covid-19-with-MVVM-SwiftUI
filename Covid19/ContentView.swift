//
//  ContentView.swift
//  Covid19
//
//  Created by Kurniawan Gigih Lutfi Umam on 22/03/20.
//  Copyright © 2020 Kurniawan Gigih Lutfi Umam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//    init() {
//        UITabBar.appearance().barTintColor = #colorLiteral(red: 0.03935233504, green: 0.03935233504, blue: 0.03935233504, alpha: 1)
//    }
//    
    
    var body: some View {
        ZStack{
//            Color("background").edgesIgnoringSafeArea(.all)
            Home()
//            TabView{
//                Home().tabItem{
//                    Image(systemName: "chart.bar.fill")
//                    Text("Home")
//                }
//                News().tabItem{
//                    Image(systemName: "archivxebox.fill")
//                    Text("Information")
//                }
//
//                Link().tabItem{
//                    Image(systemName: "link")
//                    Text("Links")
//                }
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


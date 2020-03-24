//
//  Home.swift
//  Covid19
//
//  Created by Kurniawan Gigih Lutfi Umam on 22/03/20.
//  Copyright © 2020 Kurniawan Gigih Lutfi Umam. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject var homeViewModel : HomeViewModel = HomeViewModel()
    
    var body: some View {
        ScrollView{
            VStack {
                if homeViewModel.summary != nil {
                    StatisticView(summary: self.homeViewModel.summary!)
                }
                
                RequirementView()
            }
            .padding([.trailing, .leading], 20)
            
        }
        .background(Color("warnaku"))
        .onAppear(perform: {
            self.homeViewModel.showSummary()
        })
    }
}


struct Statistics_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Home()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE")
            
            Home()
                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
                .previewDisplayName("iPhone XS Max")
        }
    }
}

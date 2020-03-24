//
//  StatisticNew.swift
//  Covid19
//
//  Created by Kurniawan Gigih Lutfi Umam on 22/03/20.
//  Copyright © 2020 Kurniawan Gigih Lutfi Umam. All rights reserved.
//

import SwiftUI
//var weather: Weather = Weather(id: 1, day: "Monday", weatherIcon:  "sun.max", currentTemp:  "40", minTemp: "25", maxTemp: "69", color: "mainCard")
struct StatisticNew: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("").fontWeight(.bold)
                .foregroundColor(Color.white)
            VStack(spacing: 2) {
                Text("345").font(.largeTitle).foregroundColor(Color.white).fontWeight(.black)
                HStack {
                    Text("Confirmed").font(.headline).foregroundColor(Color.white)
                }
            }

            ZStack {
                Image("Gunung")
                    .resizable()
                    .scaledToFill()
                    .offset(CGSize(width: 0, height: 0))
            }
        }
        .frame(width: 200, height: 300)
        .background(Color("textRecover"))
        .cornerRadius(30)
        .shadow(color: Color("textRecover").opacity(0.3), radius: 10, x: 0, y: 8)
        
    }
}

struct StatisticNew_Previews: PreviewProvider {
    static var previews: some View {
        StatisticNew()
    }
}

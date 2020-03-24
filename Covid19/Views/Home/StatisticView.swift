//
//  StatisticView.swift
//  Covid19
//
//  Created by Kurniawan Gigih Lutfi Umam on 22/03/20.
//  Copyright © 2020 Kurniawan Gigih Lutfi Umam. All rights reserved.
//

import SwiftUI

struct StatisticView: View {
    let summary : Summary
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            VStack(alignment: .leading, spacing: 8){
                Text("Covid-19 Indonesia").font(.title).fontWeight(.bold).foregroundColor(Color.black)
                HStack{
                    Text("Last updated:").foregroundColor(Color("tile"))
                    Text(summary.metadata.lastUpdatedAt.formatDate()).foregroundColor(Color("tile")).fontWeight(.medium)
                }
            }.padding(.top, 20)
            
            
            HStack{
                HStack{
                    VStack(spacing: 12) {
                        Text("").fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(spacing: 2) {
                           
//                            Image(systemName: "person")
//                            .resizable()
//                            .foregroundColor(Color.white)
//                                .frame(width: 30, height: 30).opacity(0.50)
//
                            Text("\(self.summary.confirmed.value)").font(.largeTitle).foregroundColor(Color.white).fontWeight(.black)
                            HStack {
                                Text("Confirmed").font(.headline).foregroundColor(Color.white)
                            }
                        }
                        
                        ZStack {
                            Image("Confirm")
                                .resizable()
                                .scaledToFill()
                                .offset(CGSize(width: 0, height: 0))
                        }
                    }
                    .frame(width: 150, height: 200)
                    .background(Color("textConfirm"))
                    .cornerRadius(10)
                    .shadow(color: Color("textConfirm").opacity(0.3), radius: 10, x: 0, y: 8)
                    
                    
                }
                
                Spacer()
                
                HStack{
                    VStack(spacing: 12) {
                        Text("").fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(spacing: 2) {
                            Text("\(self.summary.activeCare.value)").font(.largeTitle).foregroundColor(Color.white).fontWeight(.black)
                            HStack {
                                Text("Treated").font(.headline).foregroundColor(Color.white)
                            }
                        }
                        
                        ZStack {
                            Image("Obat")
                                .resizable()
                                .scaledToFill()
                                .offset(CGSize(width: 0, height: 0))
                        }
                    }
                    .frame(width: 150, height: 200)
                    .background(Color("textInCare"))
                    .cornerRadius(10)
                    .shadow(color: Color("textInCare").opacity(0.3), radius: 10, x: 0, y: 8)
                    
                }
                
            }
            
            HStack{
                
                HStack{
                    VStack(spacing: 12) {
                        Text("").fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(spacing: 2) {
                            Text("\(self.summary.recovered.value)").font(.largeTitle).foregroundColor(Color.white).fontWeight(.black)
                            HStack {
                                Text("Recovered").font(.headline).foregroundColor(Color.white)
                            }
                        }
                        
                        ZStack {
                            Image("Obati")
                                .resizable()
                                .scaledToFill()
                                .offset(CGSize(width: 0, height: 0))
                        }
                    }
                    .frame(width: 150, height: 200)
                    .background(Color("textRecover"))
                    .cornerRadius(10)
                    .shadow(color: Color("textRecover").opacity(0.3), radius: 10, x: 0, y: 8)
                    
                    
                }
                
                Spacer()
                HStack{
                    VStack(spacing: 12) {
                        Text("").fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(spacing: 2) {
                            Text("\(self.summary.deaths.value)").font(.largeTitle).foregroundColor(Color.white).fontWeight(.black)
                            HStack {
                                Text("Death").font(.headline).foregroundColor(Color.white)
                            }
                        }
                        
                        ZStack {
                            Image("Die")
                                .resizable()
                                .scaledToFill()
                                .offset(CGSize(width: 0, height: 0))
                        }
                    }
                    .frame(width: 150, height: 200)
                    .background(Color("textDied"))
                    .cornerRadius(10)
                    .shadow(color: Color("textDied").opacity(0.3), radius: 10, x: 0, y: 8)
                    
                    
                }
            }
            
//            HStack{
//                Spacer()
//                Button(action: {}){
//                    Text("Show Daily Statistics")
//                }.foregroundColor(Color.white).font(.headline)
//                    .padding()
//                    .border(Color("tile"), width: 3)
//                Spacer()
//            }
        }
    }
}

extension String {
    func formatDate() -> String {
        // ISO8601
        let isoDate = self
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from: isoDate)
        
        if let formattedDate = date {
            let resultDateFormatter = DateFormatter()
            resultDateFormatter.dateFormat = "MMMM dd, yyyy HH:mm:ss"
            return resultDateFormatter.string(from: formattedDate)
        } else {
            return self
        }
        
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(summary: Summary.defaultValue).background(Color("background"))
    }
}

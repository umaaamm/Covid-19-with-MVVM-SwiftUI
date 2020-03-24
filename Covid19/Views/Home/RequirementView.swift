//
//  requirement.swift
//  Covid19
//
//  Created by Kurniawan Gigih Lutfi Umam on 22/03/20.
//  Copyright © 2020 Kurniawan Gigih Lutfi Umam. All rights reserved.
//

import SwiftUI

struct RequirementView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack{
                Spacer()
            }
            Text("Requirements").font(.title).fontWeight(.bold).foregroundColor(Color("tile"))
            Text("Help you prevent viruses better").foregroundColor(Color("tile"))
            
            HStack(alignment: .center, spacing: 20){
                GeometryReader { geometry in
                    
                    VStack{
                        VStack{
                            Image("maskIcon")
                                .resizable()
                                .renderingMode(.original).frame(width: geometry.size.width * 0.7, height: geometry.size.width * 0.7)
                        }
                        .frame(width: geometry.size.width, height: geometry.size.width)
                        .background(Color("maskBg"))
                        .mask(Circle())
                        
                        Text("Mask").fontWeight(.semibold).foregroundColor(Color("tile"))
                    }
                }
                
                GeometryReader { geometry in
                    VStack{
                        VStack{
                            Image("glovesIcon")
                                .resizable()
                                .renderingMode(.original).frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                        }
                        .frame(width: geometry.size.width, height: geometry.size.width)
                        .background(Color("glovesBg"))
                        .mask(Circle())
                        
                        Text("Gloves").fontWeight(.semibold).foregroundColor(Color("tile"))
                    }
                }
                
                GeometryReader { geometry in
                    VStack{
                        VStack{
                            Image("soapIcon")
                                .resizable()
                                .renderingMode(.original).frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                        }
                        .frame(width: geometry.size.width, height: geometry.size.width)
                        .background(Color("soapBg"))
                        .mask(Circle())
                        
                        Text("Soap").fontWeight(.semibold).foregroundColor(Color("tile"))
                    }
                }
                
                GeometryReader { geometry in
                    VStack{
                        VStack{
                            Image("vitaminIcon")
                                .resizable()
                                .renderingMode(.original).frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                        }
                        .frame(width: geometry.size.width, height: geometry.size.width)
                        .background(Color("vitaminBg"))
                        .mask(Circle())
                        
                        Text("Vitamin").fontWeight(.semibold).foregroundColor(Color("tile"))
                    }
                }
            }.frame(height: 150)
            .padding(.top, 16)
        }
    }
}

struct RequirementView_Previews: PreviewProvider {
    static var previews: some View {
        RequirementView()
    }
}


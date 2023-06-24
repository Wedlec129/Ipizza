//
//  HomeScrean.swift
//  testAppHammerSys
//
//  Created by Борух Соколов on 24.06.2023.
//

import SwiftUI

struct HomeScrean: View {
    var categotys=["Пицца","Комбо","Десерты","Напитки"]
    @State private var selectIndex: Int = 0
    
    
    
    var body: some View {
        
        ZStack{
            Color("Bg")
                .ignoresSafeArea()
            VStack{
                
                //text
                HStack(){
                    Text("Москва")
                        .font(.title2)
                        .padding()
                    Image("Arrow1")
                    Spacer()
                }
                
                //banner
                ScrollView(.horizontal,showsIndicators: false){
                    
                    HStack(spacing: -10){
                        Image("baner1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300 ,height: 112 )
                            .shadow(color: Color(red: 0.75, green: 0.75, blue: 0.75).opacity(0.17), radius: 5, x: 0, y: 0)
                        
                        Image("baner2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300 ,height: 112 )
                            .shadow(color: Color(red: 0.75, green: 0.75, blue: 0.75).opacity(0.17), radius: 5, x: 0, y: 0)
                    }
                }
                
                //kategoty
                HStack{
                    
                    ForEach(0 ..< categotys.count,id: \.self) { i in
                        categoryView(text: categotys[i], isActive: i==selectIndex)
                        
                            .onTapGesture {
                                
                                selectIndex=i
                            }
                        
                    }
                    
                }
                .padding(.vertical)
                
                
                List{
                    
                    ForEach(0 ..< menu.count,id: \.self) { i in
                        cardMenuView( image: menu[i].0,
                                      namePizza: menu[i].1,
                                      aboutPizza: menu[i].2)
                        
                        
                    }
                    
                    
                }
                .listStyle(.inset)
                .cornerRadius(20)
                .ignoresSafeArea()
                
                
                
                
                
                
            }
            
            
        }
    }
    
    
}

struct HomeScrean_Previews: PreviewProvider {
    static var previews: some View {
        HomeScrean()
    }
}



struct categoryView: View {
    
    let text:String
    let isActive:Bool
    
    
    var body: some View {
        HStack{
            Text(text)
            
                .frame(width: 88, height: 32)
                .fontWeight(isActive ? .heavy : .regular)
                .foregroundColor(isActive ? Color("select1") :Color(red: 0.99, green: 0.23, blue: 0.41).opacity(0.4))
            
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke()
                        .foregroundColor(Color(red: 0.99, green: 0.23, blue: 0.41).opacity(0.5))
                )
            
                .background(isActive ? Color("select2") : Color("Bg"))
            
                .cornerRadius(20)
            
            
        }
        
    }
}

struct cardMenuView: View {
    let image:Image
    let namePizza:Text
    let aboutPizza:Text
    
    
    var body: some View {
        HStack{
            //Image("Pizza1")
            image
                .scaledToFit()
                .frame(width: 132,height: 132)
            
            
            Spacer()
            HStack{
                Spacer()
                VStack(alignment: .leading,spacing: 8){
                    //Text("Ветчина и грибы")
                    namePizza
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.13, green: 0.16, blue: 0.19))
                    //Text("Ветчина,шампиньоны, увеличинная порция моцареллы, томатный соус")
                    aboutPizza
                        .font(Font.custom("SF UI Display", size: 13))
                        .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.68))
                    
                    HStack{
                        Spacer()
                        Button(action: {}, label: {
                            Text("от 345 р")
                                .padding(.all,5)
                                .overlay(RoundedRectangle(cornerRadius: 6).stroke())
                                .foregroundColor(Color(red: 0.99, green: 0.23, blue: 0.41))
                            
                        })
                        
                    }
                }
            }
        }
    }
}

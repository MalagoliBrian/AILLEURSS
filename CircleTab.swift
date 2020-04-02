//
//  CircleTab.swift
//  AILLEURS
//
//  Created by helenepetitjean on 27/03/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//



import SwiftUI

struct CircleTabVew : View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack(spacing: 0){
            
            ZStack{
                
                if self.index == 0{
                    NavigationView{
                    
                    Localisation()
                    
                }
                }
                else if self.index == 1{
                    
                    Ideas()
                    Color.black.opacity(0.05)
                }
                else{
                    Favoris_List()
                    Color.black.opacity(0.05)
                }
            }
            
            CircleTab(index: self.$index)
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct CircleTabVew_Previews: PreviewProvider {
    static var previews: some View {
        CircleTabVew  ()
    }
}

struct CircleTab : View {
    
    @Binding var index : Int
    
    var body : some View{
        
        
        HStack {
            
            Button(action: {
                
                self.index = 0
                
            }) {
                
                VStack{
                    
                    if self.index != 0{
                        
                        Image(systemName: "map")
                            .resizable()
                            .frame(width: 25, height: 23)
                            .foregroundColor(Color.green)
                            .padding()
                            
                    }
                    else{
                        
                        Image(systemName: "map")
                            .resizable()
                            .frame(width: 25, height: 23)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .clipShape(Circle())
                    }
                }
                
                
            }
            
            Spacer(minLength: 15)
           
            Button(action: {
                
                self.index = 1
                
            }) {
                
                VStack{
                    
                    if self.index != 1{
                        
                        Image(systemName: "lightbulb")
                            .frame(width: 22, height: 24)
                            .foregroundColor(Color.yellow)
                            .padding()
                    }
                    else{
                        
                        Image(systemName: "lightbulb")
                            .frame(width: 22, height: 24)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.yellow)
                            .clipShape(Circle())
                       
                    }
                }
            }
            
            Spacer(minLength: 15)
            
            Button(action: {
                
                self.index = 2
                
            }) {
                
                VStack{
                    
                    if self.index != 2{
                        
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 24, height: 22)
                            .foregroundColor(Color.red)
                            .padding()
                    }
                    else{
                        
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 24, height: 22)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .clipShape(Circle())
                       
                    }
                }
            }
        }.padding(.vertical,-10)
        .padding(.horizontal, 25)
        .background(Color.white)
        .animation(.spring())
    }
}





//
//  Themes.swift
//  AILLEURS
//
//  Created by helenepetitjean on 25/03/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct Theme : Identifiable{
        var image  : String
        var title   : String
        var id      = UUID()
    }

    struct ThemeRow: View {
        var theme : Theme
        
        var body: some View {
            HStack{
                NavigationLink(destination: Activity_List()){
                    HStack {
                        ZStack{
                            Image(theme.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .padding(.vertical, 5.0)
                                .frame(height: 108.0, alignment: .center)
                                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                //.clipShape(Circle())
                    
                        Text(theme.title)
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            
                            }
            }
     
            }
        }
    }
}
    struct Theme_List: View {
        
        let themesList : [Theme] = [
            Theme(image: "F" , title: "Theme-1"),
            Theme(image: "G" , title: "Theme-2"),
            Theme(image: "H" , title: "Theme-3"),
            Theme(image: "I" , title: "Theme-4"),
            Theme(image: "J" , title: "Theme-5"),
            Theme(image: "K" , title: "Theme-6")
        ]
        
        
        var body: some View {
                List {
                    ForEach(themesList) {
                        oneTheme in
                        ThemeRow(theme: oneTheme)
                    }
                }.navigationBarTitle("Themes", displayMode: .inline)
            }
    }

    struct Theme_List_Previews: PreviewProvider {
        static var previews: some View {
            Theme_List()
        }
    }

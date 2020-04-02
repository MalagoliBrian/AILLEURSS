//
//  Localisation.swift
//  AILLEURS
//
//  Created by helenepetitjean on 25/03/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct Localisation: View {
    
    var body: some View {
      
        NavigationView {
            VStack{
        Text("Vivez des moments uniques avec des habitants locaux")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
    
                videoPlayer()

       HStack{
        HStack{
            TextField(/*@START_MENU_TOKEN@*/"Entrer une localisation"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                
        NavigationLink(destination: Theme_List() ){
            Image(systemName: "magnifyingglass")
                .padding()
            }
        }
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
            .cornerRadius(15)
        }.padding()
        NavigationLink(destination: Theme_List() ){
        VStack{
            Image("&")
                .resizable()
                .frame(width: 40.0, height: 40.0)
                .padding()
           
            Text("Montre moi les activites autour de moi")
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
            }
        }
            }.navigationBarTitle("Ailleurs", displayMode: .inline)
    }
        .padding(0.0)
       
    }

struct Localisation_Previews: PreviewProvider {
    static var previews: some View {
        Localisation()
    }
}
}


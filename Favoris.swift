//
//  Favoris.swift
//  AILLEURS
//
//  Created by helenepetitjean on 25/03/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct Favoris: Identifiable{
    var image   : String
    var title   : String
    var description : String
    var id      = UUID()
}

struct FavorisRow: View {
    var favoris : Favoris
    
    var body: some View {
        
        VStack{
        HStack{
            Image(favoris.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                //.padding(.vertical, 5.0)
                .frame(width: 90.0, height: 100.0, alignment: .center)
                .clipShape(Circle())
        }
            
        VStack(alignment: .center){
        Text(favoris.title).font(.title).fontWeight(.bold)
        Text(favoris.description).font(.body).foregroundColor(.gray)
            }
    }
}
}
struct Favoris_List: View {
    
    var favorisList : [Favoris] = [
        Favoris(image: "A", title: "Favoris-1", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet."),
        Favoris(image: "B", title: "Favoris-2", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet."),
        Favoris(image: "C", title: "Favoris-3", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet."),
        Favoris(image: "D", title: "Favoris-4", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet."),
        Favoris(image: "E", title: "Favoris-6", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet."),
        Favoris(image: "B", title: "Favoris-7", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.")
    ]
      
      var body: some View {
           List {
            ForEach(favorisList) {
                oneFavoris in
                FavorisRow(favoris: oneFavoris)
            }
                         }.navigationBarTitle("Favoris", displayMode: .inline )
      }
 }

struct Favoris_List_Previews: PreviewProvider {
       static var previews: some View {
        Favoris_List()
            .padding(.vertical, 50.0)
       }
   }
struct Favoris_Detail: View {
      var favoris : Favoris
      
      var body: some View {
         HStack {
            HStack{
                  Image(favoris.image)
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .padding(.vertical, 5.0)
                      .frame(width: 80.0, height: 100)
                     
         }
    
              VStack(alignment: .leading){
                  Text(favoris.title).font(.title).fontWeight(.bold)
                  Text(favoris.description).font(.body).foregroundColor(.gray)
                         }
           }
          .navigationBarTitle("\(favoris.title)")
      }

}



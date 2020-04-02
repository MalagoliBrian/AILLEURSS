//
//  Activity.swift
//  AILLEURS
//
//  Created by helenepetitjean on 25/03/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct Activity: Identifiable{
    var image   : String
    var title   : String
    var description : String
    var id      = UUID()
    var images : [String]
}

struct ActivityRow: View {
    var activity : Activity
    
    var body: some View {
        HStack{
        HStack{
            Image(activity.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.vertical, 5.0)
                .frame(width: 90.0, height: 100.0, alignment: .center)
                .clipShape(Circle())
        }
            
        VStack(alignment: .leading){
        Text(activity.title).font(.title).fontWeight(.bold)
        Text(activity.description).font(.body).foregroundColor(.gray)
            }
    }
}
}
struct Activity_List: View {
    
    var activitesList : [Activity] = [
        Activity(image: "A", title: "La pêche au Japon", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["A"]),
        Activity(image: "B", title: "Ballade sur les hauteurs", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["B"]),
        Activity(image: "C", title: "Escapade en tram-way", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["C"]),
        Activity(image: "D", title: "Le Tenor Mexicain", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["D"]),
        Activity(image: "E", title: "Plus belle plage du monde", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["E"]),
        Activity(image: "B", title: "Excursion en poney", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["F"]),
        Activity(image: "C", title: "Découverte de la ielle ville ", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["G"]),
        Activity(image: "D", title: "Le groupe Cafe Tacuba", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["H"]),
        Activity(image: "E", title: "L'île paradisiaque", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["I"]),
        Activity(image: "F", title: "Le fleuve Kinu-gawa", description: "Decription,Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", images: ["J"])
    ]
        
    
      
      var body: some View {
        
        List (activitesList){ activity in
                  NavigationLink(destination: ActivityDetail(activity: activity)){
                    ActivityRow(activity: activity)
                  }
              }
            .navigationBarTitle("Activités")
      }
 }

struct Activity_List_Previews: PreviewProvider {
       static var previews: some View {
           Activity_List()
       }
   }



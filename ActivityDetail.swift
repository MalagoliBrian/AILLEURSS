//
//  ActivityDetail.swift
//  AILLEURS
//
//  Created by helenepetitjean on 26/03/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

/*struct ActivityDetail: View {
      var activity: Activity
      
      var body: some View {
         HStack {
            HStack{
                  Image(activity.image)
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .padding(.vertical, 5.0)
                      .frame(width: 80.0, height: 100)
                      //.clipShape(Circle())
         }
    
              VStack(alignment: .leading){
                  Text(activity.title).font(.title).fontWeight(.bold)
                  Text(activity.description).font(.body).foregroundColor(.gray)
                         }
           }
          .navigationBarTitle("\(activity.title)")
      }
}*/

struct ActivityDetail: View {
    var activity: Activity
    
    @State private var suggestionPlus = false
    
    @State private var images = ["sushi5", "sushi1", "sushi2", "sushi3", "sushi4"]
    @State private var index = 0
    
    var myComment: String = ""
    
    
    init(activity: Activity) {
        self.activity = activity
        
    }
    
    var body: some View {
        
         return VStack {
           /*Image(activity.photo1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.vertical, 5.0)
                    .frame(width: 300.0, height: 100)
            Image(activity.image)*/
            VStack {
                Image(self.activity.images[self.index])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400)
                Text("Au sain d'un restaurant mexicain au coeur japonais, venez apprendre à faire des sushis avec ayaiki.")
                    .font(Font.system(size: 17))
                    .padding(.bottom)
            }
            HStack {
                ForEach (0..<(self.activity.images.count)) { index in
                    Image(self.activity.images[index])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75)
                            .onTapGesture {
                                self.index = index
                    }
                }
                .padding(.bottom)
            }
            
        /*    HStack {
                TextField("Ajouter un commentaire", text: myComment)
                    .padding()
                    .keyboardType(.default)
                //  .background(RoundedRectangle(cornerRadius: 15))
                //  .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.874))
                    .padding(.leading)
                Text("Envoyer")
                    .padding(7.0)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 15))
                    .foregroundColor(Color(hue: 1.0, saturation: 0.012, brightness: 0.438))
                    .padding(.trailing)
                    .onTapGesture {
                        allComment.append(myComment)
                }
            }*/
            .padding(.bottom, 30.0)
            
            HStack {
                Text("Lire les commentaires")
                    .padding(.bottom, 30.0)
                    .font(.headline)
            }
         /*   VStack {
                //Liste commentaires
             }   */
        Spacer()
        }
         .onAppear(perform: {
            self.images.insert(self.activity.image, at: 0)
         })
        .navigationBarItems(trailing: Image(systemName: "heart"))
    }
}

/*struct ActivityDetail_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetail()
    }
}*/



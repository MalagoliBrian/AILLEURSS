//
//  commentaires.swift
//  AILLEURS
//
//  Created by Brian Malagoli on 31/03/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct commentaires: View {
    
    var myComment: String = ""
    
    var allComments: [String] = [
        "Exceptionnel, 1h30 de  cours avec un super repas. José est un super prof et j'ai découvert de vraies spécialités japonaises",
        "J'ai kiffé...à faire",
        "Vous avez envie de découvrir la cuisine japonaise, allez-y, vraiment un bon moment et c'est délicieux",
        "genial genial genial"
    ]
    
    var body: some View {
        List {
            ForEach(allComments, id: \.self) { comment in
                Text(comment)
            }
        }
    }
}

struct commentaires_Previews: PreviewProvider {
    static var previews: some View {
        commentaires()
    }
}


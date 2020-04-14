//
//  PostData.swift
//  H4X0R
//
//  Created by Nick Fournier on 2020-04-12.
//  Copyright © 2020 Nick Fournier. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

//allows list to recognizable to be sorted by id
struct Post: Decodable, Identifiable {
    
    //computed property where if you try and call the variable "id" it will look up the "objectID" and store it to "id"
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}

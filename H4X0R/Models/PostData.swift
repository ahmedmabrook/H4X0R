//
//  PostData.swift
//  H4X0R
//
//  Created by Ahmed Moneer on 04/02/2024.
//

import Foundation


struct Results: Decodable {
    
    let hits: [Post]
}


struct Post: Decodable, Identifiable
{
    var id: String
    {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}

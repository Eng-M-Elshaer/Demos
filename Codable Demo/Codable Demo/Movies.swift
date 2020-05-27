//
//  Movies.swift
//  Codable Demo
//
//  Created by Mohamed Elshaer on 3/15/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import Foundation

struct SearchResult:Codable {
    var Search: [Movies]?
    var totalResults:String?
    var Response:String?
}

struct Movies:Codable {
    var Title:String?
    var Year:String?
}

struct UserAccount:Codable {
    var facebook:String?
    var instgram:String?
    var link:String?
    
    enum CodingKeys: String,CodingKey {
        case facebook, instgram
        case link = "--link"
    }
}

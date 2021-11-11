//
//  Movie.swift
//  Netflix
//
//  Created by Abhishek Jadhav on 12/11/21.
//

import Foundation

struct Movie: Identifiable, Hashable {
    var id: String
    var name: String
    var thumbnailURL: URL
}

//
//  BookModel.swift
//  Books
//
//  Created by Jacob Conacher on 10/1/22.
//

import Foundation

//Creates a struct to be used for storing the variables needed to be displayed
struct Book: Identifiable {
    let id = UUID()
    var image: String
    var authors: String
    var title: String
    var edition: String
    var description: String
    var categories: [String]
    var price: Double
}

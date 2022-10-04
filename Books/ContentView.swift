//
//  ContentView.swift
//  Books
//
//  Created by Jacob Conacher on 10/1/22.
//

import SwiftUI

struct ContentView: View {
    
    let book = bookData
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                
                //Creates the SwiftUI Essentials image
                Image(book.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 200, height: 250)
                    .shadow(color: .black, radius: 6, x: 5, y: 5)
                
                //Creates a stack within the main stack to have a smaller spacing for authors and titles
                VStack(spacing: 1) {
                    Text(book.authors)
                        .font(.system(size: 15))
                        .opacity(0.5)

                    Text(book.title)
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(book.edition)
                        .font(.system(size: 18, weight: .bold))
                }
                
                //Creates a text view with the entire description and fits it within the width of the phone screen
                Text(book.description)
                    .font(.system(size: 12))
                    .opacity(0.5)
                    .frame(width: 300)
                
                //Creates a horizontal stack to house the category tags, which are created by a loop that only makes as many as there are within the array
                HStack(spacing: 30) {
                    ForEach(book.categories, id: \.self) {
                        Text("\($0)")
                            .font(.system(size: 14))
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 100)
                            .stroke(.black, lineWidth: 2))
                        }
                }
                
                //Creates a text view for the buy price, as well as formatting the price to two decimal points
                Text("Buy for $\(book.price, specifier: "%.2f")")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 30).fill(.black))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

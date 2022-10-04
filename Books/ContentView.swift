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
                
                Image(book.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 200, height: 250)
                    .shadow(color: .black, radius: 6, x: 5, y: 5)
                
                VStack(spacing: 1) {
                    Text(book.authors)
                        .font(.system(size: 15))
                        .opacity(0.5)
                    
                    Text(book.title)
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(book.edition)
                        .font(.system(size: 18, weight: .bold))
                }
                
                Text(book.description)
                    .font(.system(size: 12))
                    .opacity(0.5)
                    .frame(width: 300)
                
                HStack(spacing: 30) {
                    Text(book.categories[0])
                        .font(.system(size: 14))
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 100)
                        .stroke(.black, lineWidth: 2))
                    
                    Text(book.categories[1])
                        .font(.system(size: 14))
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 100)
                        .stroke(.black, lineWidth: 2))
                    
                    Text(book.categories[2])
                        .font(.system(size: 14))
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 100)
                        .stroke(.black, lineWidth: 2))
                }
                
                Text("Buy for \(book.price)")
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

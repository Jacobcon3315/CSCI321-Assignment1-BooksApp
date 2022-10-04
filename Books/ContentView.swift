//
//  ContentView.swift
//  Books
//
//  Created by Jacob Conacher on 10/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                Image("cover")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 200, height: 250)
                    .shadow(color: .black, radius: 6, x: 5, y: 5)
                
                VStack(spacing: 1) {
                    Text("Neil Smyth")
                        .font(.system(size: 12))
                        .opacity(0.5)
                    
                    Text("SwiftUI Essentials")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("iOS 16 Edition")
                        .font(.system(size: 15, weight: .bold))
                }
                
                Text("""
                        This book will teach you the skills necessary to build iOS 16 applications using SwiftUI, Xcode 14, and the Swift 5.7 programming language.\n\nBeginning with the basics, this book outlines the steps necessary to set up an iOS development environment, together with an introduction to using Swift Playgrounds to learn and experiment with Swift.\n\nThe book also includes in-depth chapters introducing the Swift 5.7 programming language, including data types, control flow, functions, object-oriented programming, property wrappers, structured concurrency, and error handling.\n\nA guided tour of Xcode in SwiftUI development mode follows an introduction to the key concepts of SwiftUI and project architecture. The book also covers creating custom SwiftUI views and explains how these views are combined to create user interface layouts, including stacks, frames, and forms.\n\nOther topics covered include data handling using state properties and observable, state, and environment objects, as are key user interface design concepts such as modifiers, lists, tabbed views, context menus, user interface navigation, and outline groups.\n\nThe book also includes chapters covering graphics drawing, user interface animation, view transitions and gesture handling, WidgetKit, document-based apps, Core Data, CloudKit, and SiriKit integration.\n\nChapters also explain how to integrate SwiftUI views into existing UIKit-based projects and integrate UIKit code into SwiftUI.\n\nFinally, the book explains how to package up a completed app and upload it to the App Store for publication.\n\nAlong the way, the topics covered in the book are put into practice through detailed tutorials, the source code for which is also available for download.\n\nThe aim of this book, therefore, is to teach you the skills necessary to build your own apps for iOS 16 using SwiftUI. Assuming you are ready to download the iOS 16 SDK and Xcode 14 and have an Apple Mac system, you are ready to get started.\n\nBeginning with the basics, this book provides an outline of the steps necessary to set up an iOS development environment together with an introduction to the use of Swift Playgrounds to learn and experiment with Swift.
                        """)
                    .font(.system(size: 10))
                    .opacity(0.5)
                    .frame(width: 300)
                
                HStack(spacing: 30) {
                    Text("Programming")
                        .font(.system(size: 14))
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 100)
                        .stroke(.black, lineWidth: 2))
                    
                    Text("SwiftUI")
                        .font(.system(size: 14))
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 100)
                        .stroke(.black, lineWidth: 2))
                    
                    Text("Print")
                        .font(.system(size: 14))
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 100)
                        .stroke(.black, lineWidth: 2))
                }
                
                Text("Buy for $39.99")
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

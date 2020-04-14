//
//  ContentView.swift
//  H4X0R
//
//  Created by Nick Fournier on 2020-04-12.
//  Copyright © 2020 Nick Fournier. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //this is the property that is listening for changes
    @ObservedObject var networkManager = NetworkManager ()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                //creates a link to the DetailView and initializes it with the required url
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
                
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]

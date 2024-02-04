//
//  ContentView.swift
//  H4X0R
//
//  Created by Ahmed Moneer on 03/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        
        NavigationView {
            List(networkManager.posts, rowContent: { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            })
            .navigationTitle("H4X0R NEWS")
            
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Guten Morgen"),
//    Post(id: "3", title: "Nacht")
//]

//
//  ContentView.swift
//  JSONSwiftUIUsers
//
//  Created by Joseph Castro on 6/23/22.
//

import SwiftUI
struct ContentView: View {
    
    @State var Welcome = [UserInfo]()
    
    var body: some View {
        List(Welcome){ user in
            Text("Name: \(user.name)" + "\n" + "Email: \(user.email)" + "\n" + "Username: \(user.username)" )
            Text("Phone: \(user.phone)" + "\n" + "Website \(user.website)")
            
        }
            .padding()
            .onAppear() {
                Api().loadData { (users) in
                    self.Welcome = users
                }
            }.navigationTitle("Book List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

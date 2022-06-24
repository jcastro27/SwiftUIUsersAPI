//
//  APIHandler.swift
//  JSONSwiftUIUsers
//
//  Created by Joseph Castro on 6/24/22.
//

import Foundation
class Api : ObservableObject{
    @Published var Welcome = [UserInfo]()
    
    func loadData(completion:@escaping ([UserInfo]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let users = try! JSONDecoder().decode([UserInfo].self, from: data!)
            print(users)
            DispatchQueue.main.async {
                completion(users)
            }
        }.resume()
        
    }
}

//
//  Data.swift
//  JSONSwiftUIUsers
//
//  Created by Joseph Castro on 6/23/22.
//

import Foundation

struct UserInfo: Codable, Identifiable {
    let id: Int
    let name, username, email: String
    let address: Address
    let phone, website: String
    let company: Company
}

// MARK: - Address
struct Address: Codable {
    
    let street, suite, city, zipcode: String
    let geo: Geo
}

// MARK: - Geo
struct Geo: Codable {
    
    
    let lat, lng: String
}

// MARK: - Company
struct Company: Codable {
    
    let name, catchPhrase, bs: String
}




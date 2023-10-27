//
//  CryptocurrencyBasicDTO.swift
//  CryptoApp
//
//  Created by Lucas Quiroga on 27/10/23.
//

import Foundation

struct CryptocurrencyBasicDTO: Codable{
    let id: String
    let symbol: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name
    }
}

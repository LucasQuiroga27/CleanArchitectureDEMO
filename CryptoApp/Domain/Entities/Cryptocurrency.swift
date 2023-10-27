//
//  Cryptocurrency.swift
//  CryptoApp
//
//  Created by Lucas Quiroga on 26/10/23.
//

import Foundation

struct Cryptocurrency {
    let id: String
    let name: String
    let symbol: String
    let price: Double
    let price24h: Double?
    let volume24h: Double?
    let marketCap: Double
}

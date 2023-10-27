//
//  GlobalCryptoListRepositoryType.swift
//  CryptoApp
//
//  Created by Lucas Quiroga on 26/10/23.
//

import Foundation

protocol GlobalCryptoListRepositoryType {
    func getGlobalCryptoList() async -> Result<[Cryptocurrency], CryptocurrencyDomainError>
}

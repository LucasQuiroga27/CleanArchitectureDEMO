//
//  ApiDataSourceType.swift
//  CryptoApp
//
//  Created by Lucas Quiroga on 27/10/23.
//

import Foundation

protocol ApiDataSourceType {
    
    func getGlobalCryptoSymbolList() async -> Result<[String], HTTPClientError>
    func getCryptoList() async -> Result<[CryptocurrencyBasicDTO], HTTPClientError>
    func getPriceInfoForCryptos(id: [String]) async -> Result<[String: CryptocurrencyPriceInfoDTO], HTTPClientError>
    
}


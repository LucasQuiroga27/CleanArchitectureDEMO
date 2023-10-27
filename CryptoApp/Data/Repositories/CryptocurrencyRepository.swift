//
//  CryptocurrencyRepository.swift
//  CryptoApp
//
//  Created by Lucas Quiroga on 26/10/23.
//

import Foundation

/*
         {
           "bitcoin": {
             "usd": 34076,
             "usd_market_cap": 663964783210.3777,
             "usd_24h_vol": 17274422761.829918,
             "usd_24h_change": -1.9626402593293302
           },
           "ripple": {
             "usd": 0.552615,
             "usd_market_cap": 29722284794.93058,
             "usd_24h_vol": 1547019514.395618,
             "usd_24h_change": -0.11026201425740377
           }
         }
 */

struct CryptocurrencyPriceInfoDTO: Codable {
    let price: Double
    let marketCap: Double
    let volume24h: Double
    let price24h: Double
    
    enum CodingKeys: String, CodingKey {
        case price = "usd"
        case marketCap = "usd_market_cap"
        case volume24h = "usd_24h_vol"
        case price24h = "usd_24h_change"
    }
}

struct CryptocurrencyBasicDTO: Codable{
    let id: String
    let symbol: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name
    }
}

enum HTTPClientError: Error {
    case clientError
    case serverError
}

protocol ApiDataSourceType {
    
    func getGlobalCryptoSymbolList() async -> Result<[String], HTTPClientError>
    func getCryptoList() async -> Result<[CryptocurrencyBasicDTO], HTTPClientError>
    func getPriceInfoForCryptos(id: [String]) async -> Result<[String: CryptocurrencyPriceInfoDTO], HTTPClientError>
    
}

class CryptocurrencyRepository: GlobalCryptoListRepositoryType {
    
    private let apiDataSource: ApiDataSourceType
    
    init(apiDataSource: ApiDataSourceType) {
        self.apiDataSource = apiDataSource
    }
    
    func getGlobalCryptoList() async -> Result<[Cryptocurrency], CryptocurrencyDomainError> {
        
        let symbolListResult = await apiDataSource.getGlobalCryptoSymbolList()
        
        /*
            simple price
            https://api.coingecko.com/api/v3/simple/price?ids=bitcoin%2Cripple&vs_currencies=usd&include_market_cap=true&include_24hr_vol=true&include_24hr_change=true
         
            list
            https://api.coingecko.com/api/v3/coins/list
         
            global
         
            https://api.coingecko.com/api/v3/global


         */
        
    }
    
}

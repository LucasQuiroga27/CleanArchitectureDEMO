//
//  CryptocurrencyRepository.swift
//  CryptoApp
//
//  Created by Lucas Quiroga on 26/10/23.
//

import Foundation

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

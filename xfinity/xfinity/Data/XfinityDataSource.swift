//
//  XfinityDataProvider.swift
//  xfinity
//
//  Created by Sudhir Kumar on 3/29/19.
//  Copyright © 2019 Sudhir Kumar. All rights reserved.
//

import Foundation

let XfinityScheme = "http"
let XfinityHost = "api.duckduckgo.com"
let queryParamKey = "q"
let querySimpsonCharacter = "simpsons+characters"
let queryWireCharacter = "the+wire+characters"
let queryFormatKey = "format"
let queryFormatValue = "json"


extension URLComponents {
    
    mutating func setQueryItems(with parameters: [String: String]) {
        self.queryItems = parameters.map { URLQueryItem(name: $0.key, value: $0.value) }
    }
}

struct DataSourceConstants {
    
    static func URLString(with queryParaDict: [String:String]) -> String? {
        
        var components = URLComponents()
        components.scheme = XfinityScheme
        components.host = XfinityHost
        components.path = "/"
        components.setQueryItems(with: queryParaDict)
        
        return components.url?.absoluteString
    }
}

protocol XfinityDataProviderProtocol {
    
    func getXfinityItems(onCompletion: (([XfinityItemProViewModel])-> ())?)
}

class XfinityDataSource: XfinityDataProviderProtocol {
    
    
    var xfinityItemFactory :  XfinityFactoryItemsProtocol
    var xfinityNetwrokProvider : XfinityNetworkingProviderProtocol
    
    public init(withNetworkingProvider networking: XfinityNetworkingProviderProtocol = XfinityNetworkProvider(), andFactory factory: XfinityFactoryItemsProtocol = XfinityItemsFactory()) {
        self.xfinityItemFactory = factory
        self.xfinityNetwrokProvider = networking
    }
    
    
    func getXfinityItems(onCompletion: (([XfinityItemProViewModel]) -> ())?) {
        
        let queryParaDict = [queryParamKey:querySimpsonCharacter,queryFormatKey:queryFormatValue]
        
        guard let urlString = DataSourceConstants.URLString(with: queryParaDict) else{
            onCompletion!([])
            return
        }
        
        self.xfinityNetwrokProvider.restCall(urlString: urlString) { (responsObject) in
            guard let responseData = responsObject else{
                 onCompletion!([])
                return
            }
            
            
            
            guard let dataModel = try? JSONDecoder().decode(SimpsonDataModel.self, from: responseData) else {
                print("Error: Couldn't decode data into Blog")
                return
            }
            
            print(dataModel)
            
            let charactersArray = self.xfinityItemFactory.xfinityItems(withDataModel: dataModel)
            onCompletion!(charactersArray )
        }
        
        
    }
    
}

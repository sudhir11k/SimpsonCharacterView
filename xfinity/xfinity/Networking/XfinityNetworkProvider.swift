//
//  XfinityNetworkProvider.swift
//  xfinity
//
//  Created by Sudhir Kumar on 3/29/19.
//  Copyright © 2019 Sudhir Kumar. All rights reserved.
//

import Foundation


protocol XfinityNetworkingProviderProtocol {
    func restCall(urlString: String, onCompleted: ((Data?) -> ())?)
}

class XfinityNetworkProvider : XfinityNetworkingProviderProtocol{
    
    func restCall(urlString: String, onCompleted: ((Data?) -> ())?) {
        
        guard let serviceUrl = URL.init(string: urlString) else{
            onCompleted!(nil)
            return
        }
        
        let urlTask = URLSession.shared.dataTask(with: serviceUrl) { (data, response, error) in
            onCompleted!(data)
        }
        urlTask.resume()
    }
    
}



//
//  XfinityDataManager.swift
//  xfinity
//
//  Created by Sudhir Kumar on 3/29/19.
//  Copyright © 2019 Sudhir Kumar. All rights reserved.
//

import Foundation

protocol XfinityDataManagerProtocol {
    func getListItems(onCompleted: (([XfinityItemProViewModel]) -> ())?)
}


class XfinityDataManager : XfinityDataManagerProtocol{
    var xfinityItems : [XfinityItemProViewModel]?
    var manager : XfinityDataProviderProtocol
    
    init(withDataProvider dataProvider: XfinityDataProviderProtocol = XfinityDataSource()) {
        self.manager = dataProvider
    }
    
    func getListItems(onCompleted: (([XfinityItemProViewModel]) -> ())?) {
        self.manager.getXfinityItems { (items) in
           onCompleted!(items)
        }
    }
}

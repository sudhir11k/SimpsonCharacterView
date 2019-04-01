//
//  XfinityItems.swift
//  xfinity
//
//  Created by Sudhir Kumar on 3/29/19.
//  Copyright © 2019 Sudhir Kumar. All rights reserved.
//

import Foundation

protocol XfinityFactoryItemsProtocol {
    
    func xfinityItems(withDataModel dataModel: Any) -> [XfinityItemProViewModel]
}

class XfinityItemsFactory: XfinityFactoryItemsProtocol {
    
    func xfinityItems(withDataModel dataModel: Any) -> [XfinityItemProViewModel] {
       
        var array : [XfinityItemProViewModel] = []
        if let data = dataModel as? SimpsonDataModel, let relatedTopics = data.relatedTopics{
             print(data)
            
            for obj in relatedTopics{
                var viewModel = XfinityItemViewModel.init(withRelatedTopic: obj)
                array.append(viewModel)
            }
            
            return array
        }
        
        return []
    }

}



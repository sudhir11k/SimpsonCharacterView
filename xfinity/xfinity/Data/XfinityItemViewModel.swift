//
//  XfinityItemViewModel.swift
//  xfinity
//
//  Created by Sudhir Kumar on 3/29/19.
//  Copyright © 2019 Sudhir Kumar. All rights reserved.
//

import Foundation

protocol XfinityItemProViewModel {
    
    var listItemText: String { get }
    var listItemResult: String? { get }
    var listItemURL: String? { get }
    var listItemTitle: String { get }
    
}

struct XfinityItemViewModel: XfinityItemProViewModel {
    var listItemTitle: String
    
    var listItemText: String
    var listItemResult: String?
    var listItemURL: String?

    
    init(withRelatedTopic item: RelatedTopics) {
        self.listItemText = item.text ?? ""
        if let title = item.text?.split(separator: "-").first{
            self.listItemTitle = String(title)
        }else{
            self.listItemTitle = ""
        }
        self.listItemResult = item.result
        self.listItemURL = item.icon?.uRL
    }
}







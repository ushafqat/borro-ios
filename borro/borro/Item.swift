//
//  Item.swift
//  borro
//
//  Created by Usama Bin Shafqat on 11/5/16.
//  Copyright © 2016 Usama Bin Shafqat. All rights reserved.
//

import UIKit

class Item {
    var name: String
    var location: String
    var timeSeqSuffix: String
    var price: Int
    var rating: Int
    var photo: UIImage
    
    enum timeSeqEnum {
        case hourly
        case daily
        case weekly
        case monthly
    }
    
    // MARK: Initialization
    
    init?(name: String, location: String, timeSeq: timeSeqEnum, price: Int, rating: Int, photo: UIImage) {
        self.name = name
        self.location = location
        
        switch timeSeq {
        case .hourly:
            self.timeSeqSuffix = "hr"
            break
        case .daily:
            self.timeSeqSuffix = "day"
            break
        case .weekly:
            self.timeSeqSuffix = "week"
            break
        case .monthly:
            self.timeSeqSuffix = "mo"
            break
        }
        
        self.price = price
        self.rating = rating
        self.photo = photo
        
        if (name.isEmpty || price < 0 || rating < 0) {
            return nil
        }
    }
}



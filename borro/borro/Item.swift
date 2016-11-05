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
    var timeSeq: String
    var price: Int
    var rating: Int
    
    var photo: UIImage
    
    // MARK: Initialization
    
    init?(name: String, location: String, timeSeq: String, price: Int, rating: Int, photo: UIImage) {
        self.name = name
        self.location = location
        self.timeSeq = timeSeq
        self.price = price
        self.rating = rating
        self.photo = photo
        
        if name.isEmpty || price < 0 || rating < 0 {
            return nil
        }
    }
}



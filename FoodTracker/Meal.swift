//
//  Meal.swift
//  FoodTracker
//
//  Created by Dann Berg on 9/29/17.
//  Copyright © 2017 Dann Berg. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // Name can't be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // Rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}

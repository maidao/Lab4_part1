//
//  File.swift
//  Lab4_v2
//
//  Created by Mai Dao on 10/26/16.
//  Copyright © 2016 Mai Dao. All rights reserved.
//

import Foundation
import UIKit

class FlickrPhoto {
    var id: String!
    var server: String!
    var secret: String!
    var farm : Int!
    
    var image : UIImage!
    var num: Int!
    
    init(id:String, secret:String, server:String, farm:Int, num:Int)
    {
        self.id = id
        self.secret = secret
        self.server = server
        self.farm = farm
        self.num = num
    }
}

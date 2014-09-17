//
//  Talk.swift
//  Music To Inspire
//
//  Created by Hadiyah Mujhid on 9/16/14.
//  Copyright (c) 2014 Playpen Labs. All rights reserved.
//

import Foundation

class Talk {
    
    var name: String
    var description: String
    var recordedDate: String
    var thumbnailUrl: String
    var largeImageUrl: String
    
    init(name: String, description: String, recordedDate: String,
        thumbnailUrl: String, largeImageUrl: String){
            self.name = name
            self.description = description
            self.recordedDate = recordedDate
            self.largeImageUrl = largeImageUrl
            self.thumbnailUrl = thumbnailUrl
    }
}

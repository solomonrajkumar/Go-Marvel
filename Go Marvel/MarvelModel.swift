//
//  Marvel.swift
//  Go Marvel
//
//  Created by Solomon Rajkumar on 05/04/17.
//  Copyright © 2017 Solomon Rajkumar. All rights reserved.
//

import Foundation

class MarvelModel {
    
    private var _imageURL: String!
    private var _videoTitle: String!
    private var _videoURL: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    init(imageURL: String, videoTitle: String, videoURL: String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
        
    }
    
    
}

//
//  MarvelTableViewCell.swift
//  Go Marvel
//
//  Created by Solomon Rajkumar on 05/04/17.
//  Copyright © 2017 Solomon Rajkumar. All rights reserved.
//

import UIKit

class MarvelTableViewCell: UITableViewCell {
    
    @IBOutlet weak var previewImage: UIImageView!
    
    @IBOutlet weak var videoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(marvel: MarvelModel) {
        
        videoLabel.text = marvel.videoTitle
        
    }

}

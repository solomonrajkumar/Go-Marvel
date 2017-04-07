//
//  PlayVideoViewController.swift
//  Go Marvel
//
//  Created by Solomon Rajkumar on 07/04/17.
//  Copyright © 2017 Solomon Rajkumar. All rights reserved.
//

import UIKit

class PlayVideoViewController: UIViewController {
    
    var _videoTitle: String!
    
    var videoTitle: String {
        
        get {
            
            return _videoTitle
            
        } set {
            
            _videoTitle = newValue
            
        }
        
    }

    @IBOutlet weak var videoTitleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        videoTitleLabel.text = _videoTitle
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  PlayVideoViewController.swift
//  Go Marvel
//
//  Created by Solomon Rajkumar on 07/04/17.
//  Copyright © 2017 Solomon Rajkumar. All rights reserved.
//

import UIKit

class PlayVideoViewController: UIViewController {
    
    
    @IBOutlet weak var playVideoWebView: UIWebView!
    
    var _videoTitle: String!
    var _videoURL: String!
    
    var videoTitle: String {
        get {
            return _videoTitle
        } set {
            _videoTitle = newValue
            
        }
    }
    
    var videoURL: String {
        get {
            return _videoURL
        } set {
            _videoURL = newValue
        }
    }
    

    @IBOutlet weak var videoTitleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        videoTitleLabel.text = _videoTitle
        
        // set the height of the video preview
        videoURL = _videoURL.replacingOccurrences(of: "webViewHeight", with: "\(playVideoWebView.frame.height)")
        videoURL = _videoURL.replacingOccurrences(of: "webViewWidth", with: "\(playVideoWebView.frame.width)")
        print(videoURL)
        
        playVideoWebView.loadHTMLString(videoURL, baseURL: nil)
        
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

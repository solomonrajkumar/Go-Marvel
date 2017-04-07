//
//  ViewController.swift
//  Go Marvel
//
//  Created by Solomon Rajkumar on 04/04/17.
//  Copyright © 2017 Solomon Rajkumar. All rights reserved.
//

import UIKit

class MarvelViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var marvels = [MarvelModel]()
    
    @IBOutlet weak var videoListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        videoListTableView.dataSource = self
        videoListTableView.delegate = self
        
        let marvel1 = MarvelModel(imageURL: "ÏmageURL", videoTitle: "Ironman 1 Trailer", videoURL: "VideoUrl")
        marvels.append(marvel1)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return marvels.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MarvelCell", for: indexPath) as? MarvelTableViewCell{
            
            let marvel = marvels[indexPath.row]
            cell.updateUI(marvel: marvel)
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let marvel = marvels[indexPath.row]
        performSegue(withIdentifier: "playVideoSegue", sender: marvel)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PlayVideoViewController {
            
            if let marvelObj = sender as? MarvelModel {
                
                destination.videoTitle = marvelObj.videoTitle
                
            }
            
        }
        
    }


}


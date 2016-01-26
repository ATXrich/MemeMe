//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Richard Reed on 1/25/16.
//  Copyright © 2016 Richard Reed. All rights reserved.
//

import UIKit


class MemeDetailViewController: UIViewController {
    @IBOutlet weak var memeImage: UIImageView!
    
    var meme: Meme!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBarController?.tabBar.hidden = true
        
        memeImage.image = meme.memedImage
        
        
    }
}

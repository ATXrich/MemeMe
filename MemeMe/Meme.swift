//
//  Meme.swift
//  MemeMe
//
//  Created by Richard Reed on 1/24/16.
//  Copyright © 2016 Richard Reed. All rights reserved.
//

import UIKit

struct Meme {
    let topText: String
    let bottomText: String
    let image: UIImage
    let memedImage: UIImage

    
    init(topText: String, bottomText: String, image: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.image = image
        self.memedImage = memedImage
    }
    
    
    
}
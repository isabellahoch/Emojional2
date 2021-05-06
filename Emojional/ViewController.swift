//
//  ViewController.swift
//  Emojional
//
//  Created by Isabella Hochschild on 5/6/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let gifJif = UIImage.gifImageWithName("partyparrot")
//        imageView.image = gifJif
//        imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 150.0)
//
        
        let gifURL : String = "https://ph-files.imgix.net/caf5608a-67ec-4f9f-acb5-db0052c33bed?auto=format"
            let imageURL = UIImage.gifImageWithURL(gifURL)
            let imageView3 = UIImageView(image: imageURL)
            imageView3.frame = CGRect(x: 20.0, y: 390.0, width: self.view.frame.size.width - 40, height: 250)
            view.addSubview(imageView3)
    }
    
    

}


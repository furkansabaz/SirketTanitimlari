//
//  ViewController.swift
//  SirketTanitimlari
//
//  Created by Furkan Sabaz on 26.05.2019.
//  Copyright © 2019 Furkan Sabaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let googleImage : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Google"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.addSubview(googleImage)
        
        layoutDuzenle()
        
        
        
    }

    
    private func layoutDuzenle() {
        googleImage.translatesAutoresizingMaskIntoConstraints = false
        
        googleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        googleImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        
        
        googleImage.widthAnchor.constraint(equalToConstant: 180).isActive = true
        googleImage.heightAnchor.constraint(equalToConstant: 180).isActive = true
    }

}


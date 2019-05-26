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
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    
    let txtSirketAdi : UITextView = {
        
        let textView = UITextView()
        textView.text = "Ailemizin Arama Motoru Google"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        //tıklayınca klavye gelmesini engelleme
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.addSubview(googleImage)
        view.addSubview(txtSirketAdi)
        layoutDuzenle()
        
        
        
    }

    
    private func layoutDuzenle() {
        
        let ustView = UIView()
        ustView.backgroundColor = .red
        view.addSubview(ustView)
        //ustView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        
        
        ustView.translatesAutoresizingMaskIntoConstraints = false
        
        ustView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        ustView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        
        ustView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        ustView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        ustView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        
        
        
        
        /*
        googleImage.translatesAutoresizingMaskIntoConstraints = false
        
        googleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        googleImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        
        
        googleImage.widthAnchor.constraint(equalToConstant: 180).isActive = true
        googleImage.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
        */
        
        txtSirketAdi.topAnchor.constraint(equalTo: googleImage.bottomAnchor, constant: 100).isActive = true
        txtSirketAdi.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        txtSirketAdi.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        txtSirketAdi.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
        
    }

}


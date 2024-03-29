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
        let imageView = UIImageView(image: #imageLiteral(resourceName: "google"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    
    let txtSirketAdi : UITextView = {
        
        let textView = UITextView()
        //textView.text = "Ailemizin Arama Motoru Google"
        //textView.font = UIFont.boldSystemFont(ofSize: 18)
        
        
        let attrText = NSMutableAttributedString(string: "Ailemizin Arama Motoru Google", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)])
        
        attrText.append(NSAttributedString(string: "\n\nİnternet araması, çevrim içi bilgi dağıtımı, reklam teknolojileri ve arama motorları için yatırımlar yapan çok uluslu Amerikan anonim şirketidir. İnternet tabanlı hizmet ve ürünler geliştirir.", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14) , NSAttributedString.Key.foregroundColor : UIColor.darkGray]))
        
        textView.attributedText = attrText
        
        
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        //tıklayınca klavye gelmesini engelleme
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    private let btnOnceki : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Önceki", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.setTitleColor(.darkGray, for: .normal)
        return button
        
    }()
    private let btnSonraki : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sonraki", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.setTitleColor(.yeniKirmizi, for: .normal)
        return button
        
    }()
    
    private let pageControl : UIPageControl = {
        let pControl = UIPageControl()
        pControl.currentPage = 0
        pControl.numberOfPages = 5
        pControl.currentPageIndicatorTintColor = UIColor.yeniKirmizi
        pControl.pageIndicatorTintColor = UIColor.acikKirmizi
        return pControl
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.addSubview(txtSirketAdi)
        butonKontrol()
        layoutDuzenle()
        
        
        
    }

    
    
    
    fileprivate func butonKontrol() {
        
        let butonStackView = UIStackView(arrangedSubviews: [btnOnceki, pageControl, btnSonraki])
        butonStackView.translatesAutoresizingMaskIntoConstraints = false
        butonStackView.distribution = .fillEqually
        
        view.addSubview(butonStackView)
        
        NSLayoutConstraint.activate([
            butonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            butonStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            butonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            butonStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        
        
    }
    
    private func layoutDuzenle() {
        
        let ustView = UIView()
        view.addSubview(ustView)
        
        
        ustView.translatesAutoresizingMaskIntoConstraints = false
        
        ustView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        ustView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        
        ustView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        ustView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        ustView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        
        
        ustView.addSubview(googleImage)
        googleImage.centerXAnchor.constraint(equalTo: ustView.centerXAnchor).isActive = true
        googleImage.centerYAnchor.constraint(equalTo: ustView.centerYAnchor).isActive = true
        
        googleImage.heightAnchor.constraint(equalTo: ustView.heightAnchor, multiplier: 0.6).isActive = true
        
        
        txtSirketAdi.topAnchor.constraint(equalTo: ustView.bottomAnchor, constant: 10).isActive = true
        txtSirketAdi.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        txtSirketAdi.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        txtSirketAdi.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
        
    }

}


extension UIColor {
    static var yeniKirmizi = UIColor(red: 229/255, green: 70/255, blue: 129/255, alpha: 1)
    static var acikKirmizi = UIColor(red: 250/255, green: 210/255, blue: 215/255, alpha: 1)
}


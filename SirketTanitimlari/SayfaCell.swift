//
//  SayfaCell.swift
//  SirketTanitimlari
//
//  Created by Furkan Sabaz on 28.05.2019.
//  Copyright © 2019 Furkan Sabaz. All rights reserved.
//

import UIKit


class SayfaCell : UICollectionViewCell {
    
    let googleImage : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Google"))
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        layoutDuzenle()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Hata Oluştu")
    }
    
    
    private func layoutDuzenle() {
        
        let ustView = UIView()
        addSubview(ustView)
        
        
        ustView.translatesAutoresizingMaskIntoConstraints = false
        
        ustView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        ustView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        
        
        ustView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        ustView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        ustView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        
        
        
        
        ustView.addSubview(googleImage)
        googleImage.centerXAnchor.constraint(equalTo: ustView.centerXAnchor).isActive = true
        googleImage.centerYAnchor.constraint(equalTo: ustView.centerYAnchor).isActive = true
        
        googleImage.heightAnchor.constraint(equalTo: ustView.heightAnchor, multiplier: 0.6).isActive = true
        
        addSubview(txtSirketAdi)
        txtSirketAdi.topAnchor.constraint(equalTo: ustView.bottomAnchor, constant: 10).isActive = true
        txtSirketAdi.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
        txtSirketAdi.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        txtSirketAdi.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        
        
    }
    
}

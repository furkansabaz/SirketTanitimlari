//
//  GecisController.swift
//  SirketTanitimlari
//
//  Created by Furkan Sabaz on 27.05.2019.
//  Copyright © 2019 Furkan Sabaz. All rights reserved.
//

import Foundation
import UIKit

class GecisController : UICollectionViewController , UICollectionViewDelegateFlowLayout{
    
    

    
    let sayfalar =  [
        Sayfa(goruntuAdi: "google", baslik: "Ailenizin Arama Motoru - Google"),
        Sayfa(goruntuAdi: "amazon", baslik: "Dünyanın En Büyük Ürün Yelpazesi - Amazon"),
        Sayfa(goruntuAdi: "facebook", baslik: "Sosyal Medya Sitesi Facebook"),
        Sayfa(goruntuAdi: "instagram", baslik: "Fotoğraflarınızı Instagram'da Paylaşın"),
        Sayfa(goruntuAdi: "apple", baslik: "Yeniliklerle Dolu Dünya - Apple"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .gray
        collectionView.register(SayfaCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.isPagingEnabled = true
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sayfalar.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SayfaCell
        cell.googleImage.image = UIImage(named: sayfalar[indexPath.row].goruntuAdi)
        cell.txtSirketAdi.text = sayfalar[indexPath.row].baslik
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

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
    
    
    let goruntuler = ["google","amazon","facebook","instagram","apple"]
    
    let basliklar = ["Ailenizin Arama Motoru - Google", "Dünyanın En Büyük Ürün Yelpazesi - Amazon", "Sosyal Medya Sitesi Facebook", "Fotoğraflarınızı Instagram'da Paylaşın","Yeniliklerle Dolu Dünya - Apple"]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .gray
        collectionView.register(SayfaCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.isPagingEnabled = true
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return goruntuler.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SayfaCell
        cell.googleImage.image = UIImage(named: goruntuler[indexPath.row])
        cell.txtSirketAdi.text = basliklar[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

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
        Sayfa(goruntuAdi: "google", baslik: "Ailenizin Arama Motoru - Google", aciklama: "İnternet araması, çevrim içi bilgi dağıtımı, reklam teknolojileri ve arama motorları için yatırımlar yapan çok uluslu Amerikan anonim şirketidir. İnternet tabanlı hizmet ve ürünler geliştirir."),
        Sayfa(goruntuAdi: "amazon", baslik: "Dünyanın En Büyük Ürün Yelpazesi - Amazon", aciklama: "Amazon, Amerika Birleşik Devletleri merkezli bir e-ticaret ve bulut bilişim şirketidir. Jeff Bezos tarafından 5 Temmuz 1994'te Amerika Birleşik Devletleri'nin Seattle şehrinde kurulmuştur. Gerek toplam satış hacmi, gerekse piyasa değeri açısından dünyanın en büyük alışveriş sitesidir."),
        Sayfa(goruntuAdi: "facebook", baslik: "Sosyal Medya Sitesi Facebook", aciklama: "Facebook, insanların başka insanlarla iletişim kurmasını ve bilgi alışverişi yapmasını amaçlayan bir sosyal ağ. 4 Şubat 2004 tarihinde Harvard Üniversitesi 2006 devresi öğrencisi Mark Zuckerberg tarafından kurulan Facebook, öncelikle Harvard öğrencileri için kurulmuştu"),
        Sayfa(goruntuAdi: "instagram", baslik: "Fotoğraflarınızı Instagram'da Paylaşın", aciklama: "Instagram, sosyal medyada ücretsiz fotoğraf ve video paylaşma uygulaması. Ekim 2010'da kurulduğunda, kullanıcılarına çektikleri bir fotoğraf üzerinde dijital filtre kullanma ve bu fotoğrafı Instagram'ın da dahil olduğu, sosyal medya servisleri ile paylaşma imkanı tanımıştır."),
        Sayfa(goruntuAdi: "apple", baslik: "Yeniliklerle Dolu Dünya - Apple", aciklama: "Apple, merkezi Cupertino'da bulunan; tüketici elektroniği, bilgisayar yazılımı ve kişisel bilgisayar tasarlayan, geliştiren ve satan Amerikan çok uluslu şirkettir."),
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
//        cell.googleImage.image = UIImage(named: sayfalar[indexPath.row].goruntuAdi)
//        cell.txtSirketAdi.text = sayfalar[indexPath.row].baslik
        cell.sayfa = sayfalar[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

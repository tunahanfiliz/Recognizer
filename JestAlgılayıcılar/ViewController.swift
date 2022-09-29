//
//  ViewController.swift
//  JestAlgılayıcılar
//
//  Created by Ios Developer on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wwImagine: UIImageView!
    
    @IBOutlet weak var wwLabel: UILabel!
    
    var isWWeghorst = true // bu değişkeni func changePic de oluşturmama sebebimiz her defasında fonskyion ww yi true alırdı ama bir kere true oldugunda foto değiştiginde artık ww yerine muleka oldugu için ww false oluyor o yüzden oluşturduğumuz else false olduğundan dolayı geri ww ye dön demek oluyor içindeki UIIMAGE İÇİNDEKİ " WW " SAYESİNDE .
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wwImagine.isUserInteractionEnabled = true //resim tıklanabilir olsun mu demek .
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))// bir veya daha fazla tıklamayı algılayabilen araç
        // targete self deme sebebi wiewcontrollerdeki fonksiyonu aksiyon olarak oluşturmak hedefimiz.
        wwImagine.addGestureRecognizer(gestureRecognizer)//eklemek
        
    }
    @objc func changePic(){
        if isWWeghorst == true {
            wwImagine.image = UIImage(named: "g")
            wwLabel.text = "MULEKAAAAAAAAA"
            isWWeghorst = false
        }else {
            wwImagine.image = UIImage(named: "gol1")
            wwLabel.text = "W.W!!"
            isWWeghorst = true
        }
        
    }

}


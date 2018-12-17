//
//  MenuController.swift
//  MonRestoDuMonde
//
//  Created by Theo Marie on 09/12/2018.
//  Copyright © 2018 Theo Marie. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    let cellID = "MenuCell" // uniquement dans controller
    
    var menus = [Menu]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Les Menus"
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
       menus = LesPlats.obtenir.lesMenus() // variable qui contient l'ensemble des menus
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count // retourne le nombre de collectionView = a menus
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? MenuCell
        {
            cell.backgroundColor = GRIS_TRES_FONCE
        return cell
        }
    
        return UICollectionViewCell()
        }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largueur = collectionView.frame.width / 2 - 10
        return CGSize(width: largueur, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    }




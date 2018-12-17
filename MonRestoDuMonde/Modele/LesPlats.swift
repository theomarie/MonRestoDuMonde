//
//  LesPlats.swift
//  MonRestoDuMonde
//
//  Created by Theo Marie on 10/12/2018.
//  Copyright © 2018 Theo Marie. All rights reserved.
//

import UIKit


class LesPlats {

    static let obtenir = LesPlats()

    func lesMenus() -> [Menu] {
        var menus = [Menu]() // var si bug !!
        let it = Menu(pays: ITALIE, image: UIImage(named: "pizza"))
        let jap = Menu(pays: JAPON, image: UIImage(named: "sushis"))
        let chi = Menu(pays: CHINE, image: UIImage(named: "nem"))
        let usa = Menu(pays: USA, image: UIImage(named: "burger"))
        let mex = Menu(pays: MEXIQUE, image: UIImage(named: "fajitas"))
        let esp = Menu(pays: ESPAGNE, image: UIImage(named: "paella"))
        let sui = Menu(pays: SUISSE, image: UIImage(named: "fondue"))
        menus.append(contentsOf: [it, jap, chi, usa, mex, esp, sui])
        return menus
    }
}

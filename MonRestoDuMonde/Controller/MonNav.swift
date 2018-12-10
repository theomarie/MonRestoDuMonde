//
//  MonNav.swift
//  MonRestoDuMonde
//
//  Created by Theo Marie on 10/12/2018.
//  Copyright © 2018 Theo Marie. All rights reserved.
//

import UIKit

class MonNav: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barTintColor = NOIR
        navigationBar.tintColor = GRIS_TRES_CLAIR
        navigationBar.titleTextAttributes = [.font: FONT_DE_BASE as Any, .foregroundColor: GRIS_TRES_CLAIR]
    }

}

//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Rohit Jangid on 05/09/20.
//  Copyright © 2020 Rohit Jangid. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.desiredLeague ?? "")
    }

}

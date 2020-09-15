//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Rohit Jangid on 05/09/20.
//  Copyright © 2020 Rohit Jangid. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var womensBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens", button: mensBtn)
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens", button: womensBtn)
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed", button: coedBtn)
    }

    func selectLeague(leagueType: String, button: UIButton) {
        player.desiredLeague = leagueType
        button.layer.borderColor = UIColor.gray.cgColor
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
}

//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Sonali Patel on 12/11/17.
//  Copyright © 2017 Sonali Patel. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       player = Player()
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillViewControllerSegue", sender: self)
    }
   
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "Mens")
//        player.desiredLeague = "Mens"
//        nextBtn.isEnabled = true
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "Womens")

//        player.desiredLeague = "Womens"
//        nextBtn.isEnabled = true

    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "Co-Ed")

//        player.desiredLeague = "Co-Ed"
//        nextBtn.isEnabled = true
        
    }
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = player
            
        }
    }
}

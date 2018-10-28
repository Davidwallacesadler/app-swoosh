//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by David Sadler on 10/28/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    //create an instance of player in the leagueVC
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Initalize the player Model when viewDidLoad is called
        player = Player()
        }
    
    //withing each IBAction we want to specify the logic we need to pass Model data between VC's
    //never have logic built into the action itself - define the logic in the VC scope
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
  
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    

    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoEdTapped(_ sender: Any) {
       selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
}

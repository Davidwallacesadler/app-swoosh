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
    //prepare for segue - tells the VC that a segue is about to be performed and allows us to do things before the segue loads on the screen and alows us to pass data between VCs
    
    //override fucntion: Default VC that we are inheariting from will call this. Overriding and not calling super we dont need the VC implementation of it - our code will take over. super calls parent code.
    
    //NOTE: prepareForSegue is ALWAYS called before viewDidLoad (on the destination VC) - so the data in prepareForSegue will be ready to be accessed in viewDidLoad (if we initialized it first)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // if let sequence - try and run an operation - in this case trying to cast segue.destination as a SkillVC, which will work becuase SkillVC inhearets from segue.destination
        
        if let skillVC = segue.destination as? SkillVC {
            
            //need to store a player variable in our SkillVC
            skillVC.player = player
            //the player instance in the skillVC is equal to the player instance in the League VC - passing player from one VC to another
            
        }
    }
}

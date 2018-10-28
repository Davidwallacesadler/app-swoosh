//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by David Sadler on 10/28/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
  
    


}

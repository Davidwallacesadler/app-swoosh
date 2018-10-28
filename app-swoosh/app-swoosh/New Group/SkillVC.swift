//
//  SkillVC.swift
//  app-swoosh
//
//  Created by David Sadler on 10/28/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player! //implicitly unwrapped optional
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(player.desiredLeague)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

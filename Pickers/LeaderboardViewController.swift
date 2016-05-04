//
//  LeaderboardViewController.swift
//  Pickers
//
//  Created by Kaitlyn Barbara Montour on 3/23/16.
//  Copyright (c) 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import UIKit

class LeaderboardViewController: UIViewController {

    @IBOutlet weak var UserNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUserInfo()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func updateUserInfo() {
        UserNameLabel.text = User.name
    }

}

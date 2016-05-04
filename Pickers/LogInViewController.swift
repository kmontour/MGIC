//
//  LogInViewController.swift
//  Pickers
//
//  Created by Kaitlyn Barbara Montour on 4/2/16.
//  Copyright © 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import UIKit
   class LogInViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var usernameField: UITextField!

    @IBOutlet weak var passwordField: UITextField!
    
    
    
    @IBAction func logInClicked(sender: AnyObject) {
        if usernameField.text != nil{
            User.changeName(usernameField.text!)
        }
        if passwordField.text != nil{
            User.changePassword(passwordField.text!)
          
        }
        print("User: ", User.name,"Password: ", User.password)
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Chatterjee, Snigdhaman on 25/12/15.
//  Copyright © 2015 Chatterjee, Snigdhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonText: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Snigdhaman", forKey: "name")
        let name = NSUserDefaults.standardUserDefaults().objectForKey("name") as! String
        
        buttonText.setTitle(name, forState: UIControlState.Normal)
        print(name)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


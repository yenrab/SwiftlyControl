//
//  ViewController.swift
//  SwiftlyControlNaiveExample
//
//  Created by Lee Barney on 10/31/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var words: UITextField!
    @IBOutlet weak var resultsDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func singleEventHandler(sender: AnyObject) {
       let command =  (sender as UIButton).restorationIdentifier!
        //You add the view controller so the view can be controlled from you app controller code.
        //You can also send anything else you want to make available to every handler function.
        handleRequest(command, ["viewController":self, "standard_message":"App Controller did this"])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  BaseViewController.swift
//  SwiftTest
//
//  Created by envigo on 10/02/17.
//  Copyright © 2017 envigo. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class BaseViewController: UIViewController {
    let name = "Pankaj"
    var sirName = "Kumar"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // Methods
    func getMyfullNmae(name:String, sirname: String) -> String {
        let yourName = name+sirname
        return yourName
    }
}

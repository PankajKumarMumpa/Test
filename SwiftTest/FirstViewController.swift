//
//  FirstViewController.swift
//  SwiftTest
//
//  Created by envigo on 10/02/17.
//  Copyright © 2017 envigo. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {
    var man = Man()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(man.name)
        print(man.age)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

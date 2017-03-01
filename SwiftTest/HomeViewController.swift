//
//  HomeViewController.swift
//  SwiftTest
//
//  Created by envigo on 10/02/17.
//  Copyright © 2017 envigo. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(name)
        print(sirName)
        let yourName = self.getMyfullNmae(name: name, sirname: sirName)
        print(yourName)
        sirName = "singh"
        let yourName1 = getMyfullNmae(name: name, sirname: sirName)
        print(yourName1)
        // Do any additional setup after loading the view.
//        initialiseTheView()
        let man = Man()
        man.name = name
        man.age = 26
        
        let firstController = storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        firstController.man = man
        navigationController?.pushViewController(firstController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated cvcv.
    }
    

    // MARK: - Methods
    func initialiseTheView(){
        let apimanager = WebApiClient()
        apimanager.getfirstapi(successHander: {(responseObject:JSON?, error:NSError?) in
            print(responseObject?["data"].array)
        })
//        Alamofire.request(NSURL.init(string: "http://104.131.75.147:6001/banner") as! URL).responseJSON(completionHandler:{response  in
//                let dic =  JSON(response.result.value!)
//                    print(dic);
//        })
//            .responseString { response in
//                if let error = response.result.error {
//                    print(error)
//                }
//                if let value = response.result.value {
//                    print(value)
//                }
//        }
//        
//        let todosEndpoint: String = "https://jsonplaceholder.typicode.com/todos"
//        let newTodo: [String: Any] = ["title": "My First Post", "completed": 0, "userId": 1]
//        Alamofire.request(todosEndpoint, method: .post, parameters: newTodo,
//                          encoding: JSONEncoding.default)
//            .responseJSON { response in
//                guard response.result.error == nil else {
//                    // got an error in getting the data, need to handle it
//                    print("error calling POST on /todos/1")
//                    print(response.result.error!)
//                    return
//                }
//                // make sure we got some JSON since that's what we expect
//                guard let json = response.result.value as? [String: Any] else {
//                    print("didn't get todo object as JSON from API")
//                    print("Error: \(response.result.error)")
//                    return
//                }
//                // get and print the title
//                guard let todoTitle = json["title"] as? String else {
//                    print("Could not get todo title from JSON")
//                    return
//                }
//                if response.result.isSuccess == true{
//                    let dic =  JSON(response.result.value!)
//                    print(dic);
//                }
//                print("The title is: " + todoTitle)
//        }
        
    
    }

}

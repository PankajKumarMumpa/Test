//
//  WebApiClient.swift
//  SwiftTest
//
//  Created by envigo on 10/02/17.
//  Copyright © 2017 envigo. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

typealias ServiceResponse = (JSON?, NSError?) -> Void

class WebApiClient: NSObject {

    func getfirstapi(successHander:@escaping ServiceResponse)->Void{
        Alamofire.request(NSURL.init(string: "http://104.131.75.147:6001/banner") as! URL).responseJSON(completionHandler:{response  in
            let dic =  JSON(response.result.value!)
            print(dic)
            successHander(dic, nil)
        })
            .responseString { response in
                if let error = response.result.error {
                    print(error)
                }
                if let value = response.result.value {
                    print(value)
                }
        }
    }
}

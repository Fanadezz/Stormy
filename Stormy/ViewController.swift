//
//  ViewController.swift
//  Stormy
//
//  Created by Gil Aguilar on 3/10/15.
//  Copyright (c) 2015 Treasured Grooves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let apiKey = "175b7c75e88f13aaf638a31fe53ce93b"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/")
        
        let forecastURL = NSURL(string: "43.650165, -116.279280", relativeToURL: baseURL)
        
        let weatherData = NSData(contentsOfURL: forecastURL!, options: nil, error: nil)
        
        println(weatherData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


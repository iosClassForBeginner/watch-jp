//
//  ViewController.swift
//  watch-jp
//
//  Created by Muneharu Onoue on 2017/11/21.
//  Copyright © 2017年 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(updateTimer),
            userInfo: nil,
            repeats: true
        )
        timer.fire()
    }

    @objc func updateTimer() {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        
        // Set current time
        timeLabel.text = formatter.string(from: Date())
    }

}


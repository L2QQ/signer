//
//  secondWindow.swift
//  signapp
//
//  Created by im on 30/08/2018.
//  Copyright © 2018 l2. All rights reserved.
//

import SafariServices

class secondWindow: SFSafariExtensionViewController {
    
    @IBAction func goButton(_ sender: Any) {
        print("BINGO!!!!!!!!!")
    }
    
    
    @IBOutlet weak var tabView: NSTabView!
    //static let shared = secondWindow()
    static let shared: secondWindow = {
        //print("second controller")
        let shared = secondWindow()
        shared.preferredContentSize = NSSize(width:480, height:272)
        return shared
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tabView.selectTabViewItem(at: 2)
        // Do view setup here.
    }
    
}

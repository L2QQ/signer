//
//  secondWindow.swift
//  signapp
//
//  Created by im on 30/08/2018.
//  Copyright © 2018 l2. All rights reserved.
//

import SafariServices

protocol SecondWindowDelegate: class {
    func secondWindowDidClick(_ sc: secondWindow, for num: Int)
}

class secondWindow: SFSafariExtensionViewController {
    
    weak var delegate: SecondWindowDelegate?
    
    //var SafariExtensionHandler: SFSafariExtensionHandler?
    //var SafariExtensionHandler: (() -> Void)?
    
    var goHandler: ((Int) -> Void)?
    
    @IBAction func goButton(_ sender: Any) {
        print("BINGO!!!!!!!!!")
        goHandler?(4)
        delegate?.secondWindowDidClick(self, for: 4)
        //var myArray = ["a", "b", "c"];
        //safari.extension.dispatchMessage("passArray", { "key": myArray });
        // auth button
        //SafariExtensionHandler?().dispatchMessageToScript("hash","message")
    }
    
    
    @IBOutlet weak var tabView: NSTabView!
    //static let shared = secondWindow()
    static let shared: secondWindow = {
        //print("second controller")
        let shared = secondWindow()
        //shared.preferredScreenOrigin = NSPoint.init(x: 200, y: 100)
        shared.preferredContentSize = NSSize(width:240, height:180)
        return shared
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tabView.selectTabViewItem(at: 2)
        // Do view setup here.
    }
    /*
    func shareHandler( SafariExtensionHandler : SFSafariExtensionHandler ) {
        SafariExtensionHandler ?= SafariExtensionHandler
    }
    */
}

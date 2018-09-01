//
//  SafariExtensionViewController.swift
//  signapp
//
//  Created by im on 30/08/2018.
//  Copyright © 2018 l2. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController{
    
    //@IBOutlet var collectionView: NSCollectionViewItem!
    
    static let shared = SafariExtensionViewController()
    
    @IBOutlet weak var loginBtn: NSButton!
    
    override func viewDidLoad() {
        /*self.present(secondWindow(), asPopoverRelativeTo: NSRect(x: 0, y: 100, width: 0, height: 0), of: self.view, preferredEdge: NSRectEdge.maxX, behavior: .transient)*/
        self.viewDidLoad()
        //self.addChild(secondWindow())
        //self.children.
        //let _view = self.view as! NSVisualEffectView
        
        
    }
    /*
    static let shared: SafariExtensionViewController = {
        //print("second controller")
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()
 */

    @IBAction func loginButtonClick(_ sender: Any) {
        //secondWindow().viewDidLoad()
        self.present(secondWindow(), asPopoverRelativeTo: NSRect(x: 0, y: 100, width: 0, height: 0), of: self.view, preferredEdge: NSRectEdge.maxX, behavior: .transient)
        
        /*self.presentViewController(secondWindow(), asPopoverRelativeTo: NSRect(x: 0, y: 100, width: 0, height: 0), of: self.view, preferredEdge: NSRectEdge.maxX, behavior: .transient)*/
    }
}

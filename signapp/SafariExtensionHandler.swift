//
//  SafariExtensionHandler.swift
//  signapp
//
//  Created by im on 30/08/2018.
//  Copyright © 2018 l2. All rights reserved.
//

import SafariServices

class SafariExtensionHandler: SFSafariExtensionHandler, SecondWindowDelegate {
    
    func secondWindowDidClick(_ sc: secondWindow, for num: Int) {
        print("Num is \(num)")
    }
    
    override func messageReceived(withName messageName: String, from page: SFSafariPage, userInfo: [String : Any]?) {
        // This method will be called when a content script provided by your extension calls safari.extension.dispatchMessage("message").
        //secondWindow.shared
        page.getPropertiesWithCompletionHandler { properties in
            NSLog("The extension received a message (\(messageName)) from a script injected into (\(String(describing: properties?.url))) with userInfo (\(userInfo ?? [:]))")
        }
    }
    
    override func toolbarItemClicked(in window: SFSafariWindow) {
        // This method will be called when your toolbar item is clicked.
        NSLog("The extension's toolbar item was clicked")
        /*
        window.getActiveTab { (tab) in
            tab?.getActivePage(completionHandler: <#T##(SFSafariPage?) -> Void#>)
        }
 */
    }
    
    override func validateToolbarItem(in window: SFSafariWindow, validationHandler: @escaping ((Bool, String) -> Void)) {
        // This is called when Safari's state changed in some way that would require the extension's toolbar item to be validated again.
        validationHandler(true, "")
    }
    
    override func popoverViewController() -> SFSafariExtensionViewController {
        //return SafariExtensionViewController.shared
        //secondWindow.shareHandler(self)
      
       /* secondWindow.shared.delegate = self
        secondWindow.shared.goHandler = { (_) in
            print("Hello")
        }
*/
        return secondWindow.shared
        //return NSStoryboard.init()
    }
    
    private func dispatchMessageToScript(page: SFSafariPage, withName: String, userInfo: [String : Any]? = nil) {
        page.dispatchMessageToScript(withName: withName, userInfo: userInfo)
    }
}

//
//  ViewController.swift
//  WKWebViewLocalFiles
//
//  Created by ProgrammingWithSwift on 2019/12/01.
//  Copyright © 2019 ProgrammingWithSwift. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        if let indexURL = Bundle.main.url(forResource: "index",
                                          withExtension: "html",
                                          subdirectory: "myWebsiteContent") {
            
            // 2
            self.webView.loadFileURL(indexURL,
                                     allowingReadAccessTo: indexURL)
        }
    }
}

//
//  ViewController.swift
//  testWebView
//
//  Created by pavel on 21.12.23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    private var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        let urlString = "https://www.micromania.fr/customer/account?isApp=true"
        if let accountUrl = URL(string: urlString) {
            let request = URLRequest(url: accountUrl)
            webView.load(request)
        }
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
}

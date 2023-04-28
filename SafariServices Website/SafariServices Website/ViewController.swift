//
//  ViewController.swift
//  SafariServices Website
//
//  Created by Somnath Jadhav on 4/28/23.
//email me - somnathjadhav.apple@gmail.com

import UIKit
import SafariServices

class ViewController: UIViewController {

    var isSafariViewControllerPresented = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        openURL()
    }

    func openURL(){
        
        //MARK: Safari Services - Open url on Safari web browser
        if !isSafariViewControllerPresented, let url = URL(string: "https://developer.apple.com/documentation/safariservices") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
            isSafariViewControllerPresented = true
        }
    }
}


//
//  Recruitment.swift
//  NAV
//
//  Created by Sergio Salazar on 11/1/20.
//

import UIKit
import WebKit

class Recruit: UIViewController {

    @IBOutlet weak var WebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL(string: "https://www.navy.com/local?activity=1228857")
        let myURLRequest = URLRequest(url: myURL!)
        WebView.load(myURLRequest)
        
    }
    

    @IBAction func GoBack(_ sender: Any) {
        if WebView.canGoBack{
            WebView.goBack()
        }
    }
    
    @IBAction func GoFroward(_ sender: Any) {
        if WebView.canGoForward{
            WebView.goForward()
        }
    }
    
       @IBAction func Refresh(_ sender: Any) {
        WebView.reload()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


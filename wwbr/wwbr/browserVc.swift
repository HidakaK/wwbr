import UIKit
import WebKit // WKWebViewを使うのでwebKitインポート

class BrowserVC: UIViewController {
    
    private var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // WKWebViewを生成
        webView = WKWebView(frame:CGRect(x:0, y:73, width:self.view.bounds.size.width, height:self.view.bounds.size.height))
        
        // フリップで進む・戻るを許可
        webView.allowsBackForwardNavigationGestures = true
        
        // Googleを表示
        let urlString = "http://www.google.com"
        let encodedUrlString = urlString.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)
        
        let url = NSURL(string: encodedUrlString!)
        let request = NSURLRequest(url: url! as URL)
        webView.load(request as URLRequest)
        
        // Viewに貼り付け
        self.view.addSubview(webView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

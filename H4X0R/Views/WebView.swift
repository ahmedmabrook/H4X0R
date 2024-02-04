//
//  WebView.swift
//  H4X0R
//
//  Created by Ahmed Moneer on 04/02/2024.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable
{
    let urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = urlString {
            if let url = URL(string: safeUrl){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}

//
//  ViewController.swift
//  I Spy
//
//  Created by Dylan Martin on 10/17/22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var seigePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView.delegate = self
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return seigePicture
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / seigePicture.bounds.width
        let heightScale = size.height / seigePicture.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
}


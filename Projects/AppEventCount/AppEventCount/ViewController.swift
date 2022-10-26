//
//  ViewController.swift
//  AppEventCount
//
//  Created by Dylan Martin on 10/12/22.
//

import UIKit

class ViewController: UIViewController {

    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }
    
    func updateView() {
        didFinishLaunchingWithOptions.text = "The App has launched \(appDelegate.launchCount) time(s)"
        configurationForConnecting.text = "The App has connected \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectTo.text = "The App will connect to \(willConnectCount) time(s)"
        sceneDidBecomeActive.text = "The App did become active \(becameActive) time(s)"
        sceneWillResignActive.text = "The App will resign active \(willResign) time(s)"
        sceneWillEnterForeground.text = "The App will enter foreground \(enterForeground) time(s)"
        sceneDidEnterBackground.text = "The App did enter background \(didEnterBackground) time(s)"
    }

    @IBOutlet weak var didFinishLaunchingWithOptions: UILabel!
   
    @IBOutlet weak var configurationForConnecting: UILabel!
   
    @IBOutlet weak var willConnectTo: UILabel!
    
    @IBOutlet weak var sceneDidBecomeActive: UILabel!
    
    
    @IBOutlet weak var sceneWillResignActive: UILabel!
    
    @IBOutlet weak var sceneWillEnterForeground: UILabel!
    
    @IBOutlet weak var sceneDidEnterBackground: UILabel!
    
    var willConnectCount = 0
    var didEnterBackground = 0
    var enterForeground = 0
    var willResign = 0
    var becameActive = 0
    var disconnect = 0
//    application(_:didFinishLaunchingWithOptions:)
//    application(_:configurationForConnecting:options:)
//    scene(_:willConnectTo:options:)
//    sceneDidBecomeActive(_:)
//    sceneWillResignActive(_:)
//    sceneWillEnterForeground(_:)
//    sceneDidEnterBackground(_:)
//

}


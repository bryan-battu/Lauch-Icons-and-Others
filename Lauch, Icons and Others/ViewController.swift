//
//  ViewController.swift
//  Lauch, Icons and Others
//
//  Created by Bryan Battu on 18/06/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Did Appear")
        if let mainView = view {
            print("Frame: \(mainView.frame)")
        }
        // CGRect
        let rect = CGRect(x: view.frame.width / 2 - 150 / 2, y: 100, width: 150, height: 80)
        let newView = UIView(frame: rect)
        newView.backgroundColor = .systemTeal
        view.addSubview(newView)
        let imageV = UIImageView()
        // Construction d'une frame à partir d'un CGPoint et d'un CGSize
        let point = CGPoint(x: view.frame.width / 2 - 75/2, y: view.frame.height / 2)
        let size = CGSize(width: 75, height: 75)
        imageV.frame = CGRect(origin: point, size: size)
        // Construction d'une frame avec x, y, width, height
        // imageV.frame = CGRect(x: view.frame.width / 2 - 75/2, y: view.frame.height / 2, width: 75, height: 75)
        imageV.image = UIImage(systemName: "paperplane")
        view.addSubview(imageV)
        print(imageV.frame)
        print(imageV.frame.size)
        print(imageV.frame.minX)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Did Disappear")
    }

}


//
//  ViewController.swift
//  Lauch, Icons and Others
//
//  Created by Bryan Battu on 18/06/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var newView: UIView?
    var label: UILabel?
    var imageV: UIImageView?

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
        setupView()
        setupLabel()
        setupImageV()
        if let mainView = view {
            print("Frame: \(mainView.frame)")
        }
       
        view.subviews.forEach { (v) in
            print(v)
            v.subviews.forEach { (subview) in
                print("Dans v:\(subview)")
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Did Disappear")
    }
    
    func setupLabel() {
        guard newView != nil else {
            return
        }
        label = UILabel(frame: newView!.bounds)
        label?.text = "Salut"
        newView!.addSubview(label!)
    }
    
    func setupImageV() {
        imageV = UIImageView()
        // Construction d'une frame à partir d'un CGPoint et d'un CGSize
        let point = CGPoint(x: view.frame.width / 2 - 75/2, y: view.frame.height / 2)
        let size = CGSize(width: 75, height: 75)
        imageV?.frame = CGRect(origin: point, size: size)
        // Construction d'une frame avec x, y, width, height
        // imageV.frame = CGRect(x: view.frame.width / 2 - 75/2, y: view.frame.height / 2, width: 75, height: 75)
        imageV?.image = UIImage(systemName: "paperplane")
        view.addSubview(imageV!)
        print(imageV!.frame)
        print(imageV!.frame.size)
        print(imageV!.frame.minX)
        
        // Position de la View par rapport à la supervue
        print(imageV!.frame)
        // Position de la View par rapport à elle-même
        print(imageV!.bounds)
        
        imageV!.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(removeLabel))
        imageV?.addGestureRecognizer(tap)
        tap.numberOfTapsRequired = 2
    }
    
    @objc func removeLabel() {
        if label == nil {
            setupLabel()
        } else {
            // Remove from superview
            label?.removeFromSuperview()
            // Remove from memory
            label = nil
        }
    }
    
    func setupView() {
        // CGRect
        let rect = CGRect(x: view.frame.width / 2 - 150 / 2, y: 100, width: 150, height: 80)
        newView = UIView(frame: rect)
        newView?.backgroundColor = .systemTeal
        view.addSubview(newView!)
    }

}

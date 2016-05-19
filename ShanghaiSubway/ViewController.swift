//
//  ViewController.swift
//  ShanghaiSubway
//
//  Created by Yufei Wang on 5/15/16.
//  Copyright © 2016 Yufei Wang. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIScrollViewDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    var locationRect = CGRect()
    var StationF = StationFinder()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap(_:)))
        self.imageView.userInteractionEnabled = true
        self.imageView.addGestureRecognizer(tapGestureRecognizer)
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 10.0
        locationRect = CGRectMake(0, 20, 20, 40)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        //print(imageView.center.x,imageView.center.y)
        return self.imageView
    }
    
    func handleTap(sender: UITapGestureRecognizer){
        //CGPoint p
        let touchPoint = sender.locationInView(self.imageView)
        let SI = StationF.whichStation(touchPoint.x, Y: touchPoint.y)
        if SI != -1 {
            print("station ID", SI)
        }
    }
    
}


//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Keagan Sweeney on 2/14/17.
//  Copyright © 2017 Keagan Sweeney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var contentWidth: CGFloat = 0.0
//        
//        for x in 0...2 {
//            let image = UIImage(named: "icon\(x).png")
//            let imageView = UIImageView(image: image)
//            images.append(imageView)
//            
//            // midX is center of view, for each x get the midX and add the width of the frame for scroll
//            var newX: CGFloat = 0.0
//            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
//            
//            contentWidth += newX
//            
//            // Create new subview on main view
//            scrollView.addSubview(imageView)
//            // coordinates of the subview on the main view
//            imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
//        }
//        
//        scrollView.backgroundColor = UIColor.purple
//        
//        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        
        print("Scroll view width: \(scrollView.frame.size.width)")
        
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            // midX is center of view, for each x get the midX and add the width of the frame for scroll
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            // Create new subview on main view
            scrollView.addSubview(imageView)
            // coordinates of the subview on the main view
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        // ClipsToBounds: Doesnt hide view under other views, always shows on top
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

}


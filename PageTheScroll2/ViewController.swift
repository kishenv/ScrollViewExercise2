//
//  ViewController.swift
//  PageTheScroll2
//
//  Created by Kishen Vinod on 4/25/17.
//  Copyright © 2017 Kishen Vinod. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
   
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]() //Array of type images..


    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        var contentWidth: CGFloat = 0.0                 //sets width of UI Scroll
        
        print("Scroll View Width: \(scrollView.frame.width)")
        
        for x in 0...2
        {
            let image = UIImage(named:"icon\(x).png")   //sets constant-image (in current iteration) to the chosen image in array
            let imageView = UIImageView(image:image)    //creates a constant imageView of type UIImageVIew
            images.append(imageView)
            
            var newX: CGFloat = 0.0                     // x axis point for current image
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
                                                        //sets x values of all images during each iteration..
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX-75, y: (view.frame.size.height/2)-75, width: 150, height: 150)
                                                        //sets x,y,width and height of UIImage
            
            
            print ("run instance")
            
        }
        scrollView.backgroundColor = UIColor.purple
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        print ("Count:\(images.count)")
    }


}


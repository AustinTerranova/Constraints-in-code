//
//  ViewController.swift
//  ImageView
//
//  Created by Austin Terranova on 12/3/18.
//  Copyright © 2018 Austin Terranova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBAction func button(_ sender: UIButton) {
        if(nextButton.tag == 0){
            imageView.image = UIImage(named: "LandsEnd" )
            nextButton.tag += 1
            print(nextButton.tag)
            
        }
        else if(nextButton.tag == 1) {
            imageView.image = UIImage(named: "Presidio" )
            nextButton.tag -= 1
            print(nextButton.tag)
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        createLayout()
        imageView.image = UIImage(named: "Presidio")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func createLayout() {
        let superview = self.view
        
        
       
        imageView.translatesAutoresizingMaskIntoConstraints = false
        superview?.addSubview(imageView)
      
        var myConstraint =
            NSLayoutConstraint(item: imageView,
                               attribute: .trailing,
                               relatedBy: NSLayoutConstraint.Relation.equal,
                               toItem: imageView,
                               attribute: .trailingMargin,
                               multiplier: 1.0,
                               constant: 0)
        
        superview?.addConstraint(myConstraint)
        myConstraint =
            NSLayoutConstraint(item: imageView,
                               attribute: .leading,
                               relatedBy: NSLayoutConstraint.Relation.equal,
                               toItem: imageView,
                               attribute: .leadingMargin,
                               multiplier: 1.0,
                               constant: 0)
        superview?.addConstraint(myConstraint)
        myConstraint =
           NSLayoutConstraint(item: imageView,
                                attribute: .top, relatedBy: NSLayoutConstraint.Relation.equal,
                                toItem: imageView,
                               attribute: .topMargin, multiplier: 1.0,
                               constant: 0)
        superview?.addConstraint(myConstraint)
        myConstraint =
            NSLayoutConstraint(item: imageView,
                               attribute: .bottom, relatedBy: NSLayoutConstraint.Relation.equal,
                               toItem: imageView,
                               attribute: .bottomMargin, multiplier: 1.0,
                               constant: 0)
        
        superview?.addConstraint(myConstraint)
    
    
    
        
    }


}


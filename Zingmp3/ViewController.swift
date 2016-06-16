//
//  ViewController.swift
//  Zingmp3
//
//  Created by Quan on 6/16/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var text_p2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           logo!.alpha = 0
           text!.alpha = 0
           text_p2!.alpha = 0
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
           UIView.animateWithDuration(4, animations: {
            self.logo!.alpha = 1
        
           }) { next in UIView.animateWithDuration(3, animations: {
            self.text!.center = CGPointMake(self.logo!.center.x, 70)
            self.text!.alpha = 1
        
           }) { finished in UIView.animateWithDuration(3, animations: {
            self.text_p2!.center = CGPointMake(self.logo!.center.x, 650)
            self.text_p2!.alpha = 1
            
           })
            
           }
      
        }
    

    }
    
}

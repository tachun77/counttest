//
//  ViewController.swift
//  counttest
//
//  Created by 福島達也 on 2016/06/11.
//  Copyright © 2016年 Tatsuya Fukushima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number : Int = 0
    
    @IBOutlet var label : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        label.textColor = labelColor()
    }
    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
        label.textColor = labelColor()
    }

    @IBAction func kakeru(){
        number = number * 2
        label.text = String(number)
        label.textColor = labelColor()
    }

    @IBAction func waru(){
        number = number / 2
        label.text = String(number)
        label.textColor = labelColor()
    }
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        label.textColor = labelColor()
        
    }

    
    func labelColor() -> UIColor {
        if number >= 1 {
            return UIColor.blueColor()
        }else if number == 0{
            return  UIColor.blackColor()
        }else{
            return UIColor.redColor()
        }
    

    
    //override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Stop Watch
//
//  Created by 西村　元晴 on 2018/12/08.
//  Copyright © 2018年 moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    
    var count: Int = 0
    
    var timer: Timer = Timer()
    
    @IBOutlet var timerlabel: UILabel!
    
   
    
    
  
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    @IBAction func start(){
        
            
    timer = Timer.scheduledTimer(timeInterval: 1,
                                target: self,
                                selector: #selector(self.up),
                                userInfo: nil,
                                repeats: true
            )
        
    }
        @IBAction func stop(){
            timer.invalidate()
        
        if !timer.isValid{
            }
          
    }
    
    @objc func up(){
        count = count - 1
        
        if count <= 0{
            timer.invalidate()
        }
        
        label.text = String(format: "%.02d")
        
        let count1:Int = count/60
        let count2:Int = count%60
        
        label.text = String(format: "%.02d:%.02d",count1,count2)
        print(count1)
        
        let sScond = String(format:"%02", count2)
    }
    @IBAction func reset(){
        if count >= 0 {
            timer.invalidate()
        }
            count = 0
            label.text = String(format: "%.02d:%.02d")
    }
    @IBAction func time1 () {
        count = count + 600
        let count1:Int = count/60
        let count2:Int = count%60
        
        label.text = String(format: "%.02d", count2)
        label.text = String(format: "%.02d:%.02d",count1,count2)
        
    }
    @IBAction func time2 () {
        count = count + 60
        let  count1:Int = count/60
        let  count2:Int = count%60
        
        label.text = String(format: "%.02d", count2)
        label.text = String(format: "%.02d:%.02d",count1,count2)
        
    }
    @IBAction func time3 () {
        count = count + 10
        let  count1:Int = count/60
        let  count2:Int = count%60
        
        label.text = String(format: "%.02d", count2)
        label.text = String(format: "%.02d:%.02d",count1,count2)
        
    }
    @IBAction func time4 () {
        count = count + 1
        let  count1:Int = count/60
        let  count2:Int = count%60
        
        label.text = String(format: "%.02d", count2)
        label.text = String(format: "%.02d:%.02d",count1,count2)
        
        
    }
    
}

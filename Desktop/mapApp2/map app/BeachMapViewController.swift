//
//  BeachMapViewController.swift
//  map app
//
//  Created by Mentor on 7/23/15.
//  Copyright (c) 2015 Computer Mentor. All rights reserved.
//

import UIKit

class BeachMap: UIViewController {

    var timer = NSTimer()
    var x = CGFloat()
    var y = CGFloat()
    
    var started = false
    
    @IBOutlet weak var Redcar: UIImageView!

    @IBAction func Leftbutton(sender: AnyObject) {
        if started == false {
            Redcar.frame.origin.x = 197
            Redcar.frame.origin.y = 10
            Redcar.hidden = false
              started = true
        }
        
        

    
    Redcar.image = UIImage(named: "carLeft2.png");
    timer.invalidate()
    moveleft()
    println ("X: \(Redcar.frame.origin.x)")

    }
    
    @IBAction func HoldLeft(sender: AnyObject) {
  
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveleft"), userInfo: nil, repeats: true)
    
    
    
    }
   
    func moveleft(){
    x = Redcar.frame.origin.x
    y = Redcar.frame.origin.y
  
        
   if ((y >= 434 && y <= 442 && x > 137 && x <= 257) ||
       (y >= 362 && y <= 374 && x > 201 && x <= 309) ||
       (y >= 274 && y <= 290 && x > 201 && x <= 309) ||
       (y >= 130 && y <= 138 && x > 125 && x <= 209) ||
       (y >= 90 && y <= 98 && x > 197 && x <= 309 )
    ){
        
        Redcar.image = UIImage(named:"carLeft2.png")
        Redcar.frame.origin.x = Redcar.frame.origin.x - 4
        
        }
  
    
    
    
    }
    
    
    
    @IBAction func UpButton(sender: AnyObject) {
        if started == false {
            Redcar.frame.origin.x = 197
            Redcar.frame.origin.y = 10
            Redcar.hidden = false
            started = true
        }
      
        
        
    
        Redcar.image = UIImage(named: "carUp2.png");
    
    timer.invalidate()
    moveup()
    println ("Y: \(Redcar.frame.origin.y)")
    
    }
    
    
    
    @IBAction func HoldUp(sender: AnyObject) {
   
    timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveup"), userInfo: nil, repeats: true)
    
    }
    
    
    
    
    func moveup (){
    x = Redcar.frame.origin.x
    y = Redcar.frame.origin.y
    
        if( (x >= 197 && x <= 209 && y > 4 && y <= 370) ||
            (x >= 301 && x <= 309 && y > 278 && y <= 370) ||
            (x >= 245 && x <= 257 && y > 362 && y <= 498) ||
            (x >= 273 && x <= 281 && y > 138 && y <= 290)
        
            ){
                Redcar.image = UIImage(named: "carUp2.png")
                Redcar.frame.origin.y = Redcar.frame.origin.y - 4
        }
        
        
      
  
    
    
    }
   
    
    
    
    @IBAction func RightButton(sender: AnyObject) {
        if started == false {
            Redcar.frame.origin.x = 197
            Redcar.frame.origin.y = 10
            Redcar.hidden = false
            started = true
        }
    

    Redcar.image = UIImage(named: "carRight2.png");
    timer.invalidate()
    moveright()
    
    println ("X: \(Redcar.frame.origin.x)")

    
    
    }
    
    @IBAction func HoldRight(sender: AnyObject) {
    
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveright"), userInfo: nil, repeats: true)
    
    }
    
   
    
    func moveright(){
    x = Redcar.frame.origin.x
    y = Redcar.frame.origin.y
       
        
        
        
        if ((y >= 434 && y <= 442 && x >= 137 && x < 257) ||
            (y >= 362 && y <= 374 && x >= 201 && x < 309) ||
            (y >= 274 && y <= 290 && x >= 201 && x < 309) ||
            (y >= 130 && y <= 138 && x >= 125 && x < 209) ||
            (y >= 90 && y <= 98 && x >= 197 && x < 309 )
            ){
                
                Redcar.image = UIImage(named:"carRight2.png")
                Redcar.frame.origin.x = Redcar.frame.origin.x + 4
                
        }
        
    
    }
    
    
    
    @IBAction func DownButton(sender: AnyObject) {
        if started == false {
            Redcar.frame.origin.x = 197
            Redcar.frame.origin.y = 10
            Redcar.hidden = false
            started = true
        }
     
    
         Redcar.image = UIImage(named: "carDown2.png");
        timer.invalidate()
        movedown()
         println ("Y: \(Redcar.frame.origin.y)")
    
    }
   
    @IBAction func HoldDown(sender: AnyObject) {
   
    timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("movedown"), userInfo: nil, repeats: true)
    
    
    }
    
    
    func movedown(){
    x = Redcar.frame.origin.x
    y = Redcar.frame.origin.y
        if( (x >= 197 && x <= 209 && y >= 0 && y < 370) ||
            (x >= 301 && x <= 309 && y >= 278 && y < 370) ||
            (x >= 245 && x <= 257 && y >= 362 && y < 498) ||
            (x >= 273 && x <= 281 && y >= 138 && y < 290)
            
            ){
                Redcar.image = UIImage(named: "carDown2.png")
                Redcar.frame.origin.y = Redcar.frame.origin.y + 4
        }
        
        
    
    }
    
    override func viewDidLoad() {
        
        
        
        Redcar.hidden = true
        
        
        
        
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

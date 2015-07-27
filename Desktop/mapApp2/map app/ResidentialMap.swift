//
//  ResidentialMap.swift
//  map app
//
//  Created by Mentors on 7/14/15.
//  Copyright (c) 2015 Computer Mentor. All rights reserved.
//

import UIKit

class ResidentialMap: UIViewController {
    var startedMoving = false
    var timer = NSTimer()
   
    var x = CGFloat()
   
    var y = CGFloat()
   
    @IBOutlet weak var AlertButtonOutlet: UIButton!
    @IBAction func AlertButtonAction(sender: AnyObject) {
   
    
    
    
    
    }
    @IBOutlet weak var CarFigure: UIImageView!
    @IBAction func LeftButton(sender: AnyObject) {
        if (startedMoving == false){
            CarFigure.hidden = false
          
            
        }
        
        
        CarFigure.hidden = false
        println ("X: \(CarFigure.frame.origin.x)")
        timer.invalidate()
        moveleft()
  
        
        
        
        
    }
    
    @IBAction func HoldLeft(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveleft"), userInfo: nil, repeats: true)
     
    }
    
    
    func moveleft(){
        x = CarFigure.frame.origin.x
        y = CarFigure.frame.origin.y
        
        if( y <= 144 && y >= 124 && x <= 205 && x > 3) || ( y <= 102 && y >= 90 && x > 201 && x <= 305) || (  y <= 290 && y >= 278 && x > 3 && x <= 305) || (y >= 362 && y <= 370 && x > 3 && x <= 305) || ( x <= 255 && x > 3 && y >= 434 && y <= 454){
               CarFigure.image = UIImage(named: "moveLeft2.png");
               CarFigure.frame.origin.x -= 4
        }
        
     
        
    }
    
    @IBAction func UpButton(sender: AnyObject) {

        timer.invalidate()
        moveup()
        if ( y <= 108 && x == 215){
        
        AlertButtonOutlet.hidden = false
        
        }
        
       
    }
    
    @IBAction func HoldUp(sender: AnyObject) {
    
    timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveup"), userInfo: nil, repeats: true)
   
    
    
    }
    
    func moveup(){
        x = CarFigure.frame.origin.x
        y = CarFigure.frame.origin.y
        
        if ( y <= 500 && y > 366 && x >= 245 && x <= 257) || ( y <= 376 && y > 282 && x <= 305 && x >= 297) || ( y <= 376 && y > 282 && x >= 1 && x <= 5) || ( x >= 199 && x <= 207 && y <= 296 && y > 4) || (x >= 275 && x <= 279 && y <= 288 && y >= 140){
            CarFigure.image = UIImage(named: "bikeUp.png");
         CarFigure.frame.origin.y -= 4
         println ("Y: \(CarFigure.frame.origin.y)")
        
        }
        
       
        
    
    
    }
    @IBAction func RightButton(sender: AnyObject) {

        timer.invalidate()
        moveright()
        
        if ( y <= 108 && x == 215){
            
            AlertButtonOutlet.hidden = false
            
        }
    }
    
    @IBAction func HoldRight(sender: AnyObject) {
    
    timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveright"), userInfo: nil, repeats: true)
    
    
    
    }
    func moveright(){
   
       x = CarFigure.frame.origin.x
       y = CarFigure.frame.origin.y
        println ("X: \(CarFigure.frame.origin.x)")
       
        if( y >= 124 && y <= 144 && x < 205 && x >= 0) || ( y <= 102 && y >= 90 && x >= 199 && x < 300) || (  y <= 290 && y >= 278 && x >= 0 && x < 300) || (y >= 362 && y <= 370 && x >= 0 && x < 300) || ( x < 253 && x >= 0 && y >= 434 && y <= 454){
            CarFigure.image = UIImage(named: "bikeRight2.png");
            CarFigure.frame.origin.x += 4
            
         
        }
        
    
    }
    
    @IBAction func DownButton(sender: AnyObject) {
       timer.invalidate()
       movedown()
        
        println ("Y: \(CarFigure.frame.origin.y)")
        
    }
    
    @IBAction func HoldDown(sender: AnyObject) {
    
    timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("movedown"), userInfo: nil, repeats: true)
  
    
    }
    
    
    
    func movedown(){
    x = CarFigure.frame.origin.x
    y = CarFigure.frame.origin.y
        

        
        if ( y < 492 && y >= 364 && x >= 245 && x <= 257) || ( y < 376 && y >= 278 && x <= 305 && x >= 297) || ( y < 376 && y >= 278 && x >= 1 && x <= 5) || ( x >= 199 && x <= 207 && y < 292 && y >= 0) || (x >= 275 && x <= 279 && y < 280 && y >= 136){
             CarFigure.image = UIImage(named: "bikeDown2.png");
             CarFigure.frame.origin.y = CarFigure.frame.origin.y + 4
            
            
        }
    
    
    }
   
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
       // CarFigure.hidden = true
       //AlertButtonOutlet.hidden = true
        //Arrow.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}





    
   
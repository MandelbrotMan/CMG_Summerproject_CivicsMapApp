//
//  ViewController.swift
//  map app
//
//  Created by Mentor on 7/8/15.
//  Copyright (c) 2015 Computer Mentor. All rights reserved.
//
/*
FutureStickFigure.frame.origin.x = x
FutureStickFigure.frame.origin.y = y
*/
import UIKit
import Darwin
class ViewController: UIViewController {
var started = false
var x = CGFloat()
var y = CGFloat()
var timer = NSTimer()
var rotatedLeft = false
    
var AlertPressed = false
var MissionComplete = false
    
    
   @IBOutlet weak var FutureStickFigure: UIImageView!
  
    @IBOutlet weak var Arrow: UIButton!
    
    @IBOutlet weak var AlertButton: UIButton!
   
    @IBOutlet weak var AlertMessage: UILabel!
    
    @IBOutlet weak var MissionCompletedMessage: UILabel!
    
    
    @IBOutlet weak var lightImage: UIImageView!
    
    func MissionDone (){
        if FutureStickFigure.frame.origin.x == 44 && FutureStickFigure.frame.origin.y <= 76 && FutureStickFigure.frame.origin.y >= 68 && AlertButton.hidden == false{
        MissionComplete = true
            
        MissionCompletedMessage.hidden = false
            delay(3.0){
                self.MissionCompletedMessage.hidden = true
                    self.lightImage.image = UIImage(named: "happyFixedLight.png");
            }
            
        }
        
        
    }
    
    @IBAction func AlertAction(sender: AnyObject) {
        if AlertPressed == false {
            AlertMessage.hidden = false
            AlertPressed = true
            lightImage.hidden = false
            
        }
        else {
            
            AlertMessage.hidden = true
            AlertPressed = false
            
        }
        
    }
    
    
    
    
    
    
    @IBAction func MoveDownButton(sender: AnyObject) {
        
        x = FutureStickFigure.frame.origin.x
        y = FutureStickFigure.frame.origin.y
        timer.invalidate()
        moveDown()
        
        if started == false {
            FutureStickFigure.frame.origin.x = 276
            FutureStickFigure.frame.origin.y = 168
            FutureStickFigure.hidden = false
            started = true
            
            
        }
    }
    
    @IBAction func HoldDown(sender: AnyObject) {
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveDown"), userInfo: nil, repeats: true)
        
    }
    
    func moveDown(){
        x = FutureStickFigure.frame.origin.x
        y = FutureStickFigure.frame.origin.y
        
        x = FutureStickFigure.frame.origin.x
        y = FutureStickFigure.frame.origin.y
        
        if((x <= 276 && x > 268 && y < 172) ||
            (x <= 220 && x >= 212 && y < 172) ||
            (x >= 92 && x <= 100 && y < 76 && y >= 0) ||
            (y <= 352 && y > 0 && x >= 0 && x < 4) ||
            (x >= 136 && x <= 140 && y < 356 && y >= 164) ||
            (x >= 112 && x <= 116 && y >= 344 && y < 500) ||
            (x >= 304 && x <= 312 && y >= 344 && y < 500)){
                FutureStickFigure.frame.origin.y += 4
                FutureStickFigure.image = UIImage(named: "carDown2.png");
                println("y: \(y)")
        }
        
        
    }
    
    
    @IBAction func MoveLeft(sender: AnyObject) {
        
        
        if started == false {
            FutureStickFigure.frame.origin.x = 276
            FutureStickFigure.frame.origin.y = 168
            
            started = true
            FutureStickFigure.hidden = false
            
        }
        FutureStickFigure.image = UIImage(named: "carLeft2.png");
        timer.invalidate()
        moveleft()
        //if MissionComplete == true {
        
        //MissionCompletedMessage.hidden = true
        
        //}
        
    }
    @IBAction func Holdleft(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveleft"), userInfo: nil, repeats: true)
        FutureStickFigure.image = UIImage(named: "carLeft2.png");
        
        
    }
    
    func moveleft() {
        
        x = FutureStickFigure.frame.origin.x
        y = FutureStickFigure.frame.origin.y
        
        
        if((x <= 304 && x > 72 && y <= 172 && y >= 160) ||
            (x <= 268 && x > 216 && y <= 60 && y >= 56 ) ||
            (x <= 220 && x > 0 && y >= 68 && y <= 76) ||
            (y >= 276 && y <= 280 && x > 0 && x <= 136) ||
            (x > 132 && x <= 304 && y >= 228 && y <= 240) ||
            (y >= 344 && y <= 356 && x > 4 && x <= 308) ||
            (x > 60 && x <= 304 && y >= 440 && y <= 448)){
                FutureStickFigure.frame.origin.x -= 4
                println("X: \(FutureStickFigure.frame.origin.x)")
                MissionDone()
                
        }
        
        
        
        
        
        
        
        
        
    }
    
    
    
    @IBAction func MoveUpButton(sender: AnyObject) {
        x = FutureStickFigure.frame.origin.x
        y = FutureStickFigure.frame.origin.y
        timer.invalidate()
        moveup()
        if started == false {
            FutureStickFigure.frame.origin.x = 276
            FutureStickFigure.frame.origin.y = 168
            FutureStickFigure.hidden = false
            started = true
        }
    }
    
    @IBAction func HoldUP(sender: AnyObject) {
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveup"), userInfo: nil, repeats: true)
        
    }
    
    func moveup() {
        x = FutureStickFigure.frame.origin.x
        y = FutureStickFigure.frame.origin.y
        
        if((x <= 276 && x > 268 && y < 180) ||
            (x <= 220 && x >= 212 && y <= 172) ||
            (x >= 92 && x <= 100 && y <= 76 && y > 0) ||
            (y <= 352 && y > 0 && x >= 0 && x < 4) ||
            (x >= 136 && x <= 140 && y <= 356 && y > 164) ||
            (x >= 112 && x <= 116 && y > 344 && y <= 500) ||
            (x >= 304 && x <= 312 && y > 344 && y <= 500)){
                FutureStickFigure.frame.origin.y -= 4
                FutureStickFigure.image = UIImage(named: "carUp2.png");
                println("y: \(y)")
                
        }
        
    }
    @IBAction func MoveRight(sender: AnyObject) {
        
        
        FutureStickFigure.image = UIImage(named: "carRight2.png");
        if started == false {
            FutureStickFigure.frame.origin.x = 276
            FutureStickFigure.frame.origin.y = 168
            FutureStickFigure.hidden = false
            started = true
            
        }
        timer.invalidate()
        moveRight()
        //if MissionComplete == true {
        
        // MissionCompletedMessage.hidden = true
        
        //}
    }
    
    
    @IBAction func HOLDRIGHT(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("moveRight"), userInfo: nil, repeats: true)
        FutureStickFigure.image = UIImage(named: "carRight2.png")
        
        
    }
    
    
    func moveRight(){
        x = FutureStickFigure.frame.origin.x
        y = FutureStickFigure.frame.origin.y
        println("X: \(FutureStickFigure.frame.origin.x)")
        
        
        if((x < 304 && x >= 72 && y <= 172 && y >= 160) ||
            (x < 268 && x >= 216 && y <= 60 && y >= 56 ) ||
            (x < 220 && x >= 0 && y >= 68 && y <= 76) ||
            (y >= 276 && y <= 280 && x >= 0 && x < 136) ||
            (x >= 132 && x < 304 && y >= 228 && y <= 240) ||
            (y >= 344 && y <= 356 && x >= 0 && x < 304) ||
            (x >= 60 && x < 304 && y >= 440 && y <= 448)){
                
                FutureStickFigure.frame.origin.x += 4
                println("X: \(FutureStickFigure.frame.origin.x)")
                FutureStickFigure.image = UIImage(named: "carRight2.png");
                MissionDone()
                ///Condition for showing arrow
                
                //Condition for showing alert
                if  x == 240  && ( y == 236 || y == 240 || y == 232){
                    AlertButton.hidden = false
                }
                if (x == 188 && ( y == 344 || y == 348 || y == 352))  && (MissionComplete == true) {
                    
                    Arrow.hidden = false
                }
                
                
                
        }
        
        
        
        
        
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,Int64(delay * Double(NSEC_PER_SEC))),dispatch_get_main_queue(), closure)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        lightImage.hidden = true
        FutureStickFigure.hidden = true
        AlertButton.hidden = true
        Arrow.hidden = true
        AlertMessage.hidden = true
        MissionCompletedMessage.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}













                    
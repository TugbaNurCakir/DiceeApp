//
//  ViewController.swift
//  DiceeApp
// tugbalp



import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    let diceArray = ["dice1","dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    var randomDiceIndex1  = Int()
    var randomDiceIndex2  = Int()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    
        
    func updateDiceImages() {
   
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        print(randomDiceIndex2)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]   )
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2]   )
        
        
        //print ( diceArray[1] )
        
        print (diceArray[3])
        print (diceArray[0])
    
        
        
        //UIImage(named: diceArray[randomDiceIndex1])
       // diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            updateDiceImages()
            
            
        }
        
    }
    
    
    
    
}


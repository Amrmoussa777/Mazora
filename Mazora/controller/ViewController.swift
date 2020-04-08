//
//  ViewController.swift
//  Mazora
//
//  Created by Amr Moussa on 4/7/20.
//  Copyright © 2020 Amr Moussa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chestLabel: UILabel!
    @IBOutlet weak var sleeveLabel: UILabel!
    @IBOutlet weak var waistLabel: UILabel!
    @IBOutlet weak var legLabel: UILabel!
    @IBOutlet weak var sheslabel: UILabel!
    @IBOutlet weak var measuermentImageView: UIImageView!
    @IBOutlet weak var genderSegment: UISegmentedControl!
    var chest:Float = 0.0
    var sleevs:Float = 0.0
    var waist:Float = 0.0
    var leg:Float = 0.0
    var shoes:Float = 0.0
    var sizecalc = CalcSize()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func chestSliderchanged(_ sender: UISlider) {
        chestLabel.text = String(format: "%.2f", sender.value) + "cm"
        chest = sender.value
        
    }
    
    @IBAction func sleeve(_ sender: UISlider) {
        sleeveLabel.text = String(format: "%.2f", sender.value) + "cm"
        sleevs = sender.value
    }
    

    @IBAction func waistSliderChanged(_ sender: UISlider) {
        waistLabel.text = String(format: "%.2f", sender.value) + "cm"
        waist = sender.value
    }
    
    @IBAction func ledSliderChanged(_ sender: UISlider) {
   
        legLabel.text = String(format: "%.2f", sender.value) + "cm"
        leg = sender.value
    }
    

    @IBAction func shoeSliderChanged(_ sender: UISlider) {
        sheslabel.text = String(format: "%.2f", sender.value) + "cm"
        shoes = sender.value
    }


    @IBAction func claculat(_ sender: UIButton) {
        print(chest)
        print(waist)
        sizecalc.calcsize(chest: chest, waist: waist, sleeve: sleevs, leg: leg, shoes: shoes)
        print(sizecalc.getpantsize())
        print(sizecalc.getshirtsize())
        print(sizecalc.getshoes())
 /**
         
         TO DO tommorow:
         change imageview with slider changed
            create new screen to view results with segue
            
         
         */
        
        self.performSegue(withIdentifier: "showResultSegue", sender: self)
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
        if segue.identifier == "showResultSegue" {
            let resultviewconroler = segue.destination as! ResultViewController
            resultviewconroler.sizeresult = sizecalc
            
            
        }
     }








}

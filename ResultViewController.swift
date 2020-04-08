//
//  ResultViewController.swift
//  Mazora
//
//  Created by Amr Moussa on 4/8/20.
//  Copyright © 2020 Amr Moussa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var sizeresult:CalcSize?!

    @IBOutlet weak var sizeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        sizeLabel.text = "Your Sizes \n" + "ShirtSize: " + sizeresult?!.getshirtsize() + "\n" + "Pants Size: " + sizeresult?!.getpantsize() + "\nShoes Size: " + sizeresult?!.getshoes()
        sizeLabel.text = "Your Sizes \n" + "ShirtSize: "
        sizeLabel.text?.append(sizeresult!.getshirtsize())
        sizeLabel.text?.append( "\n" + "Pants Size: ")
         sizeLabel.text?.append( sizeresult!.getpantsize())
        sizeLabel.text?.append("\nShoes Size: ")
      sizeLabel.text?.append(  sizeresult!.getshoes())
        
        
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

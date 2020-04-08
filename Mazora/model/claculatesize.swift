//
//  claculatesize.swift
//  Mazora
//
//  Created by Amr Moussa on 4/7/20.
//  Copyright © 2020 Amr Moussa. All rights reserved.
import UIKit
struct CalcSize {
var  size:Size?
    var shirt :String = ""
    var sheos:String = ""
    var pants:String = ""
    func getshirtsize() ->String{
        if let shirt = size?.shirtSize{
            return shirt
            }
        else{
            return "none"
        }
        
    }
    func getpantsize() -> String{
        if let pants = size?.pantssize{
            return pants
            }
        else{
            return "none"
        }
    }
    func getshoes() ->String{
        if let shoes = size?.shoesSize{
            return shoes
            }
        else{
            return "none"
        }
        
    }
    mutating func calcsize(chest:Float,waist:Float,sleeve:Float,leg:Float,shoes:Float){
        
        switch Int(chest) {
        case ...96:
           shirt = "S"
            case 97...101:
           shirt = "M"
            case 102...106:
            shirt = "L"
            case 107...111:
        shirt = "xl"
            case 112...116:
           shirt = "S"
        default:
           shirt = "xxl"
        }
        
        if waist<86 && leg < 80{
            
            pants = "S"
            
        }
        else if waist<91 && leg < 85{
            
            pants = "M"
        }
        else if waist<97 && leg < 88{
                   
                pants = "l"
               }
        else if waist<104 && leg < 92{
                   
                 pants = "xl"
               }
        else if waist>104 && leg > 99{
                   
                pants = "XXl"
               }
        else{
           pants = "M"
        }
        
        if shoes < 26{
            
           sheos = "41\""
        }else if shoes < 27{
            
            sheos = "42\""
        }
        else if shoes < 28{
            
            sheos = "43\""
        }else if shoes < 29{
            
           sheos = "44\""
        }else if shoes < 30{
            
           sheos = "45\""
        }else if shoes < 31{
            
         sheos = "46\""
        }
        else{
            sheos = "47\""
        }
        size = Size(shirtSize: shirt, pantssize: pants, shoesSize: sheos)
    }
    
 
    
}

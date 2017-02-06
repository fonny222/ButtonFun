//
//  ViewController.swift
//  ButtonFun
//
//  Created by Christopher Fontana on 1/30/17.
//  Copyright © 2017 Christopher Fontana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        // this line retrieves the tapped buttons 
        // title using "sender"
       let title = sender.title(for: .selected)!
       
        //this line creates a new string by appending the text
        // to the title we retrieved in the previous line
        let text = "\(title) button pressed"
        
        // creates an attributed string-specifically. an instance
        // based on the string we are going to display
        // it is mutable attributed because we want to changes its attributes
        let styledText = NSMutableAttributedString(string: text)
        
        // creates a dictionary to hold the attributes we want to apply to our string.
        let attributes = [
            // key NSFontAttributeName lets us specify a font for a portion of the attributed string
            // we are passing bold font into the size
            NSFontAttributeName:
                UIFont.boldSystemFont(ofSize:
            statusLabel.font.pointSize)
        ]
        
        
        let nameRange = (text as NSString).range(of: title)
        styledText.setAttributes(attributes,range: nameRange)
        
        statusLabel.attributedText = styledText
        
        
        /*
        // this line assigns the new string to the labels text
        // property which is how we change the text that 
        // the label is displaying
        statusLabel.text = text
 
 */
        
    }
    
    
}


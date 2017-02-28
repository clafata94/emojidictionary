//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Connor Lafata on 2/23/17.
//  Copyright © 2017 Connor Lafata. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var creationLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.icon
        creationLabel.text = "Creation date: \(emoji.creationDate)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Connor Lafata on 2/21/17.
//  Copyright © 2017 Connor Lafata. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainTableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableview.dataSource = self
        mainTableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.icon
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 =  Emoji()
        emoji1.icon = "😀"
        emoji1.creationDate = 2007
        emoji1.category = "Smileys and People"
        emoji1.definition = "A grinning face"
        
        let emoji2 =  Emoji()
        emoji2.icon = "😎"
        emoji2.creationDate = 2009
        emoji2.category = "Smileys and People"
        emoji2.definition = "Smiling face with sunglasses"
        
        let emoji3 =  Emoji()
        emoji3.icon = "😡"
        emoji3.creationDate = 2009
        emoji3.category = "Smileys and People"
        emoji3.definition = "A pouting face"
        
        let emoji4 =  Emoji()
        emoji4.icon = "👍"
        emoji4.creationDate = 2010
        emoji4.category = "Smileys and People"
        emoji4.definition = "Thumbs up"
        
        let emoji5 =  Emoji()
        emoji5.icon = "💩"
        emoji5.creationDate = 2008
        emoji5.category = "Smileys and People"
        emoji5.definition = "A poo face"
        
        let emoji6 =  Emoji()
        emoji6.icon = "🐷"
        emoji6.creationDate = 2011
        emoji6.category = "Animals"
        emoji6.definition = "A pig face"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }


}


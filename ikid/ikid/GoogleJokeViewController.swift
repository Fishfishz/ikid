//
//  GoogleJokeViewController.swift
//  ikid
//
//  Created by Fishzz on 5/4/21.
//  joke reference: https://upjoke.com/google-jokes

import UIKit

class GoogleJokeViewController: UIViewController {
    
    @IBOutlet weak var jokeContent: UILabel!
    
    var joke: [String] = ["What is Google chrome's favorite meat to eat?", "RAM"]
    var flipped: Bool = false
    
    
    @IBAction func flip(_ sender: Any) {
        flipped = !flipped
        if (flipped == true) {
            jokeContent.text = joke[1]
        } else {
            jokeContent.text = joke[0]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        flipped = false
        jokeContent.text = joke[0]
    }
}

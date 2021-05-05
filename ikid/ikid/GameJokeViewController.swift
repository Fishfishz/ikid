//
//  GameJokeViewController.swift
//  ikid
//
//  Created by Fishzz on 5/4/21.
//  Joke reference: https://www.gamedesigning.org/video-game-jokes/

import UIKit

class GameJokeViewController: UIViewController {
    
    @IBOutlet weak var jokeContent: UILabel!
    var joke: [String] = ["How do you make people change direction in Minecraft?", "You Block their path."]
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

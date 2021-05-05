//
//  CodeJokeViewController.swift
//  ikid
//
//  Created by Fishzz on 5/4/21.
//  Joke reference: https://www.databasestar.com/programmer-jokes



import UIKit

class CodeJokeViewController: UIViewController {
    
    @IBOutlet weak var jokeContent: UILabel!
    var joke: [String] = ["Knock, knock", "Who's there?", "very long pause...", "Java"]
    var flipped: Int = 0
    
    @IBAction func flip(_ sender: Any) {
        if (flipped == 3) {
            flipped = 0;
        } else {
            flipped = flipped + 1;
        }
        jokeContent.text = joke[flipped]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        flipped = 0
        jokeContent.text = joke[flipped]
    }
}

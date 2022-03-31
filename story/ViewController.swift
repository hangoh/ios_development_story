//
//  ViewController.swift
//  story
//
//  Created by Goh Yuhan on 2022/03/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var quizbrain = quizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let data = quizbrain.startStory()
        storyLabel.text = data[0]
        choice1Button.setTitle(data[1], for: .normal)
        choice2Button.setTitle(data[2], for: .normal)

        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let data = quizbrain.getNextStory(choice: sender.currentTitle!)
        storyLabel.text = data[0]
        choice1Button.setTitle(data[1], for: .normal)
        choice2Button.setTitle(data[2], for: .normal)
    }
    
}


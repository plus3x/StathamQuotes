//
//  ViewController.swift
//  StathamQuotes
//
//  Created by Vladislav Petrov on 06/08/2019.
//  Copyright © 2019 Vladislav Petrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Source: https://www.azquotes.com/author/27298-Jason_Statham
    let quotes: [String] = [
        "I've come from nowhere, and I'm not shy to go back.",
        "Your body is like a piece of dynamite. You can tap it with a pencil all day, but you'll never make it explode. You hit it once with a hammer: Bang! Get serious. Do 40 hard minutes, not an hour and half of nonsense. It's so much more rewarding.",
        "There is something about yourself that you don't know.",
        "Do 40 hard minutes, not an hour and a half of nonsense.",
        "People take chances every now and then, and you don't want to disappoint them.",
        "Musclemen grow on trees. They can tense their muscles and look good in a mirror. So what? I'm interested in practical strength that's going to help me run, jump, twist, punch.",
        "People take chances every now and then, and you don't want to disappoint them.",
        "Looking good and feeling good go hand in hand. If you have a healthy lifestyle, your diet and nutrition are set and you're working out, you're going to feel good.",
        "And if people come up and say they like the movies you're in, it's a great compliment.",
        "I should never go with rumors because they're often not correct.",
        "I love to get behind the wheel and get competitive.",
        "Once you expose your private life, if you give one little bit, the floodgates are open and everyone's got a free range for you.",
        "I'm used to being efficient and a guy that can do more than the average guy can.",
        "One of the toughest guys in the world is Randy Couture - he is the true epitome of what a tough guy is.",
        "People like to pigeonhole you.",
        "The fight training was very extensive, a lot of stretching, a lot of coordination of balance exercises.",
        "I'm enthusiastic and ambitious, and I work hard.",
        "I think that's as far as you have to think, everything happens as a coincidence. It either happens or it doesn't. It's hard to map out a strategic plan by saying, 'If I do that, that's going to get me to the next level.' I think that's the wrong way to go into movies as an actor. It doesn't happen for me that way.",
        "I just gravitate to those more testosterone-filled sort of parts than me playing something a bit more fairy-like.",
        "You only get one shot in your life and you might as well push yourself and try things. There's so many interesting aspects of making a movie; the costume department, the set design, the casting itself, the locations. It's a great, great thing to be involved in if you have the headspace for it, and I do. Try anything once.",
        "I’m prepared to take risks. And every movie that I do is a risk. No one knows what the movie is going out turn out like.",
        "I suppose that's the European way, dangerous and hairy.",
        "The insurance of working with a big, already successful franchise just gives you the chance to do other things on a more personal level.",
        "It's not like I'm dying to do work that's taken seriously, and I'm not looking to become a thespian. It's not what I'm looking for; I'm just looking to do quality work.",
        "I've been unfortunate enough to be working, and recovering from a few injuries now and again.",
        "I used to play a lot of racket sports, tennis and squash."
    ]

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var stathamPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoteLabel.numberOfLines = 0
        quoteLabel.lineBreakMode = .byWordWrapping
        quoteLabel.adjustsFontSizeToFitWidth = true
        
        newQuote()
    }

    @IBAction func onTapMoreButton(_ sender: Any) {
        newQuote()
    }
    
    private func newQuote() {
        quoteLabel.text = quotes.shuffled()[0]
        
        quoteLabel.sizeToFit()
        
        stathamPhoto.frame = CGRect(
            x: 70,
            y: quoteLabel.frame.height + 20,
            width: stathamPhoto.frame.width,
            height: stathamPhoto.frame.height)
    }
}

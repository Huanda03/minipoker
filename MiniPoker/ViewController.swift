//
//  ViewController.swift
//  MiniPoker
//
//  Created by Mac2 on 11/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carta1ImageView: UIImageView!
    @IBOutlet weak var Carta2ImageView: UIImageView!
    @IBOutlet weak var Carta3ImageView: UIImageView!
    @IBOutlet weak var carta4ImageView: UIImageView!
    @IBOutlet weak var carta5ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func voltearButton(_ sender: UIButton) {
        let baraja = [ #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "6") ]
        carta1ImageView.image = baraja [ Int.random(in: 0...9)]
        Carta2ImageView.image = baraja [ Int.random(in: 0...9)]
        Carta3ImageView.image = baraja [ Int.random(in: 0...9)]
        carta4ImageView.image = baraja [ Int.random(in: 0...9)]
        carta5ImageView.image = baraja [ Int.random(in: 0...9)]
    }
    
}


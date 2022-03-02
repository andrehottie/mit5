//
//  GameViewController.swift
//  gioco
//
//  Created by LabMiT03 on 09/02/22.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Presenta la scena
        if let view = self.view as! SKView? {
            let scene = GameScene(size: view.bounds.size)
          
                // Adatta la scena alla dimensione dello schermo
            scene.scaleMode = .aspectFill
                
                // Mostra la scena
            view.presentScene (scene)
            // Se il parametro fosse a false, gli elementi "accavallati" verrebbero reindirizzati nell'ordine in cui vengono inseriti in vista
            view.ignoresSiblingOrder = true
                    
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
}

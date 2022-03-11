//
//  GameScene.swift
//  alphaG
//
//  Created by LabMit02 on 02/03/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    let nodo = SKNode()
    let background = SKSpriteNode(imageNamed: "immagine")
    let tasto1 = SKSpriteNode(imageNamed: "immagine1")
    let tasto2 = SKSpriteNode(imageNamed: "immagine2")
    let tasto3 = SKSpriteNode(imageNamed: "immagine3")

    override func sceneDidLoad() {
        background.size = self.size
        background.position = CGPoint (x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        addChild(nodo)
        tasto1.position = CGPoint (x: frame.midX, y: (frame.midY - 100.0))
        tasto1.size = CGSize(width: 350.0, height: 60.0)
        tasto1.zPosition = 1
        addChild(tasto1)
        tasto2.position = CGPoint (x: frame.midX, y: (frame.midY - 200.0))
        tasto2.size = CGSize(width: 350.0, height: 60.0)
        tasto2.zPosition = 1
        addChild(tasto2)
        tasto3.position = CGPoint (x: frame.midX, y: (frame.midY - 300.0))
        tasto3.size = CGSize(width: 350.0, height: 60.0)
        tasto3.zPosition = 1
        addChild(tasto3)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      /*  background.run(SKAction.move(to:CGPoint(x: frame.midX, y: background.position.y + 50.0), duration: 3.0)
            )
        */
        let scene = scene;
        let view = scene?.view;
        let touch = touches.first
        let location = touch?.location(in: self)
        let touchedNode = nodes(at: location!)
        if (touchedNode.first?.position.x == tasto1.position.x && touchedNode.first?.position.y == tasto1.position.y) {
            
            Navigation().transition(fromScene: self, toScene: .Gameplay)
        }
        
    }}
    


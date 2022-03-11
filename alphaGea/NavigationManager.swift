//
//  navigation manager.swift
//  alphaGea
//
//  Created by LabMit02 on 09/03/22.
//

import Foundation
import SpriteKit

class Navigation {
    enum Scene{
        case Menu_principale, Impostazioni, Gameplay, Crediti, Opzioni
    }
    var dimensioni_schermo = UIScreen.main.bounds//variabile CGSize
    func prendi_Scena (Scena_cercata: Scene) -> SKScene? {
        switch Scena_cercata {
        case .Menu_principale:
            return GameScene(size: dimensioni_schermo.size)
        case .Impostazioni:
            return GameScene(size: dimensioni_schermo.size)
        case .Gameplay:
            return ScenaVuotaScene (size: dimensioni_schermo.size)
        case .Crediti:
            return GameScene(size: dimensioni_schermo.size)
        case .Opzioni:
            return GameScene(size: dimensioni_schermo.size)
        default:
            return GameScene(size: dimensioni_schermo.size)
        }
    
        
    }
    func transition (fromScene: SKScene, toScene: Scene){
        let scene = prendi_Scena(Scena_cercata: toScene)
        scene?.scaleMode = .resizeFill
        fromScene.view?.presentScene(scene)
    }
}

//
//  MainMenuScene.swift
//  Avoid The TT Ban
//
//  Created by Kevin Doyle Jr. on 12/24/24.
//


// MARK: - MainMenuScene.swift
// ---------------------------

import SpriteKit

class MainMenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = .white
        let title = SKLabelNode(text: "Avoid The Ban")
        title.fontSize = 50
        title.fontColor = .black
        title.position = CGPoint(x: size.width / 2, y: size.height * 0.6)
        addChild(title)
        
        let startGameLabel = SKLabelNode(text: "Tap to Start")
        startGameLabel.fontSize = 30
        startGameLabel.fontColor = .black
        startGameLabel.position = CGPoint(x: size.width / 2, y: size.height * 0.4)
        startGameLabel.name = "startGameLabel"
        addChild(startGameLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let nodeAtPoint = atPoint(location)
        
        if nodeAtPoint.name == "startGameLabel" {
            let newScene = GameScene(size: size)
            newScene.scaleMode = scaleMode
            let transition = SKTransition.crossFade(withDuration: 0.8)
            view?.presentScene(newScene, transition: transition)
        }
    }
}

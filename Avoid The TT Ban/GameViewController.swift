// MARK: - GameViewController.swift
// -------------------------------

import UIKit
import SpriteKit

extension SKNode {
    class func unarchiveFromFile(_ file: String) -> SKNode? {
        let path = Bundle.main.path(forResource: file, ofType: "sks")
        let sceneData: Data?
        do {
            sceneData = try Data(contentsOf: URL(fileURLWithPath: path!), options: .mappedIfSafe)
        } catch {
            sceneData = nil
        }
        let archiver = NSKeyedUnarchiver(forReadingWith: sceneData!)
        archiver.setClass(self.classForKeyedUnarchiver(), forClassName: "SKScene")
        let scene = archiver.decodeObject(forKey: NSKeyedArchiveRootObjectKey) as! GameScene
        archiver.finishDecoding()
        return scene
    }
}

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        
        let menuScene = MainMenuScene(size: skView.bounds.size)
        menuScene.scaleMode = .aspectFill
        skView.presentScene(menuScene)
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

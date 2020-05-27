//
//  ViewController.swift
//  Demo
//
//  Created by Mohamed Elshaer on 7/10/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        let sphere = SCNSphere(radius: 0.2)
        
        let box = SCNBox(width: 0.4, height: 2.0, length: 0.1, chamferRadius: 0)
        
        let material = SCNMaterial()
        
        let name = "art.scnassets/2k_mercury.jpg"
        
        material.diffuse.contents = UIImage(named: "art.scnassets/1.JPG")
        
        box.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(x:0.1, y:0.0, z:-0.5)
        
        node.geometry = box
        
        self.sceneView.scene.rootNode.addChildNode(node)
        
        sceneView.automaticallyUpdatesLighting = true

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}

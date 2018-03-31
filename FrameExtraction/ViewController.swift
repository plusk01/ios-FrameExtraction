//
//  ViewController.swift
//  FrameExtraction
//
//  Created by Parker Lusk on 3/31/18.
//  Copyright © 2018 Wanderlusk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FrameExtractorDelegate {
    
    var frameExtractor: FrameExtractor!
    var fpsCounter = FPSCounter()
    
    let ocv = OpenCVWrapper()

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frameExtractor = FrameExtractor()
        frameExtractor.delegate = self
        fpsCounter.start()
        
        print(ocv.openCVVersionString())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func captured(image: UIImage) {
        imageView.image = ocv.makeGray(image)
        
        // Show FPS counter
        fpsCounter.frameCompleted()
        print(fpsCounter.fps)
//        self.timeLabel.text = String(format: "%.1f FPS (latency: %.5f sec)", self.fpsCounter.fps, result.latency)
    }


}


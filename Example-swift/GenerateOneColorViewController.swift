//
//  GenerateOneColorViewController.swift
//  RSColorPicker
//
//  Created by Paul-Emmanuel on 20/10/16.
//  Copyright © 2016 RStudio. All rights reserved.
//

import UIKit

import RVSColorPicker

class GenerateOneColorViewController: UIViewController {

    @IBOutlet weak var generateButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        generateButton.backgroundColor = ColorGenerator.colorForWhiteText()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func generateButtonTouchUp(_ sender: AnyObject) {
        generateButton.backgroundColor = ColorGenerator.colorForWhiteText()
    }
}

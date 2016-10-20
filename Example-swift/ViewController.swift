//
//  ViewController.swift
//  Example-swift
//
//  Created by Paul-Emmanuel on 20/10/16.
//  Copyright © 2016 RStudio. All rights reserved.
//

import UIKit

import RSColorPicker

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var colors: [UIColor] = []
    var filteredColors: [UIColor] = []
    var isSorted: Bool = true
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var shuffleButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colors = ColorGenerator.colors(with: 50)
        filteredColors = colors.sorted { $0.hue < $1.hue }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = filteredColors[indexPath.row]
        
        return cell
    }

    // MARK: - Interactions

    @IBAction func shuffleButtonTouchUp(_ sender: AnyObject) {
        if isSorted {
            filteredColors = colors
            shuffleButton.setTitle("Sort", for: [])
        } else {
            filteredColors = colors.sorted { $0.hue < $1.hue }
            shuffleButton.setTitle("Shuffle", for: [])
        }
        isSorted = !isSorted
        tableView.reloadData()
    }

    @IBAction func generateButtonTouchUp(_ sender: AnyObject) {
        colors = ColorGenerator.colors(with: 50)
        if isSorted {
            filteredColors = colors.sorted { $0.hue < $1.hue }
        } else {
            filteredColors = colors
        }
        tableView.reloadData()
    }
}


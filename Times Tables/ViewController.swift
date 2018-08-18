//
//  ViewController.swift
//  Times Tables
//
//  Created by Fachruzi Ramadhan on 18/08/2018.
//  Copyright © 2018 dhanhost. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var slider: UISlider!

    @IBOutlet var table: UITableView!
    
    @IBAction func sliderChanged(_ sender: Any) {
        
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier:"Cell")
        
        cell.textLabel?.text = String(Int(slider.value * 20) * (indexPath.row + 1))
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


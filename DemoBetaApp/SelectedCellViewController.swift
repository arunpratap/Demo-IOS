//
//  SelectedCellViewController.swift
//  DemoBetaApp
//
//  Created by Arun Jaiswal on 30/06/14.
//  Copyright (c) 2014 IPLTech. All rights reserved.
//

import UIKit


class SelectedCellViewController: UIViewController {

    @IBOutlet var labelcell : UILabel

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var collectionObject:CollectionViewController
        println(CollectionViewController.name)
        labelcell.text = "\(CollectionViewController.name) Item Selected"
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//
//  CollectionViewController.swift
//  DemoBetaApp
//
//  Created by Arun Jaiswal on 30/06/14.
//  Copyright (c) 2014 IPLTech. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"
var selectedCellIndex:NSString = "Label"

class CollectionViewController: UICollectionViewController,UICollectionViewDelegate,UICollectionViewDataSource {

//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


    // #pragma mark UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView?) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView?, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 10
    }

    override func collectionView(collectionView: UICollectionView?, cellForItemAtIndexPath indexPath: NSIndexPath?) -> UICollectionViewCell? {
        let cell = collectionView?.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as UICollectionViewCell
    
        // Configure the cell
        cell.backgroundColor = UIColor.grayColor()
        return cell
    }

    @IBAction func buttonPredded(sender : AnyObject) {
        println("Button Predded")
         self.performSegueWithIdentifier("otherview", sender: self)
    }

    override func collectionView(collectionView: UICollectionView?, shouldSelectItemAtIndexPath indexPath: NSIndexPath?) -> Bool {
        println("index path === \(indexPath?.item)")
        
        selectedCellIndex = "\(indexPath?.item)"
        
        self.performSegueWithIdentifier("cellview", sender: self)
        
        
        return true
    }
    
    class var name:NSString
    {
    return selectedCellIndex
    }
    
}


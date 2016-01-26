//
//  SentMemesTableViewController.swift
//  MemeMe
//
//  Created by Richard Reed on 1/25/16.
//  Copyright © 2016 Richard Reed. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UITableViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBarController?.tabBar.hidden = false
        tableView!.reloadData()
    }
    
    
    @IBAction func createMeme(sender: UIBarButtonItem) {
        let memeEditor = storyboard?.instantiateViewControllerWithIdentifier("MemeEditorViewController") as! MemeEditorViewController
        presentViewController(memeEditor, animated: true, completion: nil)
    }
    
    
    // MARK: Table View Data Source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MemeTableViewCell", forIndexPath: indexPath) as! MemeTableCell
        
        cell.memeImage?.image = self.memes[indexPath.row].memedImage
        cell.memeText?.text = "\(memes[indexPath.row].topText)...\(memes[indexPath.row].bottomText)"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailView = storyboard?.instantiateViewControllerWithIdentifier("MemeDetailViewController") as! MemeDetailViewController
        
        detailView.meme = memes[indexPath.row]
        
        navigationController?.pushViewController(detailView, animated: true)
    }
    
    
    
    
}

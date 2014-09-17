//
//  TalksViewController.swift
//  Music To Inspire
//
//  Created by Hadiyah Mujhid on 9/16/14.
//  Copyright (c) 2014 Playpen Labs. All rights reserved.
//

import UIKit

class TalksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MBProgressHUDDelegate {
    @IBOutlet weak var navTitleLabel: UINavigationItem!

    @IBOutlet weak var tableView: UITableView!
    var talks: [Talk] = []
    var refreshControl: UIRefreshControl!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.refreshControl = UIRefreshControl()
        self.refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        self.refreshControl.addTarget(self, action: "refresh", forControlEvents: UIControlEvents.ValueChanged)
        self.tableView.addSubview(refreshControl)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.tableView.separatorInset = UIEdgeInsetsZero
        self.tableView.layoutMargins = UIEdgeInsetsZero
        
        
        getTalks()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return talks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        var cell = tableView.dequeueReusableCellWithIdentifier("TalkCell") as TalkCell
        var talk = talks[indexPath.row]
        
        cell.titleLabel.text = talk.name
        cell.talkImage.frame = CGRect(x: 0,y: 0,width: 113,height: 85)
        cell.talkImage.setImageWithURL(NSURL(string: talk.thumbnailUrl))
        cell.desriptionLabel.text = talk.description
        
        cell.separatorInset = UIEdgeInsetsZero
        cell.layoutMargins  = UIEdgeInsetsZero
        
        return cell
    }
    
    func refresh(sender: AnyObject){
      getTalks()
    }
    
    override func prepareForSegue(segue:UIStoryboardSegue, sender: AnyObject?) {
            var detailsViewController: DetailsViewController = segue.destinationViewController as DetailsViewController
            var talkIndex = tableView.indexPathForSelectedRow()?.row
            var selectedTalk = self.talks[talkIndex!]
            detailsViewController.talk = selectedTalk
            
        
    }
    
    func getTalks(){
        
        var query = PFQuery(className: "Talk")
        query.orderByDescending("talkId")
        query.limit = 20
        var hud = MBProgressHUD(view: self.view)
        hud.delegate = self
        
        hud.mode = MBProgressHUDModeIndeterminate
        hud.labelText = "Loading..."
        self.view.addSubview(hud)
        hud.show(true)
        
        if Reachability.isConnectedToNetwork() {
            query.findObjectsInBackgroundWithBlock({
                (objects: [AnyObject]!, error: NSError!) -> Void in
                if error == nil {
                    self.talks = []
                    for object in objects {
                        
                        
                        let talkObj = object as PFObject
                        let talkDetails = talkObj["talk"] as NSDictionary
                        let name = talkDetails["name"] as String
                        let recordedDate = talkDetails["recorded_at"] as String
                        let description = talkDetails["description"] as String
                        let extras = talkObj["extra"] as NSDictionary
                        let images = extras["images"] as NSArray
                        let smallImgObj = images[1] as NSDictionary
                        let largeImgObj = images[2] as NSDictionary
                        let smallImg = smallImgObj["image"] as NSDictionary
                        let largeImg = largeImgObj["image"] as NSDictionary
                        let thumbnailUrl = smallImg["url"] as String
                        let largeImageUrl = largeImg["url"] as String
                        //615 461 
                        
                        var talk = Talk(name: name, description: description,
                            recordedDate: recordedDate, thumbnailUrl: thumbnailUrl,
                            largeImageUrl: largeImageUrl)
                        self.talks.append(talk)
                        
                    }
                    self.tableView.reloadData()
                    hud.hide(true)
                    
                } else {
                    TSMessage.showNotificationWithTitle("! Error",
                        subtitle: "There was an error loading data",
                        type: TSMessageNotificationType.Error)
                    println("Error \(error)")
                }
            })
        } else {
            hud.hide(true)
            TSMessage.showNotificationWithTitle("! Network Error",
                subtitle: "No network connection available",
                type: TSMessageNotificationType.Error)
        }
        
        self.refreshControl.endRefreshing()
    
    }

}


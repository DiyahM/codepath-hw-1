//
//  DetailsViewController.swift
//  Music To Inspire
//
//  Created by Hadiyah Mujhid on 9/16/14.
//  Copyright (c) 2014 Playpen Labs. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var talkCover: UIImageView!
    @IBOutlet weak var talkNameLabel: UILabel!
    @IBOutlet weak var recordDateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var talk: Talk!
    
    required init(coder aDecoder: NSCoder){
      super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        talkNameLabel.text = self.talk.name
        recordDateLabel.text = self.talk.recordedDate
        descriptionLabel.text = self.talk.description
        talkCover.setImageWithURL(NSURL(string: self.talk.largeImageUrl))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

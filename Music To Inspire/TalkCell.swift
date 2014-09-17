//
//  TalkCell.swift
//  Music To Inspire
//
//  Created by Hadiyah Mujhid on 9/16/14.
//  Copyright (c) 2014 Playpen Labs. All rights reserved.
//


import UIKit

class TalkCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var desriptionLabel: UILabel!
    @IBOutlet weak var talkImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.talkImage.bounds = CGRectMake(0, 0, 113, 85)
        self.talkImage.frame = CGRectMake(0, 0, 113, 85)
        self.talkImage.contentMode = UIViewContentMode.ScaleAspectFit
        

    }
    
}

//
//  TweetCell.swift
//  Twitter
//
//  Created by Kay Lab on 4/28/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    @IBOutlet weak var screenNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = 8
        profileImageView.layer.masksToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

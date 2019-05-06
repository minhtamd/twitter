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
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    
    var tweetId: Int = -1
    var favorited: Bool = false
    var retweeted: Bool = false
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = 8
        profileImageView.layer.masksToBounds = true
        // Initialization code
    }

    func setFavorite(_ isFavorited: Bool) {
        favorited = isFavorited
        if (favorited) {
            favoriteButton.setImage(UIImage(named: "favor-icon-red"), for: UIControl.State.normal)
        } else {
            favoriteButton.setImage(UIImage(named: "favor-icon"), for: UIControl.State.normal)
        }
        
    }
    
    @IBAction func favoriteTweet(_ sender: Any) {
        if (!favorited) {
            TwitterAPICaller.client?.favoriteTweet(tweetId: tweetId, success: {
                self.setFavorite(true)
            }, failure: { (error) in
                print("Unable to favorite tweet: \(error)")
            })
        } else {
            TwitterAPICaller.client?.unFavoriteTweet(tweetId: tweetId, success: {
                self.setFavorite(false)
            }, failure: { (error) in
                print("Unable to unfavorite tweet: \(error)")
            })
        }
    }
    
    func setRetweet(_ isRetweeted: Bool) {
        retweeted = isRetweeted
        if (retweeted) {
            retweetButton.setImage(UIImage(named: "retweet-icon-green"), for: UIControl.State.normal)
        } else {
            retweetButton.setImage(UIImage(named: "retweet-icon"), for: UIControl.State.normal)
        }
    }
    
    @IBAction func retweetTweet(_ sender: Any) {
        if (!retweeted) {
            TwitterAPICaller.client?.retweet(tweetId: tweetId, success: {
                self.setRetweet(true)
            }, failure: { (error) in
                print("Unable to retweet: \(error)")
            })
        } else {
            TwitterAPICaller.client?.unRetweet(tweetId: tweetId, success: {
                self.setRetweet(false)
            }, failure: { (error) in
                print("Unable to undo retweet: \(error)")
            })
        }
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

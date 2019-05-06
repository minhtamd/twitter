//
//  Api.swift
//  Twitter
//
//  Created by Kay Lab on 5/5/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import Foundation

enum Api: String{
    case homeTimeline = "https://api.twitter.com/1.1/statuses/home_timeline.json"
    case postTweet = "https://api.twitter.com/1.1/statuses/update.json"
    case favorite = "https://api.twitter.com/1.1/favorites/create.json"
    case unFavorite = "https://api.twitter.com/1.1/favorites/destroy.json"
    case retweet = "https://api.twitter.com/1.1/statuses/retweet/"
    case unRetweet = "https://api.twitter.com/1.1/statuses/unretweet/"
}

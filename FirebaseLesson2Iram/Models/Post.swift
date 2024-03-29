//
//  Post.swift
//  FirebaseLesson2Iram
//
//  Created by C4Q on 11/11/19.
//  Copyright © 2019 Iram Fattah. All rights reserved.
//

import Foundation
struct Post {
    let title: String
    let body: String
    let id: UUID
    let userUID: String
    
    init(title: String, body: String, userUID: String) {
        self.title = title
        self.body = body
        self.userUID = userUID
        self.id = UUID()
    }
    
    init?(from dict: [String: Any], id: UUID) {
        guard let title = dict["title"] as? String,
        let body = dict["body"] as? String,
            let userUID = dict["userUID"] as? String else {
               return nil 
        }
        self.title = title
        self.body = body
        self.userUID = userUID
        self.id = id
    }
    
    
    
    
    var fieldsDict: [String: Any] {
        return [
            "title": self.title,
            "body": self.body,
            "userUID": self.userUID
            ]
    }
    
    
}

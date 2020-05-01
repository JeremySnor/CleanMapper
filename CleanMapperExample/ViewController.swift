//
//  ViewController.swift
//  CleanMapperExample
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import UIKit
import CleanMapper

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var result = ""
        
        let users = UsersRepository.get()
        
        result.append(users.map({ "\($0)" }).joined(separator: "\n"))
        result.append("\n\n")
        
        let compactUsers: [CompactUser] = Mapper.map(users)
        
        result.append(compactUsers.map({ "\($0)" }).joined(separator: "\n"))
        
        textView.text = result
        
    }

}


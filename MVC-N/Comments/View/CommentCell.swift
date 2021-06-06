//
//  CommentCell.swift
//  MVC-N
//
//  Created by Nikita on 06.06.21.
//

import Foundation
import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}

//
//  SharingCell.swift
//  quNaDiaoJm
//
//  Created by 杨智 on 16/8/2.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class SharingCell: UITableViewCell {


    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var mlogo: UIImageView!
    @IBOutlet weak var imageContent: UIView!
    @IBOutlet weak var replyContent: UIView!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var btnReply: UIButton!
    @IBOutlet weak var tableReply: UITableView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        title.text = "OK"
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

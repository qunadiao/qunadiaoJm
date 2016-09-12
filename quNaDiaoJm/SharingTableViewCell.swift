//
//  TableViewCell.swift
//  quNaDiaoJm
//
//  Created by 杨智 on 16/9/7.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class SharingTableViewCell: UITableViewCell {

    @IBOutlet weak var mlogo: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var reButton: UIButton!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

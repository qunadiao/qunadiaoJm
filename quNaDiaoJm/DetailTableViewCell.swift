//
//  DetailTableViewCell.swift
//  quNaDiaoJm
//
//  Created by 杨智 on 16/8/31.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var detailName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var detailLocation: UILabel!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailType: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        detailName.text = 
        
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

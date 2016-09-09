//
//  DetailTableViewCell.swift
//  quNaDiaoJm
//
//  Created by 杨智 on 16/8/31.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    
    @IBOutlet weak var alabel: UILabel!
    
    @IBOutlet weak var blabel: UILabel!
    @IBOutlet weak var alocation: UILabel!
    @IBOutlet weak var atitle: UILabel!
    @IBOutlet weak var atype: UILabel!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var dhButton: UIButton!
    @IBOutlet weak var mapButton: UIButton!

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

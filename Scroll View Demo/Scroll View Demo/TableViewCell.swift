//
//  TableViewCell.swift
//  Scroll View Demo
//
//  Created by Mohamed Elshaer on 3/22/20.
//  Copyright © 2020 Mohamed Elshaer. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var movieDetails: UILabel!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

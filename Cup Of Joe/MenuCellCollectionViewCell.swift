//
//  MenuCellCollectionViewCell.swift
//  Cup Of Joe
//
//  Created by Connor Reed on 9/22/21.
//

import UIKit

protocol MenuCellController:AnyObject{
    func orderButtonClicked(index: Int)
}

class MenuCellCollectionViewCell: UICollectionViewCell {
    var delegate:MenuCellController?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    var index:Int = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
}

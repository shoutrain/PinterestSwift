//
//  NTTableViewCell.swift
//  PinterestSwift
//

import Foundation
import UIKit

class NTTableViewCell: UITableViewCell {
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.textLabel!.font = UIFont.systemFontOfSize(13)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView!.frame = CGRectZero
        
        if (imageView!.image != nil) {
            let imageHeight = imageView!.image!.size.height * screenWidth / imageView!.image!.size.width
            
            imageView!.frame = CGRectMake(0, 0, screenWidth, imageHeight)
        }
    }
}
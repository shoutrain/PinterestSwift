//
//  NTHorizontalPageViewCell.swift
//  PinterestSwift
//

import Foundation
import UIKit

let cellIdentify = "cellIdentify"

class NTHorizontalPageViewCell: UICollectionViewCell, UITableViewDelegate, UITableViewDataSource {
    var imageName: String?
    var pullAction: ((offset: CGPoint) -> Void)?
    var tappedAction: (() -> Void)?
    let tableView = UITableView(frame: screenBounds, style: UITableViewStyle.Plain)
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.lightGrayColor()
        contentView.addSubview(tableView)
        tableView.registerClass(NTTableViewCell.self, forCellReuseIdentifier: cellIdentify)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentify) as NTTableViewCell!
        
        cell.imageView!.image = nil
        cell.textLabel!.text = nil
        
        if indexPath.row == 0 {
            let image = UIImage(named: imageName!)
            
            cell.imageView!.image = image
        } else {
            cell.textLabel!.text = "try pull to pop view controller 😃"
        }
        
        cell.setNeedsLayout()
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        var cellHeight: CGFloat = navigationHeight
        
        if indexPath.row == 0 {
            let image:UIImage! = UIImage(named: imageName!)
            let imageHeight = image.size.height*screenWidth / image.size.width
            
            cellHeight = imageHeight
        }
        
        return cellHeight
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        tappedAction?()
    }
    
    func scrollViewWillBeginDecelerating(scrollView : UIScrollView) {
        if scrollView.contentOffset.y < navigationHeight {
            pullAction?(offset: scrollView.contentOffset)
        }
    }
}
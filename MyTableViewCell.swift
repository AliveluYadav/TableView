//
//  MyTableViewCell.swift
//  TableView
//
//  Created by Nikitha on 3/31/18.
//  Copyright © 2018 Nikitha. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    var mylabel:UILabel!
    var myImage:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        self.imageView?.frame = CGRect(x:10,y:0,width:80,height:80)
//        self.textLabel?.frame=CGRect(x: 110, y: 20, width: 200, height: 40)
//        self.imageView?.layer.cornerRadius=40
//        self.imageView?.clipsToBounds=true
//        self.imageView?.contentMode = UIViewContentMode.scaleAspectFit                     
        // Configure the view for the selected state
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        mylabel=UILabel(frame: CGRect(x:110, y:20,width: 200, height:40))
         mylabel.font=UIFont.boldSystemFont(ofSize: 20)
        myImage=UIImageView(frame: CGRect(x:10, y:0,width: 80, height:80))
        myImage.layer.cornerRadius=40
        myImage.clipsToBounds=true
        self.contentView.addSubview(myImage)
        self.contentView.addSubview(mylabel)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

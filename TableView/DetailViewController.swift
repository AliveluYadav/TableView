//
//  DetailViewController.swift
//  TableView
//
//  Created by Nikitha on 3/31/18.
//  Copyright © 2018 Nikitha. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var detailImage:UIImageView!
    var name:UILabel!
    var phoneLabel:UILabel!
    var back:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        detailImage=UIImageView(frame:CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height/2))
            self.view.addSubview(detailImage)
        name=UILabel(frame:CGRect(x: 10, y: (self.view.frame.size.height/2)+10, width: 300, height: 40))
        name.font=UIFont.boldSystemFont(ofSize: 30)
        phoneLabel=UILabel(frame:CGRect(x: 10, y: (self.view.frame.size.height/2)+60, width: 300, height: 40))
         self.view.addSubview(name)
        self.view.addSubview(phoneLabel)
        back=UIButton(frame:CGRect(x: 10, y: (self.view.frame.size.height/2)+100, width: 80, height: 40))
    
        back.setTitle("BACK", for: .normal)
        back.setTitleColor(UIColor.white, for: .normal)
        
        
        back.backgroundColor=UIColor.blue
        self.view.addSubview(back)
        back.addTarget(self, action:#selector(backAcn), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func backAcn ()
    {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

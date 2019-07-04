//
//  ViewController.swift
//  TableView
//
//  Created by Nikitha on 3/29/18.
//  Copyright © 2018 Nikitha. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    var tv:UITableView?
    var heroesArray=["Mahesh Babu","Ram Charan","Prabhas","NTR","Chiranjeevi","Pawan Kalyan","Bala Krishna"]
    var heronum=["9999999999","8989898989","9090909090","6767676767","8787878787","7676767676","8888888888"]
    var heroinArray=["Samantha","Kajal","Anushka","Hansika","Sridevi","Rakul","Regina","Nithya Menon"]
     var herinum=["9999999099","8989808989","9090009090","6767606767","8787878087","7676760676","8888888088"]
      var heroimageArray=[#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image3"),#imageLiteral(resourceName: "image4"),#imageLiteral(resourceName: "image5"),#imageLiteral(resourceName: "image6"),#imageLiteral(resourceName: "image7")]
      var heroinimageArray=[#imageLiteral(resourceName: "picture1"),#imageLiteral(resourceName: "picture2"),#imageLiteral(resourceName: "picture3"),#imageLiteral(resourceName: "picture4"),#imageLiteral(resourceName: "picture5"),#imageLiteral(resourceName: "picture6"),#imageLiteral(resourceName: "picture7"),#imageLiteral(resourceName: "picture8")]
     var timeArray=["10:00","9:00","12:00","1:00","2:00","3:00","11:00"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tv=UITableView(frame:CGRect.init(x:0,y:60,width:self.view.bounds.size.width,height:self.view.bounds.size.height),style:UITableViewStyle.grouped)
       //self.tv?.isEditing=true
        self.tv?.register(MyTableViewCell.self as AnyClass, forCellReuseIdentifier: "CustomTableViewCell")
        self.tv?.delegate=self
        self.tv?.dataSource=self
        self.view.addSubview(tv!)
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section==0
        {
        return heroesArray.count
        }
       else if section==1
        {
            return heroinArray.count
        }
        return 0
    }
//    
//    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        if sourceIndexPath.section==0
//        {
//        let  movingObject=heroesArray[sourceIndexPath.row]
//            heroesArray.remove(at: sourceIndexPath.row)
//            heroesArray.insert(movingObject, at: destinationIndexPath.row)
//        }
//        else if sourceIndexPath.section==1
//        {
//            let  movedObject=heroinArray[sourceIndexPath.row]
//            heroinArray.remove(at: sourceIndexPath.row)
//            heroinArray.insert(movedObject, at: destinationIndexPath.row)
        
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var  cell:MyTableViewCell?=tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! MyTableViewCell
//        if cell == nil {
//
//            cell = MyTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
//        }
        //cell?.setFrames()
        if indexPath.section==0
        {
            cell?.mylabel.text=heroesArray[indexPath.row]
            cell?.myImage.image=heroimageArray[indexPath.row]
            
        }
    else if indexPath.section==1
        {
            cell?.mylabel.text=heroinArray[indexPath.row]
            cell?.myImage.image=heroinimageArray[indexPath.row]
        }
      
       
       
        

        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc=DetailViewController()
        self.present(vc, animated: true) {
            if indexPath.section==0
            {
                vc.detailImage.image=self.heroimageArray[indexPath.row]
                vc.name.text=self.heroesArray[indexPath.row]
                vc.phoneLabel.text=self.heronum[indexPath.row]
            }
            else if indexPath.section==1
            {
                vc.detailImage.image=self.heroinimageArray[indexPath.row]
                 vc.name.text=self.heroinArray[indexPath.row]
                vc.phoneLabel.text=self.herinum[indexPath.row]
            }
        }
    }
}


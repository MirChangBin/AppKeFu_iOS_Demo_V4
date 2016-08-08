//
//  TagsTableViewController.swift
//  AppKeFuDemo7Swift
//
//  Created by jack on 16/8/5.
//  Copyright © 2016年 appkefu.com. All rights reserved.
//

import Foundation

class KFTagsTableViewController: UITableViewController {
    
    override init(style: UITableViewStyle) {
        super.init(style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "用户标签"
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    // MARK: - Table View
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        if (indexPath.row == 0)
        {
            cell.textLabel?.text = "1.用户昵称"
            cell.detailTextLabel?.text = AppKeFuLib.sharedInstance().getTagNickname()
        }
        else if (indexPath.row == 1)
        {
            cell.textLabel?.text = "2.性别";
            cell.detailTextLabel?.text = AppKeFuLib.sharedInstance().getTagSex()
        }
        else if (indexPath.row == 2)
        {
            cell.textLabel?.text = "3.语言";
            cell.detailTextLabel?.text = AppKeFuLib.sharedInstance().getTagLanguage()
        }
        else if (indexPath.row == 3)
        {
            cell.textLabel?.text = "4.城市";
            cell.detailTextLabel?.text = AppKeFuLib.sharedInstance().getTagCity()
        }
        else if (indexPath.row == 4)
        {
            cell.textLabel?.text = "5.省份";
            cell.detailTextLabel?.text = AppKeFuLib.sharedInstance().getTagProvince()
        }
        else if (indexPath.row == 5)
        {
            cell.textLabel?.text = "6.国家";
            cell.detailTextLabel?.text = AppKeFuLib.sharedInstance().getTagCountry()
        }
        else if (indexPath.row == 6)
        {
            cell.textLabel?.text = "7.其他";
            cell.detailTextLabel?.text = AppKeFuLib.sharedInstance().getTagOther()
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell: UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        
        let tagsChangeVC: KFTagsChangeTableViewController = KFTagsChangeTableViewController.init(style: UITableViewStyle.Grouped)
        
        if (indexPath.row == 0)
        {
            tagsChangeVC.tag = "NICKNAME";
        }
        else if (indexPath.row == 1)
        {
            tagsChangeVC.tag = "SEX";
        }
        else if (indexPath.row == 2)
        {
            tagsChangeVC.tag = "LANGUAGE";
        }
        else if (indexPath.row == 3)
        {
            tagsChangeVC.tag = "CITY";
        }
        else if (indexPath.row == 4)
        {
            tagsChangeVC.tag = "PROVINCE";
        }
        else if (indexPath.row == 5)
        {
            tagsChangeVC.tag = "COUNTRY";
        }
        else if (indexPath.row == 6)
        {
            tagsChangeVC.tag = "OTHER";
        }
        
        tagsChangeVC.value = cell.detailTextLabel!.text!;
        self.navigationController?.pushViewController(tagsChangeVC, animated: true)
    }
    
}


//http://kefu.gdws.nsenz.com/AppKeFu/weixin/chat.php?wg=gdsgszzkf&robot=false&usertype=03&username=od1Vct-et4hOC4xnSK9RA-pxonok_zshbindid&no=no#66















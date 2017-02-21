//
//  ViewController.swift
//  Demo2
//
//  Created by 白仕云 on 2017/2/21.
//  Copyright © 2017年 BSY.com. All rights reserved.
//

import UIKit
import SnapKit

let UITableViewCellID = "UITableViewCell"

class ViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate {

    var list = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.yellow

        self.creatUIForList()
    }



    func creatUIForList() -> Void {



        list = UITableView.init(frame: CGRect.zero, style: UITableViewStyle.plain)
        list.dataSource = self
        list.delegate = self
        list.tableFooterView = UIView()
        self.view.addSubview(list)
        list.register(UITableViewCell().classForCoder, forCellReuseIdentifier: UITableViewCellID)

           /*

         SnapKit的简单使用

       list.snp.makeConstraints { (maker) in
        maker.left.equalTo(20)
        maker.width.equalTo(self.view).multipliedBy(0.5)
        maker.bottom.equalTo(-30)
        maker.top.equalTo(30)

        }
    */

        list.snp.makeConstraints { (maker) in
            maker.left.equalTo(20)
            maker.right.equalTo(20)
            maker.bottom.equalTo(-30)
            maker.top.equalTo(30)

        }

 /*
        let demo = DemoList.init(frame: CGRect.zero, style: UITableViewStyle.plain)
        self.view.addSubview(demo)

        demo.snp.makeConstraints { (make) in

            make.left.equalTo(0)
            make.right.bottom.top.equalTo(0)

        }
            */


    }


    func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCellID)

        cell?.textLabel?.text = NSString.init(format: "%d", indexPath.row) as String

        return cell!
    }



}


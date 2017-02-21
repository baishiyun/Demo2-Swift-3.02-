//
//  DemoList.swift
//  Demo2
//
//  Created by 白仕云 on 2017/2/21.
//  Copyright © 2017年 BSY.com. All rights reserved.
//

import UIKit



class DemoList: UITableView ,UITableViewDelegate , UITableViewDataSource{

    override init(frame: CGRect, style: UITableViewStyle) {

       super.init(frame: frame, style: style)


            self.dataSource = self
            self.delegate = self

            self.register(UITableViewCell().classForCoder, forCellReuseIdentifier: UITableViewCellID)



    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 30
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCellID)

        cell?.textLabel?.text = NSString.init(format: "我操 %d", indexPath.row) as String
        return cell!;

    }
}

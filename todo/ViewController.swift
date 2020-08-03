//
//  ViewController.swift
//  todo
//
//  Created by イシガミ on 2020/07/29.
//  Copyright © 2020 イシガミ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    let todo = ["課題" , "レポート" , "バイト"]

    override func viewDidLoad() {
        super.viewDidLoad()
    //    let  = UITextView()
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return todo.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                  // セルに表示する値を設定する
                  cell.textLabel!.text = todo[indexPath.row]
                  return cell
       }


}


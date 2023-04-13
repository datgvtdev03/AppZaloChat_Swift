//
//  ChatZaloViewController.swift
//  AppZalo
//
//  Created by VanHuy on 2023-04-13.
//

import UIKit

class ChatZaloViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBAction func MyTextField(_ sender: Any) {
    }
    @IBOutlet weak var MyTextField: UITextField!
    @IBOutlet weak var tblChatsZalo: UITableView!
    let danhSachChat = ["Ban A", "Ban B", "Ban C", "Ban D"]
    let danhSachAnh = ["anh1", "anh2", "anh3", "anh4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblChatsZalo.dataSource = self
        tblChatsZalo.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return danhSachChat.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblChatsZalo.dequeueReusableCell(withIdentifier: "ChatCellIdentifier")!
        let tblChatsZaloName = cell.viewWithTag(101) as! UILabel
        tblChatsZaloName.text = danhSachChat[indexPath.row]
        let imgIcon = cell.viewWithTag(100) as! UIImageView
        imgIcon.image = UIImage(named: danhSachAnh[indexPath.row])
        
        if indexPath.row % 2 == 0 {
                    cell.backgroundColor = .green
                } else {
                    cell.backgroundColor = .yellow
                }
        return cell
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 150
        }
    
    }
 


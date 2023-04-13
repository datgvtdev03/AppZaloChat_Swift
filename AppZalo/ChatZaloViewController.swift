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
    let danhSachUsers = ["Ban A", "Ban B", "Ban C", "Ban D", "Ban E"]
    let danhSachChats = ["Hello", "Bạn đang làm gì vậy", "Alooo", "Chúc bạn buổi tối vui vẻ nhé", "hii =)))"]
    let danhSachAnh = ["anh1", "anh2", "anh3", "anh4", "anh2"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblChatsZalo.dataSource = self
        tblChatsZalo.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return danhSachUsers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblChatsZalo.dequeueReusableCell(withIdentifier: "ChatCellIdentifier")!
        let tblChatsZaloName = cell.viewWithTag(101) as! UILabel
        tblChatsZaloName.text = danhSachUsers[indexPath.row]
        let tbldanhSachChats = cell.viewWithTag(103) as! UILabel
        tbldanhSachChats.text = danhSachChats[indexPath.row]
        let tblChatTime = cell.viewWithTag(102) as! UILabel
        tblChatTime.text = "Time"
        let imgIcon = cell.viewWithTag(100) as! UIImageView
        imgIcon.image = UIImage(named: danhSachAnh[indexPath.row])
        imgIcon.layer.cornerRadius = 30

        return cell
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 130
        }
    
    }
 


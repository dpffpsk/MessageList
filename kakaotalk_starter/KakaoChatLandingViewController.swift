//
//  ViewController.swift
//  Twitter_starter
//
//  Created by James Kim on 7/27/20.
//  Copyright © 2020 James Kim. All rights reserved.
//

import UIKit

class KakaoChatLandingViewController: UIViewController {
    // TODO: TableView를 만들어서 outlet으로 추가해주세요.
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
        
//        let nibname = UINib(nibName: "KakaoChatTableViewCell", bundle: nil)
//        tableView.register(nibname, forCellReuseIdentifier: "KakaoChatTableViewCell")
    }

    func setupTableView() {
        // TODO: TableView를 datasource을 설정해주세요.
        tableView.dataSource = self
    }

    private let list = Message.dummyList
}

//UITableViewDataSource
extension KakaoChatLandingViewController: UITableViewDataSource {
    // TODO: UITableViewDataSource를 설정해주세요.

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: list의 갯수만큼 나오게 해주세요.
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // TODO: KakaoChatTableViewCell을 생성해주세요. 생성하고 configure을 불러주세요.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "KakaoChatTableViewCell", for: indexPath) as? KakaoChatTableViewCell else { return UITableViewCell() }
        
        cell.configure(message: list[indexPath.row])
        
        return cell
    }
}

//
//  ViewController.swift
//  upbitDummy
//
//  Created by 임혜정 on 4/10/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var 업비트테이블뷰: UITableView!
    let 업비트리스트: [CoinList] = CoinList.list
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        업비트테이블뷰.delegate = self
        업비트테이블뷰.dataSource = self
        업비트테이블뷰.separatorInset = UIEdgeInsets.zero

        // up red - #dd5132
        // down blue - #1368d3
        // grey - #5c6370
        // orange - #ff7708
        
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 업비트리스트.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = 업비트테이블뷰.dequeueReusableCell(withIdentifier: "upbitCell", for: indexPath)as? upbitCell else {
            return UITableViewCell()
        }
        let 코인 = 업비트리스트[indexPath.item]
        cell.configure(코인)
        cell.backgroundColor = tableView.backgroundColor
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
   
}

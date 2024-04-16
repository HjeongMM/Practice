//
//  ViewController.swift
//  weverseDummy
//
//  Created by 임혜정 on 4/14/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var albumCV: UICollectionView!
    
    let albumList: [AlbumList] = AlbumList.list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        albumCV.delegate = self
        albumCV.dataSource = self
        albumCV.collectionViewLayout = UICollectionViewFlowLayout()
        nav()

       
        
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return albumList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = albumCV.dequeueReusableCell(withReuseIdentifier: "WeverseCollectionViewCell", for: indexPath)as? WeverseCollectionViewCell else {
            return UICollectionViewCell()
        }
        let albumItem = albumList[indexPath.item]
        cell.configure(albumItem)
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        let interItemSpacing: CGFloat = 10
        let padding: CGFloat = 10
        let width = (collectionView.bounds.width - interItemSpacing - padding) / 2
        let height = width * 1.38
        return CGSize(width: width, height: height)
        
        
        
        //3열
        //        let interItemSpacing: CGFloat = 10
        //        let padding: CGFloat = 10
        //        let width = (collectionView.bounds.width - interItemSpacing * 2 - padding * 2) / 3
        //        let height = width * 1.7
        //        return CGSize(width: width, height: height)
        //
        //        4열
        //        let interItemSpacing: CGFloat = 10
        //        let padding: CGFloat = 10
        //        let width = (collectionView.bounds.width - interItemSpacing * 2 - padding * 3) / 4
        //        let height = width * 1.5
        //        return CGSize(width: width, height: height)
        //
        //
        
        
    }
}

extension ViewController {
    func nav() {
        let logo = UIImage(named: "weverseLogo")
        let imageView = UIImageView(image: logo)
        
        // 이미지 뷰 크기 조절
        imageView.contentMode = .scaleAspectFit
       
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        imageView.frame = titleView.bounds.offsetBy(dx: -6, dy: 0)
        titleView.addSubview(imageView)
        
        // 네비게이션 아이템에 이미지 뷰 설정
        let leftBarItem = UIBarButtonItem(customView: titleView)
        self.navigationItem.leftBarButtonItem = leftBarItem
        
        
        // 오른쪽 아이콘 버튼 1,2
        let rightButton1 = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .plain, target: self, action: #selector(rightButton1Tapped))
        rightButton1.tintColor = .white
        let rightButton2 = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(rightButton2Tapped))
        rightButton2.tintColor = .white
        self.navigationItem.rightBarButtonItems = [rightButton1, rightButton2]

    }
    
    @objc func rightButton1Tapped() {
        // 버튼 1이 눌렸을 때 실행할 액션
    }

    @objc func rightButton2Tapped() {
        // 버튼 2가 눌렸을 때 실행할 액션
    }
}


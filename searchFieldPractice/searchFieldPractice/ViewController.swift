//
//  ViewController.swift
//  searchFieldPractice
//
//  Created by 임혜정 on 5/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        configureSearchBar()
    }
    func updateResultLabel(with text: String?) {
        resultLabel.text = text
        searchBar.text = " "
        searchBar.resignFirstResponder()
    }
    
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        updateResultLabel(with: searchBar.text)
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        // 키보드 강제토글
        searchBar.becomeFirstResponder()
    }
}
extension ViewController {
    func configureSearchBar(){ // 돋보기아이콘에 접근
        if let searchBarTextField = searchBar.value(forKey: "searchField") as? UITextField,
           let leftView = searchBarTextField.leftView {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapSearchIcon))
            leftView.addGestureRecognizer(tapGesture)
            leftView.isUserInteractionEnabled = true
        }
    }
    @objc func didTapSearchIcon() { // 돋보기 아이콘을 누를 시 return키와 같은 동작.
        updateResultLabel(with: searchBar.text)
    }
}


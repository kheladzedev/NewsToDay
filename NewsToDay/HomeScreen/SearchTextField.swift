//
//  SearchTextField.swift
//  NewsAPI
//
//  Created by Vitali Martsinovich on 2023-05-05.
//

import UIKit
import SnapKit


class SearchTextField: UIView {
    let searchImageViewImage = UIImage(systemName: "magnifyingglass")
    var textFieldPlaceHolder = "Search"
    
    lazy var containerView = UIView()
    lazy var stackView = UIStackView()
    lazy var searchImageView = UIImageView()
    lazy var searchTextField = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        configureContainerView()
        configureSearchImageView()
        configureSearchTextField()
    }
    
    private func configureContainerView() {
        addSubview(containerView)
        containerView.backgroundColor = .lightGray
        containerView.layer.borderColor = UIColor.lightGray.cgColor
        containerView.layer.borderWidth = 1
        containerView.layer.cornerRadius = 26
        containerView.layer.masksToBounds = true
        containerView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    private func configureSearchImageView() {
        containerView.addSubview(searchImageView)
        searchImageView.image = searchImageViewImage
        searchImageView.tintColor = .gray
        searchImageView.snp.makeConstraints { make in
            make.left.equalTo(containerView).inset(16)
            make.centerY.equalTo(containerView)
            make.width.height.equalTo(18)
        }
    }
    
    private func configureSearchTextField() {
        containerView.addSubview(searchTextField)
        searchTextField.backgroundColor = .lightGray
        searchTextField.placeholder = textFieldPlaceHolder
        searchTextField.font = .systemFont(ofSize: 16)
        searchTextField.textColor = .black
        searchTextField.snp.makeConstraints { make in
            make.left.equalTo(searchImageView.snp_rightMargin).inset(-16)
            make.height.equalTo(24)
            make.centerY.equalTo(containerView)
        }
    }
}


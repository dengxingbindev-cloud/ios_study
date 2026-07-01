//
//  ViewController.swift
//  Example_01
//
//  Created by Meetfire on 2024/11/10.
//

import UIKit

class ViewController: UIViewController {
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        label.font = UIFont.systemFont(ofSize: 18.0, weight: .semibold)
        label.textColor = UIColor.red
        label.backgroundColor = UIColor.black
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    private func setupUI() {
        self.view.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.5)
        self.view.addSubview(self.textLabel)
        self.setupConstraints()
    }

    private func setupConstraints() {
        self.textLabel.frame = .init(x: 0, y: 0, width: 300, height: 100)
        self.textLabel.center = self.view.center
    }
}

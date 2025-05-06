//
//  ViewController.swift
//  Remainderr
//
//  Created by Yiğit Bal on 2.05.2025.
//

import UIKit

class NewTaskViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        newTaskButton()
        view.addSubview(newTaskView)
    }

    private let newTaskView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 16
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray3.cgColor
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func newTaskButton() {
        
        let newTaskButton = UIButton(type: .system)
        newTaskButton.setTitle("New Task", for: .normal)
        newTaskButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        newTaskButton.setTitleColor( .white, for: .normal)
        newTaskButton.backgroundColor = .systemBlue
        newTaskButton.layer.cornerRadius = 10
        newTaskButton.translatesAutoresizingMaskIntoConstraints = false
        newTaskButton.addTarget(self, action: #selector(newTaskButtonTapped), for: .touchUpInside)
        
        view.addSubview(newTaskButton)
        
        NSLayoutConstraint.activate([
            newTaskButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            newTaskButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            newTaskButton.widthAnchor.constraint(equalToConstant: 100),
            newTaskButton.heightAnchor.constraint(equalToConstant: 100)
        ])
        }
        
    @objc func newTaskButtonTapped() {
        
    }
}

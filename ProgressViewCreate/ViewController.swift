//
//  ViewController.swift
//  ProgressViewCreate
//
//  Created by Dilara Elçioğlu on 26.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let progressBar = UIProgressView()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
       setupUI()
    }

    func setupUI(){
        
        view.addSubview(button)
        view.addSubview(progressBar)

        button.layer.cornerRadius = 20
        button.setTitle("BUTTON", for: .normal)
        button.backgroundColor = .orange
        button.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(80)
            make.top.equalToSuperview().offset(160)
            make.centerXWithinMargins.equalToSuperview()
        }
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)

        progressBar.progress = 0  //set zero
        progressBar.trackTintColor = .lightGray
        progressBar.tintColor = .orange
        progressBar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(240)
            make.centerXWithinMargins.equalToSuperview()
            make.height.equalTo(20)
            make.width.equalTo(220)
        }
          
    }
      
    @objc func buttonClicked() {
        
        progressBar.progress += 0.1 //progress bar 0-1 oldugundan 0.1 ilerletip 10 ile carpiyoruz.
               button.setTitle("\(Int(progressBar.progress*10))", for: .normal)
        
        if progressBar.progress == 1 {
            progressBar.setProgress(0, animated: false)
            button.setTitle("Again", for: .normal)
        }
    }

}



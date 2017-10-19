//
//  Article.swift
//  documentAppSample
//
//  Created by snowman on 2017/10/11.
//  Copyright © 2017年 snowman. All rights reserved.
//

import Foundation

import RxSwift

class ArticleViewModel {
    var title = Variable<String>("Titleですよ")
    var content = Variable<String>("Contentですよ")
}

//class ArticleViewController: UIViewController {
//    
//    @IBOutlet weak var articleTitleLabel: UILabel!
//    @IBOutlet weak var articleContentLabel: UILabel!
//    
//    let viewModel = ArticleViewModel()
//    let disposeBag = DisposeBag()
//    
//    override func viewDidLoad() {
//        
//        // Title
//        viewModel.title
//            .asObservable()
//            .bindTo(articleTitleLabel.rx_text)
//            .addDisposableTo(disposeBag)
//        
//        // Content
//        viewModel.content
//            .asObservable()
//            .bindTo(articleContentLabel.rx_text)
//            .addDisposableTo(disposeBag)
//    }
//}


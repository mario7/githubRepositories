//: Playground - noun: a place where people can play

import UIKit
import Foundation
import RxSwift

/*
 - RxSwift인스톨😶
 - Observable란걸 생성해보자😯
 - Observable과 구독(Subscribe)을 해보자😲
 - Dispose해보기😵
 - 다른 타입의 Observable도 알아보자😳
 - RxCocoa를 사용해보자！🤓
 - MVVM를 간단히 체험해보자.🤗
 */


// Observable란걸 생성해보자

Observable.of(1,2,3,4,5)
Observable.from([10,11,12,13,14])
Observable.just(1000)

// Observable과 구독(Subscribe)을 해보자
Observable.of(1,2,3,4,5)
    .subscribe(onNext: { (value) in
        print("value \(value)")
    })

Observable.from([10,11,12,13,14])
    .subscribe(onNext: { (value) in
        print("value \(value)")
    })

Observable.just(1000)
    .subscribe(onNext: { (value) in
        print("value \(value)")
    })


// Dispose해보기

let bag = DisposeBag()
Observable.just(1000)
    .subscribeOn(MainScheduler.instance) // 메인 스레드로 구독 처리 하고 싶으면 이 옵션을 미리 걸어둠.
    .subscribe(onNext: { (value) in
        print("value \(value)")
        print(Thread.current)
    })
    .disposed(by: bag)


// 다른 타입의 Observable도 알아보자

let ob1 = Observable<String>.create { (observer) -> Disposable in
    
    // 보통 Observable<>.create를 이용해서 비동기 처리결과를 던져주고 이것을 subscribe로 받아서 치리하는 구조가 많음.
    observer.onNext("value 입니다")
    
    return Disposables.create()
}

ob1
    .subscribe(onNext: { (value) in
        print("observable create value \(value)")
    })
    .addDisposableTo(bag)




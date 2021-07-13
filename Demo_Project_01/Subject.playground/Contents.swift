import UIKit
import RxSwift
let subject = PublishSubject<String>()
 
subject.onNext("Hello There")
 let subscription1 = subject
     .subscribe(onNext: { value in
         print(value)
     })
subject.onNext("I Have The Highground ANAKIN")
subject.onNext("You Were Supposed To Be The Chosen One")
subject.onNext("Not Join Them")


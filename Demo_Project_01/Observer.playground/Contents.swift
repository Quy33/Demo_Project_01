import UIKit
import RxSwift
let ios = 1
let android = 2
let flutter = 3
let observable1 = Observable<Int>.just(android)

let observable2 = Observable.of(ios, android, flutter)

let observable3 = Observable.of([ios, android, flutter])

let observable4 = Observable.from([ios, android, flutter])

let observer = NotificationCenter.default.addObserver( forName: UIResponder.keyboardDidChangeFrameNotification, object: nil,
queue: nil) { notification in
  // Handle receiving notification
}

let sequence = 0..<3
var iterator = sequence.makeIterator()
while let n = iterator.next(){
    print(n)
}

observable1.subscribe{ event in
    print(event)
}

observable2.subscribe { event in
    if let element = event.element {
        print(element)
      }
}

observable3.subscribe(onNext: { (value) in
    print(value)
}, onError: { (error) in
    print(error.localizedDescription)
}, onCompleted: {
    print("completed")
}){
    print("disposed")
}
observable4.subscribe(onNext: { (value) in
    print(value)
}, onCompleted: { print("completed")})
/*
let observable = Observable<Void>.empty()

observable.subscribe(
  onNext: { element in
    print(element)
},
  onCompleted: {
    print("COMPLETED")
  }
)
*/
/*
let observable = Observable<Any>.never()
observable.subscribe(onNext: { element in
    print(element)
}, onCompleted: {print("COMPLETED")})
*/
let observable = Observable<Int>.range(start: 1, count: 10)
var sum = 0
observable.subscribe(onNext: { i in
    sum += i
}, onCompleted: {print("COMPLETED")})


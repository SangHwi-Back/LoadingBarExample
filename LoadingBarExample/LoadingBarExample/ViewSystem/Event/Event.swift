//
// Created by 백상휘 on 2022/06/10.
//

import Foundation
import RxCocoa
import RxSwift

class Event {
    private var observable = ReplayRelay<Listener>.create(bufferSize: 1)
    private var disposeBag = DisposeBag()
    
    /// Adds an event listener, notifying the provided method when the event is emitted.
    func addListener(listener: Listener) {
        observable.accept(listener)
    }
    
    /// Removes the object from the list of objects that get notified of the event.
    func removeListener(listener: Listener) {
        self.observable = ReplayRelay<Listener>.create(bufferSize: 1)
    }
    
    /// Publishes the specified data to all listeners via the global utility dispatch queue.
    func emit(data: Any) {
        observable.subscribe { $0.execute()  }.disposed(by: disposeBag)
    }
}

/// 내부에 execute:()->Void 를 실행할 수 있음.
/// Event에서 emit 되면서 실행됨.
class Listener {
    let execute: () -> Void
    
    init(_ execute: @escaping () -> Void) {
        self.execute = execute
    }
}

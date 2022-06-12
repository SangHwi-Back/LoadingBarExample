//
// Created by 백상휘 on 2022/06/10.
//

import UIKit
import RxSwift
import Promises

/// View(Cell)들이 모델의 구체 타입을 알고 있어야 한다는 단점이 존재함.
/// Component 로 개선.
protocol Component: CellItemModelType, FlowSizeable {
    associatedtype Content: UIView
    
    func createContent() -> Promise<Content>
    func render(content: Content, context: Context)
}

// UIKit snp constraints
protocol Context {
    var disposeBag: DisposeBag { get }
    func makeConstraints(_ type: StaticConstraintType)
}

enum StaticConstraintType {
    case equalToSuperView
}

//
// Created by 백상휘 on 2022/06/10.
//

import Foundation
import RxSwift
import Promises
import UIKit

struct OnTouchModifier<Wrapped: Component>: ComponentModifier where Wrapped.Content: Touchable {
    typealias Content = Wrapped.Content
    
    let wrapped: Wrapped
    let onTouch: (Content) -> Void
    
    func createContent() -> Promise<Content> {
        Promise<Wrapped.Content>.pending()
    }
    
    func render(content: Content, context: Context) {
        wrapped.render(content: content, context: context)
        content.touchableAreaTap // content 받아와서 이벤트 연결
            .subscribe({ event in
                guard let content = event.element as? Content else { return }
                onTouch(content)
            })
            .disposed(by: context.disposeBag)
    }
    
}

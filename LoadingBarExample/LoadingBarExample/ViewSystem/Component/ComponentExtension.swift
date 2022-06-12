//
// Created by 백상휘 on 2022/06/10.
//

import UIKit

extension Component where Content: Touchable {
    func onTouch(_ onTouch: @escaping (Content) -> Void) -> OnTouchModifier<Self> {
        OnTouchModifier<Self>(wrapped: self, onTouch: onTouch)
    }
}

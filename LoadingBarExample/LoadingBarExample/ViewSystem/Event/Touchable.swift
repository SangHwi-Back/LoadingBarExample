//
// Created by 백상휘 on 2022/06/11.
//

import UIKit
import RxRelay
import RxCocoa

/// 뷰의 터치 관련 기능을 담당
protocol Touchable: EventContainsDataObject {
    var touchableAreaTap: ControlEvent<UIView> { get }
    func onTouch() -> PublishRelay<DataObject>
}

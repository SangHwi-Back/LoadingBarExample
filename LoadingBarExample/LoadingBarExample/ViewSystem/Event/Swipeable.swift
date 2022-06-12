//
//  Created by 백상휘 on 2022/06/11.
//

import Foundation
import RxRelay

protocol Swipeable: EventContainsDataObject {
    func onSwipe() -> PublishRelay<DataObject>
}

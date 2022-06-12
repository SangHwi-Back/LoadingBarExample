//
// Created by 백상휘 on 2022/06/10.
//

import Foundation
import RxRelay
import RxSwift

/// 뷰를 설정하는 모델 추상타입
class CellItemModel: CellItemModelType, FlowSizeable {
    private(set) var touchableAreaTap: PublishRelay<CellItemModelType>
    private(set) var disposeBag: DisposeBag
    
    init() {
        self.touchableAreaTap = PublishRelay<CellItemModelType>()
        self.disposeBag = DisposeBag()
    }
}

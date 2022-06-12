//
// Created by 백상휘 on 2022/06/10.
//

import Foundation

/// View(Cell)을 바인딩 할 수 있는 프로토콜
protocol CellItemModelBindable {
    func bind(cellItemModel: CellItemModelType)
}

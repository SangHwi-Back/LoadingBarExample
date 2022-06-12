//
// Created by 백상휘 on 2022/06/10.
//

import Foundation

class MainViewListRow: CellItemModelBindable {
    func bind(cellItemModel: CellItemModelType) {
        guard let model = cellItemModel as? MainCellItemModel else { return }
    }
}

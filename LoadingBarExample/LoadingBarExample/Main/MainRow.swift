//
//  ListRow.swift
//  LoadingBarExample
//
//  Created by 백상휘 on 2022/06/11.
//

import Foundation
import UIKit

class MainRow: UIView, CellItemModelBindable {
    func bind(cellItemModel: CellItemModelType) {
        guard let model = cellItemModel as? MainCellItemModel else { return }
    }
}

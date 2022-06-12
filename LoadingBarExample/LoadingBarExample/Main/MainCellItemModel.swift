//
// Created by 백상휘 on 2022/06/10.
//

import Foundation

class MainCellItemModel: CellItemModel {
    let temporary: String = "temp"
    let temporary2: String = "temp"
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(temporary)
        hasher.combine(temporary2)
    }
}

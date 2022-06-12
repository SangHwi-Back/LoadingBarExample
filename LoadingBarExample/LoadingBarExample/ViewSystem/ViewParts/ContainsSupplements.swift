//
// Created by 백상휘 on 2022/06/11.
//

import Foundation

protocol ContainsSupplements {
    associatedtype Supplement: Hashable
    var supplements: [Supplement] { get }
}

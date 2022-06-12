//
// Created by 백상휘 on 2022/06/10.
//

import Foundation

protocol ComponentModifier: Component {
    associatedtype Wrapped: Component where Wrapped.Content == Content
    var wrapped: Wrapped { get }
}

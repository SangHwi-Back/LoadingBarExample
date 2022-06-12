//
// Created by 백상휘 on 2022/06/10.
//

import UIKit
import SnapKit
import Promises

class ContainerCell<C>: UICollectionViewCell, CellItemModelBindable where C: Component {
    var context: Context!
    var content: Promise<C.Content>!
    
    func component(with model: CellItemModelType) -> C? {
        MainRowComponent() as? C
    }
    
    func bind(cellItemModel: CellItemModelType) {
        guard let component = component(with: cellItemModel) else {
            return assertionFailure()
        }
        
        content = content ?? component.createContent()
            .then { content in
                self.contentView.addSubview(content)
                
                content.snp.makeConstraints { make in
                    make.edges.equalToSuperview()
                }
            }
    }
}

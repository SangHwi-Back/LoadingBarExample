# 프로젝트 설명

토스 개발팀에서 사용하는 특정한 구조를 사용하여 UIKit, SwiftUI 모두 사용이 가능하도록 한 SLASH 22 발표를 토대로 아래 프로젝트를 제작합니다.

토스앱은 대부분의 뷰를 UICollectionView 로 구현하고 있으므로, 해당 뷰만을 간단히 구현한다.

# Architecture

## MVC Domain
- Toss-Design-System 에 대칭되는 `View`
- 뷰가 가져야 할 기능에 따른 `View protocol`
   - protocol Touchable
   - protocol ContainsButton
   - protocol ContainsSwitch
- View를 설정하는 Model. 아래 protocol 들을 구현하여 모델의 추상타입인 CellItemModel을 정의.
   - view의 모델을 정의하는 `protocol CellItemModelType`
   - 각 셀(View) 사이즈 계산을 위한 `protocol FlowSizeable`
- CellItemModel을 바인딩 할 수 있는 `protocol CellItemModelBindable`
   - Toss-Design-System's View 는 이 protocol 구현을 통해 구체타입이 된다.

## UICollectionView Domain

- UICollectionViewDataSource, UICollectionViewDelegateFlowLayout 의 역할을 대신하는 `class CollectionViewAdapter`
- 전체 섹션을 선언한 `@SectionModelBuilder`

## Component Domain

- `protocol CellItemModelType`, `protocol FlowSizeable` 을 구현하는 `protocol Component`
   - CellItemModelType 으로 인해 CollectionViewAdapter로 에서 사용 가능
- `Component` 를 이용하여 cellForItem(at:)이 호출될 때 render할 수 있는 `class ContainerCell`
- ContainerCell, Component 를 간소화 한 `protocol ComponentModifier`

**Builder는 실제 SwiftUI에도 있는 구조이므로, UIKit/SwiftUI 모두 병행 가능하다는 이론이다.**

# 시연(예정)




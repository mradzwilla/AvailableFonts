import UIKit
import SpriteKit
class GameScene: SKScene {
    var familyIdx: Int = 0
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(size: CGSize) {
        super.init(size: size)
        showCurrentFamily()
    }
    func showCurrentFamily() {
        // 1
        removeAllChildren()
        // 2
        let familyName = UIFont.familyNames[familyIdx] as String
        print("Family: \(familyName)")
        // 3
        let fontNames = UIFont.fontNames(forFamilyName: familyName) as [String]
        // 4
        for (idx, fontName) in fontNames.enumerated() {
            let label = SKLabelNode(fontNamed: fontName)
            label.text = fontName
            label.position = CGPoint(
                x: size.width / 2,
                y: (size.height * (CGFloat(idx+1))) /
                    (CGFloat(fontNames.count)+1))
            label.fontSize = 25
            label.verticalAlignmentMode = .center
            addChild(label)
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        familyIdx += 1
        if familyIdx >= UIFont.familyNames.count {
            familyIdx = 0
        }
        showCurrentFamily()
    }
}

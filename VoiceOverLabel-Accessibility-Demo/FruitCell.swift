//
//  FruitCell.swift
//  VoiceOverLabel-Accessibility-Demo
//
//  Created by Daniyal Yousuf on 2023-05-11.
//

import UIKit

final class FruitCell: UITableViewCell {    
    @IBOutlet weak private var emojiLabel: UILabel!
    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var scoreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAccessibilityHints()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func populate(with fruit: Fruit) {
        emojiLabel.text = fruit.emoji
        nameLabel.text = fruit.name
        scoreLabel.text = fruit.score
        scoreLabel.accessibilityValue = "\(fruit.rating) out of 5 stars"
    }
    
    private func setupAccessibilityHints() {
        emojiLabel.enableAccessibility(with: "emoji representation of fruit")
        nameLabel.enableAccessibility(with: "the name of the fruit")
        scoreLabel.enableAccessibility(with: "the health score of the fruit")
    }
}


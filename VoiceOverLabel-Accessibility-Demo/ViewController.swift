//
//  ViewController.swift
//  VoiceOverLabel-Accessibility-Demo
//
//  Created by Daniyal Yousuf on 2023-05-11.
//

import UIKit

typealias TableViewMethods  = UITableViewDelegate & UITableViewDataSource

final class ViewController: UIViewController {
    
  private let fruits = [Fruit(emoji: "🍎", name: "Apple", rating: 5),
                          Fruit(emoji: "🍌", name: "Banana", rating: 1),
                          Fruit(emoji: "🍑", name: "Peach", rating: 2),
                          Fruit(emoji: "🍇", name: "Grape", rating: 3),
                          Fruit(emoji: "🍊", name: "Orange", rating: 4)]
    
    @IBOutlet  weak private  var animalsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fruits"
        animalsTableView.register(.init(nibName: FruitCell.Id, bundle: nil),
                                  forCellReuseIdentifier: FruitCell.Id)
    }
    
}

extension ViewController: TableViewMethods {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FruitCell.Id,
                                                 for: indexPath) as! FruitCell
        cell.populate(with: fruits[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
}

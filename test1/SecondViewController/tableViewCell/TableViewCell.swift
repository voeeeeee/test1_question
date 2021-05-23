//
//  TableViewCell.swift
//  test1
//
//  Created by 竹辻篤志 on 2021/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func didTap(_ sender: Any) {
        print("タップされたよ")
        let thirdVC = ThirdViewController()
        thirdVC.navigationController?.pushViewController(thirdVC, animated: true)
    }

}

//
//  TableViewCell.swift
//  test1
//
//  Created by 竹辻篤志 on 2021/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    private var didTapHandler: () -> Void = {}

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(didTap: @escaping () -> Void) {
        didTapHandler = didTap
    }

    @IBAction func didTap(_ sender: Any) {
        print("タップされたよ")
        didTapHandler()
    }

}

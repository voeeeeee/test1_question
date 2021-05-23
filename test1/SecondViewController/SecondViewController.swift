//
//  HomeViewController.swift
//  test1
//
//  Created by 竹辻篤志 on 2021/05/23.
//

import UIKit

class SecondViewController: MainViewController,UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        self.navigationItem.hidesBackButton = true
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell

        cell.configure(didTap: { [weak self] in
            let thirdVC = ThirdViewController()
            self?.navigationController?.pushViewController(thirdVC, animated: true)
        })

        return cell
    }
}

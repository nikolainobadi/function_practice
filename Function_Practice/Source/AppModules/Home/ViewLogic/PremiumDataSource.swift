//
//  PremiumDataSource.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/22/21.
//

import UIKit

typealias DataSource = UITableViewDiffableDataSource<Section, Premium>
typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Premium>

enum Section {
    case main
}

class PremiumDataSource: UITableViewDiffableDataSource<Section, Premium> {
    
    // MARK: - INIT
    init(_ table: UITableView) {
        super.init(tableView: table) { (table, indexPath, premium) -> UITableViewCell? in
            
            let cell = table.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
            
            let oneTime = premium.oneTime ? "--- one time" : ""
            let text = "\(premium.name): $\(premium.rate)/hour \(oneTime)"
            cell.setCustomLabel(text)
            
            return cell
        }
    }
}

extension PremiumDataSource {
    
    // MARK: - Update
    func updateList(_ list: [Premium]) {
        var snapshot = Snapshot()
        snapshot.appendSections([.main])
        snapshot.appendItems(list)
        apply(snapshot)
    }
}

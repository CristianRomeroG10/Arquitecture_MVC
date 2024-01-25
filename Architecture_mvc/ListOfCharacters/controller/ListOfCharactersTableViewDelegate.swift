//
//  ListOfCharactersTableViewDelegate.swift
//  Architecture_mvc
//
//  Created by Cristian guillermo Romero garcia on 23/01/24.
//

import Foundation
import UIKit

class ListOfCharactersTableViewDelegate: NSObject, UITableViewDelegate{
    var didTapOnCell: ((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        110
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        didTapOnCell?(indexPath.row)
    }
}

//
//  SettingApp
//
//  Created by Disha patel on 6/4/24.
//

import UIKit

struct setting {
    var name: String
    var image: String
}
struct category {
    var settings: [setting]
}

class SettingViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var categories: [category] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        generateData()
    }
    
    func generateData(){
        categories = [ category(settings: [
                                setting(name: "Screen Time", image: "clock.arrow.2.circlepath"),
                                setting(name: "Action Button", image: "arrow.uturn.backward.circle.badge.ellipsis")
                        ]),
                       category(settings: [
                                setting(name: "General", image: "gear"),
                                setting(name: "Accessibility", image: "person.2.gobackward")
                       ]),
                       category(settings: [
                                setting(name: "Password", image: "key")
                       ]),
                       category(settings: [
                                setting(name: "Safari", image: "safari"),
                                setting(name: "News", image: "newspaper"),
                                setting(name: "Translate", image: "swatchpalette"),
                                setting(name: "Maps", image: "map"),
                                setting(name: "Shortcuts", image: "square.stack.3d.up"),
                                setting(name: "Health", image: "heart"),
                                setting(name: "Siri & Search", image: "sparkle.magnifyingglass"),
                                setting(name: "Photos", image: "photo.stack")
                       ])]
    }
}

extension SettingViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories[section].settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath) as! SettingTableViewCell
        let setting = categories[indexPath.section].settings[indexPath.row]
        cell.nameLabel.text = setting.name
        cell.logoImage.image = UIImage(systemName: setting.image)
        return cell
    }
}


import UIKit
import Alamofire
import SnapKit

class ViewController: UIViewController {

    var characters: [Character] = []

    private var names = ["John0", "John1", "John2", "John3", "John4", "John5", "John6", "John7", "John8", "John9"]

    private var icon = [UIImage(systemName: "sos"), UIImage(systemName: "sos"), UIImage(systemName: "sos"), UIImage(systemName: "sos"), UIImage(systemName: "sos"), UIImage(systemName: "sos"), UIImage(systemName: "sos"), UIImage(systemName: "sos"), UIImage(systemName: "sos"), UIImage(systemName: "sos")]

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "TableView"
        navigationController?.navigationBar.prefersLargeTitles = true

        setupHierarchy()
        setupLayout()

//        fetchSeries()
    }

    func setupHierarchy() {
        view.addSubview(tableView)
    }

    func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(view)
        }
    }
//    func fetchSeries() {
//        let request = AF.request("https://api.jikan.moe/v3/anime/38000")
//        request.responseJSON { (data) in
//            print(data)
//        }
//    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.imageView?.image = icon[indexPath.row]
        return cell
    }

}








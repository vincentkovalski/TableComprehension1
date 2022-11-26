import UIKit

class CustomTableViewCell: UITableViewCell {

/*
 Последним приготовление ячейки будет добавлением некой переменной, при вызове которой мы будем получать доступ ко всем нужным элементам в ячейке и подставлять их извне.
 Как только dataSource начнет передавать данные в ячейку, наблюдатель их подхватит и подставит в элементы интерфейса. Позже увидишь, как это работает.
 */
    var person: Person? {
        didSet {
            personImage.image = person?.photoImage
            countryImage.image = person?.countryImage
            name.text = person?.name
            profession.text = person?.profession.rawValue
        }
    }

    private let personImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 30

        return imageView
    }()

    private let countryImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()

    private let name: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()

    private let profession: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        return label
    }()

    private let imageContainer: UIView = {
        let container = UIView()
        return container
    }()

    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 1
        return stack
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupHierarchy() {
        stack.addArrangedSubview(name)
        stack.addArrangedSubview(profession)
        imageContainer.addSubview(personImage)
        imageContainer.addSubview(countryImage)
        addSubview(imageContainer)
        addSubview(stack)
    }

    private func setupLayout() {
        personImage.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(imageContainer)
            make.center.equalTo(imageContainer)
        }

        countryImage.snp.makeConstraints { make in
            make.right.bottom.equalTo(imageContainer)
            make.height.width.equalTo(20)
        }

        imageContainer.snp.makeConstraints { make in
            make.top.left.bottom.equalTo(contentView).offset(10)
            make.centerY.equalTo(contentView)
            make.width.height.equalTo(60)
        }

        stack.snp.makeConstraints { make in
            make.centerY.equalTo(imageContainer)
            make.left.equalTo(imageContainer.snp.right).offset(20)
        }
    }



}

# UITableViewPractice

<img src="https://github.com/Wuchiwei/UITableViewPractice/blob/master/images/UITableViewPractice_snapshot.png" alt="snapshot" width=600>

### Step

1. Add UITableView into ViewController via Main.storyboard.
2. Connect IBOutlet with name as tableView

```swift
@IBOutlet weak var tableView: UITableView!
```
3. Add UITableViewCell UI Component in UITableView which inside the Main.storyboard
4. Add **reuseIdentifier** about the cell. Here we choose `NTU` as our reuseIdentifier.
6. Create a class `ProfileTableViewCell` inherits `UITableViewCell`. Connect the `ProfileTableViewCell` with UITableView cell UI element in storyboard. 
7. Add IBOutlet in `ProfileTableViewCell`

```swift
@IBOutlet weak var userImageView: UIImageView!
    
@IBOutlet weak var userNameLabel: UILabel!
    
@IBOutlet weak var userQuoteLabel: UILabel!
```
8. Make ViewController conform `UITableViewDataSource` and `UITableViewDelegate`

```swift
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { ... }
```

9. Add protocol required method in ViewController class

```swift
func numberOfSections(in tableView: UITableView) -> Int {
        
    return 2
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return 1
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCell(withIdentifier: "NTU", for: indexPath)

    guard let profileCell = cell as? ProfileTableViewCell else { return cell }

    if indexPath.section == 0 {

        profileCell.userImageView?.image = UIImage(named: "Steven_Jobs")

        profileCell.userNameLabel.text = "Steven_Jobs"

        profileCell.userQuoteLabel.text = "Stay Hungry, Stay Foolish."

    } else if indexPath.section == 1 {

        profileCell.userImageView?.image = UIImage(named: "Tim_Cook")

        profileCell.userNameLabel.text = "Tim_Cook"

        profileCell.userQuoteLabel.text = "Make Apple Great Again!"
    }

    return profileCell
}

func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

    if section == 0 {

        return "最近更新"

    } else {

        return "好友"
    }
}

//MARK: - UITableViewDelegatez

func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

    return 64.0
}
```

//
//  menuViewControllerCollectionViewController.swift
//  Cup Of Joe
//
//  Created by Connor Reed on 9/22/21.
//

import UIKit
import SafariServices

private let reuseIdentifier = "Cell"
var student = true

var menu = [
    [
        ["Burrito", "burrito", "", "$5"],
        ["Burrito and Coffee Combo", "generic", "", "$6"],
        ["Burrito and Latte Combo", "generic", "", "$7"],
        ["Donut", "donut", "", "$1"],
        ["Latte", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$3.25"],
        ["Mocha", "generic", "Order hot or cold Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$3.25"],
        ["Cappuchino", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$3.25"],
        ["Chai", "generic", "Order Hot or Cold Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$3.25"],//done
        ["Flavored Latte", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk Choose a Flavor; Vanilla, Chocolate, Caramel, Salted Caramel, Hazelnut, White Chocolate, Peppermint, Peppermint Paddy, Irish Cream, Pumpkin Pie, English Toffee, Brown Sugar Cinnamon, Raspberry, Peach, Black Cherry, Coconut, Almond, or Macadamia Nut", "$3.50"],
        ["Flavored Mocha", "flavored mocha", "Order Hot or Cold Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk Choose a Flavor; Vanilla, Chocolate, Caramel, Salted Caramel, Hazelnut, White Chocolate, Peppermint, Peppermint Paddy, Irish Cream, Pumpkin Pie, English Toffee, Brown Sugar Cinnamon, Raspberry, Peach, Black Cherry, Coconut, Almond, or Macadamia Nut", "$3.50"],
        ["Flavored Cappuchino", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk Choose a Flavor; Vanilla, Chocolate, Caramel, Salted Caramel, Hazelnut, White Chocolate, Peppermint, Peppermint Paddy, Irish Cream, Pumpkin Pie, English Toffee, Brown Sugar Cinnamon, Raspberry, Peach, Black Cherry, Coconut, Almond, or Macadamia Nut", "$3.50"],
        ["Flavored Chai", "flavored chai", "Order Hot or Cold Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk Choose a Flavor; Vanilla, Chocolate, Caramel, Salted Caramel, Hazelnut, White Chocolate, Peppermint, Peppermint Paddy, Irish Cream, Pumpkin Pie, English Toffee, Brown Sugar Cinnamon, Raspberry, Peach, Black Cherry, Coconut, Almond, or Macadamia Nut", "$3.50"],//done
        ["Americano", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$2"],
        ["Small Coffee", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$1.75"],//done
        ["Large Coffee", "generic","Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$2"],
        ["Hot Chocolate", "generic","Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$2"],
        ["Chocolate Milk", "chocolate milk","There is a wide variety of flavors and types of teas that change based on season and stock that are able to be chosen from, when you order, order what tea you would like and when you go in they will make sure it is available", "$2"],//done
        ["Hot/Iced Tea", "tea","", "$1"],
        ["12 oz Nitro Cold Brew", "generic", "", "$3.50"],
        ["Expresso Shot", "expresso shot","", "$1"],
        ["Noosa Yoghurt", "noosa", "Flavors Vary, if you order yogurt, when you go to pick it up, they will tell you what flavors they have and you can pick from those flavors", "$1.50"]
    ],
    [
        ["Latte", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$3.25"],
        ["Mocha", "generic", "Order hot or cold Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$3.25"],
        ["Cappuchino", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$3.25"],
        ["Chai", "generic", "Order Hot or Cold Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$3.25"],//done
        ["Flavored Latte", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk Choose a Flavor; Vanilla, Chocolate, Caramel, Salted Caramel, Hazelnut, White Chocolate, Peppermint, Peppermint Paddy, Irish Cream, Pumpkin Pie, English Toffee, Brown Sugar Cinnamon, Raspberry, Peach, Black Cherry, Coconut, Almond, or Macadamia Nut", "$3.50"],
        ["Flavored Mocha", "flavored mocha", "Order Hot or Cold Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk Choose a Flavor; Vanilla, Chocolate, Caramel, Salted Caramel, Hazelnut, White Chocolate, Peppermint, Peppermint Paddy, Irish Cream, Pumpkin Pie, English Toffee, Brown Sugar Cinnamon, Raspberry, Peach, Black Cherry, Coconut, Almond, or Macadamia Nut", "$3.50"],
        ["Flavored Cappuchino", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk Choose a Flavor; Vanilla, Chocolate, Caramel, Salted Caramel, Hazelnut, White Chocolate, Peppermint, Peppermint Paddy, Irish Cream, Pumpkin Pie, English Toffee, Brown Sugar Cinnamon, Raspberry, Peach, Black Cherry, Coconut, Almond, or Macadamia Nut", "$3.50"],
        ["Flavored Chai", "flavored chai", "Order Hot or Cold Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk Choose a Flavor; Vanilla, Chocolate, Caramel, Salted Caramel, Hazelnut, White Chocolate, Peppermint, Peppermint Paddy, Irish Cream, Pumpkin Pie, English Toffee, Brown Sugar Cinnamon, Raspberry, Peach, Black Cherry, Coconut, Almond, or Macadamia Nut", "$3.50"],//done
        ["Americano", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$2"],
        ["Small Coffee", "generic", "Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$1.75"],//done
        ["Large Coffee", "generic","Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$2"],
        ["Hot Chocolate", "generic","Choose a Milk; Cow's milk, Chocolate milk, Oat milk, or Almond milk", "$2"],
        ["Chocolate Milk", "chocolate milk","There is a wide variety of flavors and types of teas that change based on season and stock that are able to be chosen from, when you order, order what tea you would like and when you go in they will make sure it is available", "$2"],//done
        ["Hot/Iced Tea", "tea","", "$1"],
        ["12 oz Nitro Cold Brew", "generic", "", "$3.50"],
        ["Expresso Shot", "expresso shot","", "$1"],
        ["Noosa Yoghurt", "noosa", "Flavors Vary, if you order yogurt, when you go to pick it up, they will tell you what flavors they have and you can pick from those flavors", "$1.50"]
    ]
]

class menuViewControllerCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout, SFSafariViewControllerDelegate{
    var selectedMenu = student ? menu[1] : menu[0]
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            self.selectedMenu = student ? menu[1] : menu[0]
            self.collectionView.reloadData()
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(MenuCellCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    func getMaxHeight() -> Double{
        var maxHeight:Double = 0.0
        for item in 0...(selectedMenu.count - 1){
            print(selectedMenu[item])
            let height = Double(selectedMenu[item][2].count)
            if height > maxHeight{
                maxHeight = height
            }
        }
        return maxHeight
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let additionalHeight = Double(selectedMenu[indexPath.row][2].count)
        return CGSize(width: 220.0, height: 220.0 + additionalHeight)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return selectedMenu.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> MenuCellCollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MenuCellCollectionViewCell
        if let label = cell.titleLabel{
            label.text = "\(selectedMenu[indexPath.row][0]): \(selectedMenu[indexPath.row][2]) \n \(selectedMenu[indexPath.row][3])"
            label.sizeToFit()
            let pos = label.frame.origin
            label.frame = CGRect(origin: CGPoint(x: pos.x, y: pos.y), size: CGSize(width: 220, height: label.frame.height))
        }
        cell.image.image = UIImage(named: selectedMenu[indexPath.row][1])
        cell.translatesAutoresizingMaskIntoConstraints = false
        //let topConstraint = NSLayoutConstraint(item: cell, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 100)
        //view.addConstraint(topConstraint)
        // Configure the cell
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

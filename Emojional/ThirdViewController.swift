//
//  ThirdViewController.swift
//  Emojional
//
//  Created by Isabella Hochschild on 5/6/21.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func burgerClicked(_ sender: Any) {
        let alertController = UIAlertController(title: "Emojional This or That", message: globalVars.customStruct.emojiMessages[((sender as AnyObject).titleLabel?.text as! String)]![Int.random(in: 0..<(globalVars.customStruct.emojiMessages[(sender as AnyObject).titleLabel?.text as! String]!.count))] as! String, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Continue to next question!", style: UIAlertAction.Style.default, handler: afterAlert))
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func tacoClicked(_ sender: Any) {
        let alertController = UIAlertController(title: "Emojional This or That", message: globalVars.customStruct.emojiMessages[((sender as AnyObject).titleLabel?.text as! String)]![Int.random(in: 0..<(globalVars.customStruct.emojiMessages[(sender as AnyObject).titleLabel?.text as! String]!.count))] as! String, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Continue to next question!", style: UIAlertAction.Style.default, handler: afterAlert))
        present(alertController, animated: true, completion: nil)
    }
    
    func afterAlert(alert:UIAlertAction!) {
        performSegue(withIdentifier: "thirdToFourth", sender: (Any).self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

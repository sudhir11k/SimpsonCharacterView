//
//  DetailViewController.swift
//  xfinity
//
//  Created by Sudhir Kumar on 3/28/19.
//  Copyright © 2019 Sudhir Kumar. All rights reserved.
//

import UIKit

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
            }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}


class DetailViewController: UIViewController {

    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var detailTextView: UITextView!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            self.navigationItem.title = detail.listItemTitle
            if let label = detailTextView {
                label.text = detail.listItemText
            }
            if let iconImage = iconImageView {
                iconImage.downloaded(from: detail.listItemURL ?? "")
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: XfinityItemProViewModel? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    

}


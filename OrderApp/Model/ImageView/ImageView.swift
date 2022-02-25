//
//  ImageView.swift
//  OrderApp
//
//  Created by admin on 2/25/22.
//  Copyright © 2022 admin. All rights reserved.
//
import UIKit
extension UIImageView {
    func load(url: String) {
        DispatchQueue.global().async { [weak self] in
            var temp = url
            temp.removeLast(4)
            guard let newUrl = URL(string: "https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/06/easy-cherry-jam.jpg" )else{
                print("DDDDDDD")
                return
            }
            print(newUrl.absoluteString)
            if let data = try? Data(contentsOf: newUrl) {
                print("a")
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

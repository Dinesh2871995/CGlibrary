//
//  CGlibraryView.swift
//  CGlibrary
//
//  Created by apple on 19/06/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

public class CGlibraryView: UIView {

    @IBOutlet weak var xPosi: UILabel!
    @IBOutlet weak var yPosi: UILabel!
    


    
    public func cordinatedView(x:Int,y:Int,action:String) -> String
    {

        switch action {
        case "+":
            return "\(x+y)"
            break
        case "-":
            return "\(x-y)"
            break
        case "*":
            return "\(x*y)"
            break
        case "/":
            return "\(x/y)"
            break
        default:
            return "0"
        }

        
    }

    public func getView(content:[String],contentToDisplay:Int,height:Int,width:Int,color:UIColor,radius:Int) -> UIView
    {
        var myView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        myView.backgroundColor = color
        myView.layer.cornerRadius = CGFloat(radius)
        let elementSize = (height/contentToDisplay)
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        scrollView.contentSize =  CGSize(width: width, height: (elementSize*content.count))
        
        var btnPosi = 0
        for element in content
        {
            var btn = UIButton(frame: CGRect(x: 0,y: btnPosi,width:width,height:elementSize))
            btnPosi = btnPosi+elementSize
            btn.setTitle(element,for: .normal)
            btn.setTitleColor(UIColor.black, for: .normal)
            scrollView.addSubview(btn)
        }
        myView.addSubview(scrollView)
        return myView
    }
}

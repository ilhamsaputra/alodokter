//
//  ImageSliderView.swift
//  ImageSlider
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

open class ImageSliderView: UIView{

    var imageSliderScrollView : ImageSliderScrollView?
    
    fileprivate var pageControl = UIPageControl()
    
    open var images = [UIImage](){
        didSet{
            guard images.count != 0 else{return}
            guard let scrollView = imageSliderScrollView else{return}
            scrollView.images = images
            pageControl.numberOfPages = images.count
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        imageSliderScrollView = ImageSliderScrollView(frame: bounds)
        imageSliderScrollView!.delegate = self
        pageControl.center = CGPoint(x: frame.width/2,y: frame.height)
        pageControl.currentPage = imageSliderScrollView!.currentIndex
        pageControl.pageIndicatorTintColor = UIColor(hex: "#BDBDBD")
        pageControl.currentPageIndicatorTintColor = UIColor(hex: "#3776DB")
        self.addSubview(imageSliderScrollView!)
        self.addSubview(pageControl)
    }
}

extension ImageSliderView:UIScrollViewDelegate{
    public func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        guard let view = scrollView as? ImageSliderScrollView else {return}
        view.prepareForDragging()
    }
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let view = scrollView as? ImageSliderScrollView else {return}
        view.updateTransit()    
        pageControl.currentPage = view.updateCurrentPage()
    }
}

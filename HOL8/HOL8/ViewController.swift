//
//  ViewController.swift
//  HOL8
//
//  Created by admin on 2/6/20.
//  Copyright © 2020 Revature. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
    
    class PageViewController: UIPageViewController{
        fileprivate lazy var pages: [UIViewController] = {
            return [
                self.getViewController(withIdentifier: "Kjay"),
                self.getViewController(withIdentifier: "Nathan"),
                self.getViewController(withIdentifier: "Jeremy"),
                self.getViewController(withIdentifier: "Kyle"),
                self.getViewController(withIdentifier: "Wesley"),
                self.getViewController(withIdentifier: "Mark"),
                self.getViewController(withIdentifier: "Dane")
                
            ]
        }()
        fileprivate func getViewController(withIdentifier identifier: String) -> UIViewController {
            return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier)
        }
        
        override func viewDidLoad(){
            super.viewDidLoad()
            self.dataSource = self
            self.delegate = self
            
            if let firstVC = pages.first{
                setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
            }
        }
    }
    
    extension PageViewController: UIPageViewControllerDataSource{
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
            guard let viewControllerIndex = pages.index(of: viewController)
                else{
                    return nil
            }
            let previousIndex = viewControllerIndex - 1
            guard previousIndex >= 0
                else{
                    return pages.last
            }
            guard pages.count > previousIndex
                else{
                    return nil
            }
            return pages[previousIndex]
        }
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
            guard let viewControllerIndex = pages.index(of: viewController)
                else{
                    return nil
            }
            let nextIndex = viewControllerIndex + 1
            guard nextIndex < pages.count
                else{
                    return nil
            }
            guard pages.count > nextIndex
                else{
                    return nil
            }
            return pages[nextIndex]
        }
    }
    extension PageViewController: UIPageViewControllerDelegate{}


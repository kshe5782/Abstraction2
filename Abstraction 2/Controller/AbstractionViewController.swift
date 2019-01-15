//
//  AbstractionViewController.swift
//  Abstraction 2
//
//  Created by Shepherd, Kayden on 12/6/18.
//  Copyright © 2018 Ctec. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
{
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
    }

    public override func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self
    
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
    }
    }
        // Do any additional setup after loading the view.
        private lazy var orderedAbstractionViews : [UIViewController] =
        {
            return [
                self.newAbstractionViewController(abstractionLevel: "Swift"),
                self.newAbstractionViewController(abstractionLevel: "Block)"),
                self.newAbstractionViewController(abstractionLevel: "ByteCode"),
                self.newAbstractionViewController(abstractionLevel: "Binary"),
                self.newAbstractionViewController(abstractionLevel: "Logical Gate")
            ]
        }()
    }
    
    public func newAbstractionViewController(abstractionLevel :String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:
        "\(abstractionLevel)ViewController")
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


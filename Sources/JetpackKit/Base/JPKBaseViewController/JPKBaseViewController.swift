//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/10/2565 BE.
//

import Foundation
import UIKit

open class JPKBaseViewController: JPKBaseRawViewController { }

open class JPKBaseRawViewController: UIViewController {
    
    public var options: JPKBaseViewControllerOptions?
    
    public init(options: JPKBaseViewControllerOptions? = nil) {
        super.init(nibName: nil, bundle: nil)
        self.options = options
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.initialize()
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(!(options?.navigation.style.showNavigation ?? true), animated: true)
    }
    
    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = (options?.navigation.style.showNavigation ?? true)
    }
    
    open func initialize() {
        setupNavigation()
        setupView()
    }
    
    open func setupNavigation() {
        
    }
    
    open func setupView() {
        view.backgroundColor = options?.backgroundColor
    }
    
    open func updateOption() {
        setupNavigation()
        view.backgroundColor = options?.backgroundColor
    }
    
}

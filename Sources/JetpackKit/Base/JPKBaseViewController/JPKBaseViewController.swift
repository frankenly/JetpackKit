//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/10/2565 BE.
//

import Foundation

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
        self.navigationController?.setNavigationBarHidden(!(options?.navigation.isActive ?? true), animated: true)
    }
    
    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = (options?.navigation.isActive ?? true)
    }
    
    public func initialize() {
        setupNavigation()
        setupView()
    }
    
    public func setupNavigation() {
        
    }
    
    public func setupView() {
        view.backgroundColor = options?.backgroundColor
    }
    
    public func updateOption() {
        setupNavigation()
        view.backgroundColor = options?.backgroundColor
    }
    
}

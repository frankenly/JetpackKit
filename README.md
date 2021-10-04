# JetpackKit

A description of this package.

# JetpackKitUtil
Using in UIView extension jpk
```swift

    // using
    UIView.jpk.anchor()

    // set center
    UIView.jpk.centerX(with: UIViewTarget)
    UIView.jpk.centerY(with: UIViewTarget)

    // call get constrant
    UIView.jpk.constrants.top.constant = 0
    UIView.jpk.constrants.bottom.constant = 0
    UIView.jpk.constrants.left.constant = 0
    UIView.jpk.constrants.right.constant = 0

```

# Debug
How to use ?
```swift
    
    // using 
    JPKDebug.print("Subject", msg: "Detail", mode: .LOG)

    // disable - enable
    JPKConfigure.isDebug = false
```
* mode
    * .LOG is white icon
    * .ERROR is red icon
    * .SUCCESS is green icon

# Version Log
* 1.0.8
    * JPK Debug insert first string.
* 1.0.7
    * Fixed bug
* 1.0.6
    * JetpackKitUtil add _ in addSuperview
* 1.0.5
    * JetpackKitUtil remove add subview
    * JetpackKitUtil add func addSuperview
    * JetpackKitUtil add function map 
* 1.0.4
    * JetpackKitUtil addSubview
* 1.0.3
    * JPKViewController
        * add present (merge UINavController + ViewController) can set modalPresentStyle in 1 pack.
* 1.0.2
    * NSLayoutXAxisAnchor, NSLayoutYAxisAnchor clear data, if getConstrant()
* 1.0.1
    * JetpackKitUtils class in UIView
        * Set anchor
        * Update anchor
        * Set Center x,y
        * add extension in uiview (jpk)
        * add extension in X,Y Constrant view.
* 1.0.0
    * JPKDebug class debug mode can print
    * JPKConfigure can set enable debug mode
    * init project + structure
    

extension UIView {
    public func push(_ viewController: UIViewController) {
        var next = self.next
        while next != nil {
            if (next?.isKind(of: UIViewController.self))!{
                let vc = next as! UIViewController
                vc.navigationController?.pushViewController(viewController, animated: true)
                break
            }
            next = next?.next
        }
    }
}

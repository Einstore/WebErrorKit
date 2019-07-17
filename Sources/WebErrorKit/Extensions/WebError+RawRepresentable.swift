extension WebError where Self: RawRepresentable, RawValue == String {
    
    /// Default code
    public var code: String {
        let enumName = String(describing: type(of: self))
        let value = rawValue
        return "\(enumName.snake_cased() ?? enumName).\(value.snake_cased() ?? value)"
    }
    
}

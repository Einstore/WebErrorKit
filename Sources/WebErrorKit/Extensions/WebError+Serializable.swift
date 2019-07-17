extension SerializableWebError {
    
    /// Default code
    public var code: String {
        let c = serializedCode
        return "\(snake_type).\(c.snake_cased() ?? c)"
    }
    
}

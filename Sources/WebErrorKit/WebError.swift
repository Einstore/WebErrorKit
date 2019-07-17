/// Web error
public protocol WebError: Error {
    
    /// Error status code (default 500)
    var statusCode: Int { get }
    
    /// Error code
    var code: String { get }
    
    /// Reason for failure (defalt nil)
    var reason: String? { get }
    
}

extension WebError {
    
    /// Default status code
    public var statusCode: Int {
        return 500
    }
    
    /// Default reason
    public var reason: String? {
        return localizedDescription
    }
    
    /// Snake cased Type
    public var snake_type: String {
        let name = String(describing: type(of: self))
        guard let snake = name.snake_cased() else {
            return name
        }
        return snake
    }
    
}

/// Codable error content object
public struct WebErrorContent: Codable {
    
    /// Error code
    public let code: String
    
    /// Reason for failure
    public let reason: String?
    
    /// Initializer
    /// - Parameter code: Error code
    /// - Parameter reason: Reason for failure
    public init(code: String, reason: String? = nil) {
        self.code = code
        self.reason = reason
    }
    
}

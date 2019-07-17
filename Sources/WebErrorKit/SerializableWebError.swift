/// Serializable WebError for complex errors
public protocol SerializableWebError: WebError {
    
    /// Serialized error code
    var serializedCode: String { get }
    
}

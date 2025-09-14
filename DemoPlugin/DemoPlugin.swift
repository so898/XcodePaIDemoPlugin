import Foundation

class DemoPlugin: NSObject, BasePluginProtocol  {
    
    static var identifier: String { "com.R3Studio.XcodePaI.demoplugin" }
    
    static var name: String { "Demo" }
    
    static var pluginDescription: String { "Deme Plugin" }
    
    static var pluginVersion: String { "0.0.1" }
    
    static var link: String { "https://github.com/so898/XcodePaIDemoPlugin" }
    
    private var projectUrl: URL?
    private var workspaceUrl: URL?
    
    required override init() {
        
    }
    
    func update(projectUrl: URL?, workspaceUrl: URL?) {
        self.projectUrl = projectUrl
        self.workspaceUrl = workspaceUrl
    }
}

extension DemoPlugin: ChatPluginProtocol {
    func processSystemPrompt(_ prompt: String) -> String? {
        // Change ChatProxy system prompt
        return nil
    }
    
    func processUserPrompt(_ prompt: String, isLast: Bool) -> String? {
        // Change ChatProxy user prompt
        return nil
    }
    
    func processAssistantPrompt(_ prompt: String, isLast: Bool) -> String? {
        // Change Chatproxy assistant prompt
        return nil
    }
}

extension DemoPlugin: CodeSuggestionPLuginProtocol {
    func generateCodeSuggestionsContext(forFile file: URL, code: String, prefix: String?, suffix: String?) async -> String? {
        // Add more context for code suggestion reqeust
        return nil
    }
}


import Foundation

public enum JPKBaseModelState {
    case REFRESH
    case UPDATE_MODEL
    case LOAD_MORE
    case DELETED
    case EMPTY
    case ERROR(msg: String)
    case LOADING
    case LOADED
    case OTHER(flag: String)
    case NONE
}

public struct JPKBaseModel<T> {
    public var models: T
    public var state: JPKBaseModelState
    public init(models: T, state: JPKBaseModelState) {
        self.models = models
        self.state = state
    }
}

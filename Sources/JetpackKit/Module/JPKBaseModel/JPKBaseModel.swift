
import Foundation

public enum JPKBaseModelType {
    case REFRESH
    case UPDATE_MODEL
    case LOAD_MORE
    case DELETED
    case EMPTY
    case ERROR(msg: String)
    case LOADING
    case LOADED
    case OTHER(flag: String)
}

public struct JPKBaseModel<T> {
    public var models: T
    public var state: BaseListType
}

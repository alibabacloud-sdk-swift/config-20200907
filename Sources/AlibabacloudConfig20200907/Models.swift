import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ResourceDirectoryFolderNode : Tea.TeaModel {
    public var accountId: String?

    public var children: [ResourceDirectoryFolderNode]?

    public var displayName: String?

    public var folderId: String?

    public var folderName: String?

    public var parentFolderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["Children"] = tmp
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.folderName != nil {
            map["FolderName"] = self.folderName!
        }
        if self.parentFolderId != nil {
            map["ParentFolderId"] = self.parentFolderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("Children") {
            self.children = dict["Children"] as! [ResourceDirectoryFolderNode]
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("FolderId") {
            self.folderId = dict["FolderId"] as! String
        }
        if dict.keys.contains("FolderName") {
            self.folderName = dict["FolderName"] as! String
        }
        if dict.keys.contains("ParentFolderId") {
            self.parentFolderId = dict["ParentFolderId"] as! String
        }
    }
}

public class ActiveAggregateConfigRulesRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class ActiveAggregateConfigRulesResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [ActiveAggregateConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [ActiveAggregateConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: ActiveAggregateConfigRulesResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = ActiveAggregateConfigRulesResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ActiveAggregateConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActiveAggregateConfigRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ActiveAggregateConfigRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachAggregateConfigRuleToCompliancePackRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var compliancePackId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class AttachAggregateConfigRuleToCompliancePackResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [AttachAggregateConfigRuleToCompliancePackResponseBody.OperateRuleResult.OperateRuleItemList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [AttachAggregateConfigRuleToCompliancePackResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: AttachAggregateConfigRuleToCompliancePackResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = AttachAggregateConfigRuleToCompliancePackResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AttachAggregateConfigRuleToCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachAggregateConfigRuleToCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AttachAggregateConfigRuleToCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachConfigRuleToCompliancePackRequest : Tea.TeaModel {
    public var compliancePackId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class AttachConfigRuleToCompliancePackResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [AttachConfigRuleToCompliancePackResponseBody.OperateRuleResult.OperateRuleItemList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [AttachConfigRuleToCompliancePackResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: AttachConfigRuleToCompliancePackResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = AttachConfigRuleToCompliancePackResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AttachConfigRuleToCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachConfigRuleToCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AttachConfigRuleToCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAggregateCompliancePackRequest : Tea.TeaModel {
    public class ConfigRules : Tea.TeaModel {
        public class ConfigRuleParameters : Tea.TeaModel {
            public var parameterName: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterName") {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public var configRuleId: String?

        public var configRuleName: String?

        public var configRuleParameters: [CreateAggregateCompliancePackRequest.ConfigRules.ConfigRuleParameters]?

        public var description_: String?

        public var managedRuleIdentifier: String?

        public var riskLevel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configRuleId != nil {
                map["ConfigRuleId"] = self.configRuleId!
            }
            if self.configRuleName != nil {
                map["ConfigRuleName"] = self.configRuleName!
            }
            if self.configRuleParameters != nil {
                var tmp : [Any] = []
                for k in self.configRuleParameters! {
                    tmp.append(k.toMap())
                }
                map["ConfigRuleParameters"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.managedRuleIdentifier != nil {
                map["ManagedRuleIdentifier"] = self.managedRuleIdentifier!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigRuleId") {
                self.configRuleId = dict["ConfigRuleId"] as! String
            }
            if dict.keys.contains("ConfigRuleName") {
                self.configRuleName = dict["ConfigRuleName"] as! String
            }
            if dict.keys.contains("ConfigRuleParameters") {
                self.configRuleParameters = dict["ConfigRuleParameters"] as! [CreateAggregateCompliancePackRequest.ConfigRules.ConfigRuleParameters]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ManagedRuleIdentifier") {
                self.managedRuleIdentifier = dict["ManagedRuleIdentifier"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
        }
    }
    public var aggregatorId: String?

    public var clientToken: String?

    public var compliancePackName: String?

    public var compliancePackTemplateId: String?

    public var configRules: [CreateAggregateCompliancePackRequest.ConfigRules]?

    public var description_: String?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackName != nil {
            map["CompliancePackName"] = self.compliancePackName!
        }
        if self.compliancePackTemplateId != nil {
            map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
        }
        if self.configRules != nil {
            var tmp : [Any] = []
            for k in self.configRules! {
                tmp.append(k.toMap())
            }
            map["ConfigRules"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackName") {
            self.compliancePackName = dict["CompliancePackName"] as! String
        }
        if dict.keys.contains("CompliancePackTemplateId") {
            self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
        }
        if dict.keys.contains("ConfigRules") {
            self.configRules = dict["ConfigRules"] as! [CreateAggregateCompliancePackRequest.ConfigRules]
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class CreateAggregateCompliancePackShrinkRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var compliancePackName: String?

    public var compliancePackTemplateId: String?

    public var configRulesShrink: String?

    public var description_: String?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackName != nil {
            map["CompliancePackName"] = self.compliancePackName!
        }
        if self.compliancePackTemplateId != nil {
            map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
        }
        if self.configRulesShrink != nil {
            map["ConfigRules"] = self.configRulesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackName") {
            self.compliancePackName = dict["CompliancePackName"] as! String
        }
        if dict.keys.contains("CompliancePackTemplateId") {
            self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
        }
        if dict.keys.contains("ConfigRules") {
            self.configRulesShrink = dict["ConfigRules"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class CreateAggregateCompliancePackResponseBody : Tea.TeaModel {
    public var compliancePackId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAggregateCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAggregateCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAggregateCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAggregateConfigDeliveryChannelRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var configurationItemChangeNotification: Bool?

    public var configurationSnapshot: Bool?

    public var deliveryChannelCondition: String?

    public var deliveryChannelName: String?

    public var deliveryChannelTargetArn: String?

    public var deliveryChannelType: String?

    public var deliverySnapshotTime: String?

    public var description_: String?

    public var nonCompliantNotification: Bool?

    public var oversizedDataOSSTargetArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configurationItemChangeNotification != nil {
            map["ConfigurationItemChangeNotification"] = self.configurationItemChangeNotification!
        }
        if self.configurationSnapshot != nil {
            map["ConfigurationSnapshot"] = self.configurationSnapshot!
        }
        if self.deliveryChannelCondition != nil {
            map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.deliveryChannelTargetArn != nil {
            map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
        }
        if self.deliveryChannelType != nil {
            map["DeliveryChannelType"] = self.deliveryChannelType!
        }
        if self.deliverySnapshotTime != nil {
            map["DeliverySnapshotTime"] = self.deliverySnapshotTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.nonCompliantNotification != nil {
            map["NonCompliantNotification"] = self.nonCompliantNotification!
        }
        if self.oversizedDataOSSTargetArn != nil {
            map["OversizedDataOSSTargetArn"] = self.oversizedDataOSSTargetArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigurationItemChangeNotification") {
            self.configurationItemChangeNotification = dict["ConfigurationItemChangeNotification"] as! Bool
        }
        if dict.keys.contains("ConfigurationSnapshot") {
            self.configurationSnapshot = dict["ConfigurationSnapshot"] as! Bool
        }
        if dict.keys.contains("DeliveryChannelCondition") {
            self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
        }
        if dict.keys.contains("DeliveryChannelName") {
            self.deliveryChannelName = dict["DeliveryChannelName"] as! String
        }
        if dict.keys.contains("DeliveryChannelTargetArn") {
            self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
        }
        if dict.keys.contains("DeliveryChannelType") {
            self.deliveryChannelType = dict["DeliveryChannelType"] as! String
        }
        if dict.keys.contains("DeliverySnapshotTime") {
            self.deliverySnapshotTime = dict["DeliverySnapshotTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("NonCompliantNotification") {
            self.nonCompliantNotification = dict["NonCompliantNotification"] as! Bool
        }
        if dict.keys.contains("OversizedDataOSSTargetArn") {
            self.oversizedDataOSSTargetArn = dict["OversizedDataOSSTargetArn"] as! String
        }
    }
}

public class CreateAggregateConfigDeliveryChannelResponseBody : Tea.TeaModel {
    public var deliveryChannelId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAggregateConfigDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAggregateConfigDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAggregateConfigDeliveryChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAggregateConfigRuleRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var configRuleName: String?

    public var configRuleTriggerTypes: String?

    public var description_: String?

    public var excludeAccountIdsScope: String?

    public var excludeFolderIdsScope: String?

    public var excludeResourceIdsScope: String?

    public var folderIdsScope: String?

    public var inputParameters: [String: Any]?

    public var maximumExecutionFrequency: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceTypesScope: [String]?

    public var riskLevel: Int32?

    public var sourceIdentifier: String?

    public var sourceOwner: String?

    public var tagKeyLogicScope: String?

    public var tagKeyScope: String?

    public var tagValueScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleTriggerTypes != nil {
            map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeAccountIdsScope != nil {
            map["ExcludeAccountIdsScope"] = self.excludeAccountIdsScope!
        }
        if self.excludeFolderIdsScope != nil {
            map["ExcludeFolderIdsScope"] = self.excludeFolderIdsScope!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.folderIdsScope != nil {
            map["FolderIdsScope"] = self.folderIdsScope!
        }
        if self.inputParameters != nil {
            map["InputParameters"] = self.inputParameters!
        }
        if self.maximumExecutionFrequency != nil {
            map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceTypesScope != nil {
            map["ResourceTypesScope"] = self.resourceTypesScope!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.sourceIdentifier != nil {
            map["SourceIdentifier"] = self.sourceIdentifier!
        }
        if self.sourceOwner != nil {
            map["SourceOwner"] = self.sourceOwner!
        }
        if self.tagKeyLogicScope != nil {
            map["TagKeyLogicScope"] = self.tagKeyLogicScope!
        }
        if self.tagKeyScope != nil {
            map["TagKeyScope"] = self.tagKeyScope!
        }
        if self.tagValueScope != nil {
            map["TagValueScope"] = self.tagValueScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleTriggerTypes") {
            self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExcludeAccountIdsScope") {
            self.excludeAccountIdsScope = dict["ExcludeAccountIdsScope"] as! String
        }
        if dict.keys.contains("ExcludeFolderIdsScope") {
            self.excludeFolderIdsScope = dict["ExcludeFolderIdsScope"] as! String
        }
        if dict.keys.contains("ExcludeResourceIdsScope") {
            self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
        }
        if dict.keys.contains("FolderIdsScope") {
            self.folderIdsScope = dict["FolderIdsScope"] as! String
        }
        if dict.keys.contains("InputParameters") {
            self.inputParameters = dict["InputParameters"] as! [String: Any]
        }
        if dict.keys.contains("MaximumExecutionFrequency") {
            self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
        }
        if dict.keys.contains("RegionIdsScope") {
            self.regionIdsScope = dict["RegionIdsScope"] as! String
        }
        if dict.keys.contains("ResourceGroupIdsScope") {
            self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
        }
        if dict.keys.contains("ResourceTypesScope") {
            self.resourceTypesScope = dict["ResourceTypesScope"] as! [String]
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("SourceIdentifier") {
            self.sourceIdentifier = dict["SourceIdentifier"] as! String
        }
        if dict.keys.contains("SourceOwner") {
            self.sourceOwner = dict["SourceOwner"] as! String
        }
        if dict.keys.contains("TagKeyLogicScope") {
            self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
        }
        if dict.keys.contains("TagKeyScope") {
            self.tagKeyScope = dict["TagKeyScope"] as! String
        }
        if dict.keys.contains("TagValueScope") {
            self.tagValueScope = dict["TagValueScope"] as! String
        }
    }
}

public class CreateAggregateConfigRuleShrinkRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var configRuleName: String?

    public var configRuleTriggerTypes: String?

    public var description_: String?

    public var excludeAccountIdsScope: String?

    public var excludeFolderIdsScope: String?

    public var excludeResourceIdsScope: String?

    public var folderIdsScope: String?

    public var inputParametersShrink: String?

    public var maximumExecutionFrequency: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceTypesScopeShrink: String?

    public var riskLevel: Int32?

    public var sourceIdentifier: String?

    public var sourceOwner: String?

    public var tagKeyLogicScope: String?

    public var tagKeyScope: String?

    public var tagValueScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleTriggerTypes != nil {
            map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeAccountIdsScope != nil {
            map["ExcludeAccountIdsScope"] = self.excludeAccountIdsScope!
        }
        if self.excludeFolderIdsScope != nil {
            map["ExcludeFolderIdsScope"] = self.excludeFolderIdsScope!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.folderIdsScope != nil {
            map["FolderIdsScope"] = self.folderIdsScope!
        }
        if self.inputParametersShrink != nil {
            map["InputParameters"] = self.inputParametersShrink!
        }
        if self.maximumExecutionFrequency != nil {
            map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceTypesScopeShrink != nil {
            map["ResourceTypesScope"] = self.resourceTypesScopeShrink!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.sourceIdentifier != nil {
            map["SourceIdentifier"] = self.sourceIdentifier!
        }
        if self.sourceOwner != nil {
            map["SourceOwner"] = self.sourceOwner!
        }
        if self.tagKeyLogicScope != nil {
            map["TagKeyLogicScope"] = self.tagKeyLogicScope!
        }
        if self.tagKeyScope != nil {
            map["TagKeyScope"] = self.tagKeyScope!
        }
        if self.tagValueScope != nil {
            map["TagValueScope"] = self.tagValueScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleTriggerTypes") {
            self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExcludeAccountIdsScope") {
            self.excludeAccountIdsScope = dict["ExcludeAccountIdsScope"] as! String
        }
        if dict.keys.contains("ExcludeFolderIdsScope") {
            self.excludeFolderIdsScope = dict["ExcludeFolderIdsScope"] as! String
        }
        if dict.keys.contains("ExcludeResourceIdsScope") {
            self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
        }
        if dict.keys.contains("FolderIdsScope") {
            self.folderIdsScope = dict["FolderIdsScope"] as! String
        }
        if dict.keys.contains("InputParameters") {
            self.inputParametersShrink = dict["InputParameters"] as! String
        }
        if dict.keys.contains("MaximumExecutionFrequency") {
            self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
        }
        if dict.keys.contains("RegionIdsScope") {
            self.regionIdsScope = dict["RegionIdsScope"] as! String
        }
        if dict.keys.contains("ResourceGroupIdsScope") {
            self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
        }
        if dict.keys.contains("ResourceTypesScope") {
            self.resourceTypesScopeShrink = dict["ResourceTypesScope"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("SourceIdentifier") {
            self.sourceIdentifier = dict["SourceIdentifier"] as! String
        }
        if dict.keys.contains("SourceOwner") {
            self.sourceOwner = dict["SourceOwner"] as! String
        }
        if dict.keys.contains("TagKeyLogicScope") {
            self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
        }
        if dict.keys.contains("TagKeyScope") {
            self.tagKeyScope = dict["TagKeyScope"] as! String
        }
        if dict.keys.contains("TagValueScope") {
            self.tagValueScope = dict["TagValueScope"] as! String
        }
    }
}

public class CreateAggregateConfigRuleResponseBody : Tea.TeaModel {
    public var configRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAggregateConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAggregateConfigRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAggregateConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAggregateRemediationRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var configRuleId: String?

    public var invokeType: String?

    public var params: String?

    public var remediationTemplateId: String?

    public var remediationType: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.invokeType != nil {
            map["InvokeType"] = self.invokeType!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.remediationTemplateId != nil {
            map["RemediationTemplateId"] = self.remediationTemplateId!
        }
        if self.remediationType != nil {
            map["RemediationType"] = self.remediationType!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("InvokeType") {
            self.invokeType = dict["InvokeType"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("RemediationTemplateId") {
            self.remediationTemplateId = dict["RemediationTemplateId"] as! String
        }
        if dict.keys.contains("RemediationType") {
            self.remediationType = dict["RemediationType"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class CreateAggregateRemediationResponseBody : Tea.TeaModel {
    public var remediationId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remediationId != nil {
            map["RemediationId"] = self.remediationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemediationId") {
            self.remediationId = dict["RemediationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAggregateRemediationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAggregateRemediationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAggregateRemediationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAggregatorRequest : Tea.TeaModel {
    public class AggregatorAccounts : Tea.TeaModel {
        public var accountId: Int64?

        public var accountName: String?

        public var accountType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
        }
    }
    public var aggregatorAccounts: [CreateAggregatorRequest.AggregatorAccounts]?

    public var aggregatorName: String?

    public var aggregatorType: String?

    public var clientToken: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorAccounts != nil {
            var tmp : [Any] = []
            for k in self.aggregatorAccounts! {
                tmp.append(k.toMap())
            }
            map["AggregatorAccounts"] = tmp
        }
        if self.aggregatorName != nil {
            map["AggregatorName"] = self.aggregatorName!
        }
        if self.aggregatorType != nil {
            map["AggregatorType"] = self.aggregatorType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorAccounts") {
            self.aggregatorAccounts = dict["AggregatorAccounts"] as! [CreateAggregatorRequest.AggregatorAccounts]
        }
        if dict.keys.contains("AggregatorName") {
            self.aggregatorName = dict["AggregatorName"] as! String
        }
        if dict.keys.contains("AggregatorType") {
            self.aggregatorType = dict["AggregatorType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class CreateAggregatorShrinkRequest : Tea.TeaModel {
    public var aggregatorAccountsShrink: String?

    public var aggregatorName: String?

    public var aggregatorType: String?

    public var clientToken: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorAccountsShrink != nil {
            map["AggregatorAccounts"] = self.aggregatorAccountsShrink!
        }
        if self.aggregatorName != nil {
            map["AggregatorName"] = self.aggregatorName!
        }
        if self.aggregatorType != nil {
            map["AggregatorType"] = self.aggregatorType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorAccounts") {
            self.aggregatorAccountsShrink = dict["AggregatorAccounts"] as! String
        }
        if dict.keys.contains("AggregatorName") {
            self.aggregatorName = dict["AggregatorName"] as! String
        }
        if dict.keys.contains("AggregatorType") {
            self.aggregatorType = dict["AggregatorType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class CreateAggregatorResponseBody : Tea.TeaModel {
    public var aggregatorId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAggregatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAggregatorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAggregatorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCompliancePackRequest : Tea.TeaModel {
    public class ConfigRules : Tea.TeaModel {
        public class ConfigRuleParameters : Tea.TeaModel {
            public var parameterName: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterName") {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public var configRuleId: String?

        public var configRuleName: String?

        public var configRuleParameters: [CreateCompliancePackRequest.ConfigRules.ConfigRuleParameters]?

        public var description_: String?

        public var managedRuleIdentifier: String?

        public var riskLevel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configRuleId != nil {
                map["ConfigRuleId"] = self.configRuleId!
            }
            if self.configRuleName != nil {
                map["ConfigRuleName"] = self.configRuleName!
            }
            if self.configRuleParameters != nil {
                var tmp : [Any] = []
                for k in self.configRuleParameters! {
                    tmp.append(k.toMap())
                }
                map["ConfigRuleParameters"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.managedRuleIdentifier != nil {
                map["ManagedRuleIdentifier"] = self.managedRuleIdentifier!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigRuleId") {
                self.configRuleId = dict["ConfigRuleId"] as! String
            }
            if dict.keys.contains("ConfigRuleName") {
                self.configRuleName = dict["ConfigRuleName"] as! String
            }
            if dict.keys.contains("ConfigRuleParameters") {
                self.configRuleParameters = dict["ConfigRuleParameters"] as! [CreateCompliancePackRequest.ConfigRules.ConfigRuleParameters]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ManagedRuleIdentifier") {
                self.managedRuleIdentifier = dict["ManagedRuleIdentifier"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
        }
    }
    public var clientToken: String?

    public var compliancePackName: String?

    public var compliancePackTemplateId: String?

    public var configRules: [CreateCompliancePackRequest.ConfigRules]?

    public var description_: String?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackName != nil {
            map["CompliancePackName"] = self.compliancePackName!
        }
        if self.compliancePackTemplateId != nil {
            map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
        }
        if self.configRules != nil {
            var tmp : [Any] = []
            for k in self.configRules! {
                tmp.append(k.toMap())
            }
            map["ConfigRules"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackName") {
            self.compliancePackName = dict["CompliancePackName"] as! String
        }
        if dict.keys.contains("CompliancePackTemplateId") {
            self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
        }
        if dict.keys.contains("ConfigRules") {
            self.configRules = dict["ConfigRules"] as! [CreateCompliancePackRequest.ConfigRules]
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class CreateCompliancePackShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var compliancePackName: String?

    public var compliancePackTemplateId: String?

    public var configRulesShrink: String?

    public var description_: String?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackName != nil {
            map["CompliancePackName"] = self.compliancePackName!
        }
        if self.compliancePackTemplateId != nil {
            map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
        }
        if self.configRulesShrink != nil {
            map["ConfigRules"] = self.configRulesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackName") {
            self.compliancePackName = dict["CompliancePackName"] as! String
        }
        if dict.keys.contains("CompliancePackTemplateId") {
            self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
        }
        if dict.keys.contains("ConfigRules") {
            self.configRulesShrink = dict["ConfigRules"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class CreateCompliancePackResponseBody : Tea.TeaModel {
    public var compliancePackId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConfigDeliveryChannelRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configurationItemChangeNotification: Bool?

    public var configurationSnapshot: Bool?

    public var deliveryChannelCondition: String?

    public var deliveryChannelName: String?

    public var deliveryChannelTargetArn: String?

    public var deliveryChannelType: String?

    public var deliverySnapshotTime: String?

    public var description_: String?

    public var nonCompliantNotification: Bool?

    public var oversizedDataOSSTargetArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configurationItemChangeNotification != nil {
            map["ConfigurationItemChangeNotification"] = self.configurationItemChangeNotification!
        }
        if self.configurationSnapshot != nil {
            map["ConfigurationSnapshot"] = self.configurationSnapshot!
        }
        if self.deliveryChannelCondition != nil {
            map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.deliveryChannelTargetArn != nil {
            map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
        }
        if self.deliveryChannelType != nil {
            map["DeliveryChannelType"] = self.deliveryChannelType!
        }
        if self.deliverySnapshotTime != nil {
            map["DeliverySnapshotTime"] = self.deliverySnapshotTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.nonCompliantNotification != nil {
            map["NonCompliantNotification"] = self.nonCompliantNotification!
        }
        if self.oversizedDataOSSTargetArn != nil {
            map["OversizedDataOSSTargetArn"] = self.oversizedDataOSSTargetArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigurationItemChangeNotification") {
            self.configurationItemChangeNotification = dict["ConfigurationItemChangeNotification"] as! Bool
        }
        if dict.keys.contains("ConfigurationSnapshot") {
            self.configurationSnapshot = dict["ConfigurationSnapshot"] as! Bool
        }
        if dict.keys.contains("DeliveryChannelCondition") {
            self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
        }
        if dict.keys.contains("DeliveryChannelName") {
            self.deliveryChannelName = dict["DeliveryChannelName"] as! String
        }
        if dict.keys.contains("DeliveryChannelTargetArn") {
            self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
        }
        if dict.keys.contains("DeliveryChannelType") {
            self.deliveryChannelType = dict["DeliveryChannelType"] as! String
        }
        if dict.keys.contains("DeliverySnapshotTime") {
            self.deliverySnapshotTime = dict["DeliverySnapshotTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("NonCompliantNotification") {
            self.nonCompliantNotification = dict["NonCompliantNotification"] as! Bool
        }
        if dict.keys.contains("OversizedDataOSSTargetArn") {
            self.oversizedDataOSSTargetArn = dict["OversizedDataOSSTargetArn"] as! String
        }
    }
}

public class CreateConfigDeliveryChannelResponseBody : Tea.TeaModel {
    public var deliveryChannelId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateConfigDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConfigDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateConfigDeliveryChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConfigRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configRuleName: String?

    public var configRuleTriggerTypes: String?

    public var description_: String?

    public var excludeResourceIdsScope: String?

    public var inputParameters: [String: Any]?

    public var maximumExecutionFrequency: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceTypesScope: [String]?

    public var riskLevel: Int32?

    public var sourceIdentifier: String?

    public var sourceOwner: String?

    public var tagKeyLogicScope: String?

    public var tagKeyScope: String?

    public var tagValueScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleTriggerTypes != nil {
            map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.inputParameters != nil {
            map["InputParameters"] = self.inputParameters!
        }
        if self.maximumExecutionFrequency != nil {
            map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceTypesScope != nil {
            map["ResourceTypesScope"] = self.resourceTypesScope!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.sourceIdentifier != nil {
            map["SourceIdentifier"] = self.sourceIdentifier!
        }
        if self.sourceOwner != nil {
            map["SourceOwner"] = self.sourceOwner!
        }
        if self.tagKeyLogicScope != nil {
            map["TagKeyLogicScope"] = self.tagKeyLogicScope!
        }
        if self.tagKeyScope != nil {
            map["TagKeyScope"] = self.tagKeyScope!
        }
        if self.tagValueScope != nil {
            map["TagValueScope"] = self.tagValueScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleTriggerTypes") {
            self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExcludeResourceIdsScope") {
            self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
        }
        if dict.keys.contains("InputParameters") {
            self.inputParameters = dict["InputParameters"] as! [String: Any]
        }
        if dict.keys.contains("MaximumExecutionFrequency") {
            self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
        }
        if dict.keys.contains("RegionIdsScope") {
            self.regionIdsScope = dict["RegionIdsScope"] as! String
        }
        if dict.keys.contains("ResourceGroupIdsScope") {
            self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
        }
        if dict.keys.contains("ResourceTypesScope") {
            self.resourceTypesScope = dict["ResourceTypesScope"] as! [String]
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("SourceIdentifier") {
            self.sourceIdentifier = dict["SourceIdentifier"] as! String
        }
        if dict.keys.contains("SourceOwner") {
            self.sourceOwner = dict["SourceOwner"] as! String
        }
        if dict.keys.contains("TagKeyLogicScope") {
            self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
        }
        if dict.keys.contains("TagKeyScope") {
            self.tagKeyScope = dict["TagKeyScope"] as! String
        }
        if dict.keys.contains("TagValueScope") {
            self.tagValueScope = dict["TagValueScope"] as! String
        }
    }
}

public class CreateConfigRuleShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configRuleName: String?

    public var configRuleTriggerTypes: String?

    public var description_: String?

    public var excludeResourceIdsScope: String?

    public var inputParametersShrink: String?

    public var maximumExecutionFrequency: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceTypesScopeShrink: String?

    public var riskLevel: Int32?

    public var sourceIdentifier: String?

    public var sourceOwner: String?

    public var tagKeyLogicScope: String?

    public var tagKeyScope: String?

    public var tagValueScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleTriggerTypes != nil {
            map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.inputParametersShrink != nil {
            map["InputParameters"] = self.inputParametersShrink!
        }
        if self.maximumExecutionFrequency != nil {
            map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceTypesScopeShrink != nil {
            map["ResourceTypesScope"] = self.resourceTypesScopeShrink!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.sourceIdentifier != nil {
            map["SourceIdentifier"] = self.sourceIdentifier!
        }
        if self.sourceOwner != nil {
            map["SourceOwner"] = self.sourceOwner!
        }
        if self.tagKeyLogicScope != nil {
            map["TagKeyLogicScope"] = self.tagKeyLogicScope!
        }
        if self.tagKeyScope != nil {
            map["TagKeyScope"] = self.tagKeyScope!
        }
        if self.tagValueScope != nil {
            map["TagValueScope"] = self.tagValueScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleTriggerTypes") {
            self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExcludeResourceIdsScope") {
            self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
        }
        if dict.keys.contains("InputParameters") {
            self.inputParametersShrink = dict["InputParameters"] as! String
        }
        if dict.keys.contains("MaximumExecutionFrequency") {
            self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
        }
        if dict.keys.contains("RegionIdsScope") {
            self.regionIdsScope = dict["RegionIdsScope"] as! String
        }
        if dict.keys.contains("ResourceGroupIdsScope") {
            self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
        }
        if dict.keys.contains("ResourceTypesScope") {
            self.resourceTypesScopeShrink = dict["ResourceTypesScope"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("SourceIdentifier") {
            self.sourceIdentifier = dict["SourceIdentifier"] as! String
        }
        if dict.keys.contains("SourceOwner") {
            self.sourceOwner = dict["SourceOwner"] as! String
        }
        if dict.keys.contains("TagKeyLogicScope") {
            self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
        }
        if dict.keys.contains("TagKeyScope") {
            self.tagKeyScope = dict["TagKeyScope"] as! String
        }
        if dict.keys.contains("TagValueScope") {
            self.tagValueScope = dict["TagValueScope"] as! String
        }
    }
}

public class CreateConfigRuleResponseBody : Tea.TeaModel {
    public var configRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConfigRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRemediationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configRuleId: String?

    public var invokeType: String?

    public var params: String?

    public var remediationTemplateId: String?

    public var remediationType: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.invokeType != nil {
            map["InvokeType"] = self.invokeType!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.remediationTemplateId != nil {
            map["RemediationTemplateId"] = self.remediationTemplateId!
        }
        if self.remediationType != nil {
            map["RemediationType"] = self.remediationType!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("InvokeType") {
            self.invokeType = dict["InvokeType"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("RemediationTemplateId") {
            self.remediationTemplateId = dict["RemediationTemplateId"] as! String
        }
        if dict.keys.contains("RemediationType") {
            self.remediationType = dict["RemediationType"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class CreateRemediationResponseBody : Tea.TeaModel {
    public var remediationId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remediationId != nil {
            map["RemediationId"] = self.remediationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemediationId") {
            self.remediationId = dict["RemediationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRemediationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRemediationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRemediationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeactiveAggregateConfigRulesRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class DeactiveAggregateConfigRulesResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [DeactiveAggregateConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [DeactiveAggregateConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: DeactiveAggregateConfigRulesResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = DeactiveAggregateConfigRulesResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeactiveAggregateConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeactiveAggregateConfigRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeactiveAggregateConfigRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeactiveConfigRulesRequest : Tea.TeaModel {
    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class DeactiveConfigRulesResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [DeactiveConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [DeactiveConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: DeactiveConfigRulesResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = DeactiveConfigRulesResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeactiveConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeactiveConfigRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeactiveConfigRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAggregateCompliancePacksRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var compliancePackIds: String?

    public var deleteRule: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackIds != nil {
            map["CompliancePackIds"] = self.compliancePackIds!
        }
        if self.deleteRule != nil {
            map["DeleteRule"] = self.deleteRule!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackIds") {
            self.compliancePackIds = dict["CompliancePackIds"] as! String
        }
        if dict.keys.contains("DeleteRule") {
            self.deleteRule = dict["DeleteRule"] as! Bool
        }
    }
}

public class DeleteAggregateCompliancePacksResponseBody : Tea.TeaModel {
    public class OperateCompliancePacksResult : Tea.TeaModel {
        public class OperateCompliancePacks : Tea.TeaModel {
            public var compliancePackId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compliancePackId != nil {
                    map["CompliancePackId"] = self.compliancePackId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompliancePackId") {
                    self.compliancePackId = dict["CompliancePackId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateCompliancePacks: [DeleteAggregateCompliancePacksResponseBody.OperateCompliancePacksResult.OperateCompliancePacks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateCompliancePacks != nil {
                var tmp : [Any] = []
                for k in self.operateCompliancePacks! {
                    tmp.append(k.toMap())
                }
                map["OperateCompliancePacks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateCompliancePacks") {
                self.operateCompliancePacks = dict["OperateCompliancePacks"] as! [DeleteAggregateCompliancePacksResponseBody.OperateCompliancePacksResult.OperateCompliancePacks]
            }
        }
    }
    public var operateCompliancePacksResult: DeleteAggregateCompliancePacksResponseBody.OperateCompliancePacksResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateCompliancePacksResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateCompliancePacksResult != nil {
            map["OperateCompliancePacksResult"] = self.operateCompliancePacksResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateCompliancePacksResult") {
            var model = DeleteAggregateCompliancePacksResponseBody.OperateCompliancePacksResult()
            model.fromMap(dict["OperateCompliancePacksResult"] as! [String: Any])
            self.operateCompliancePacksResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAggregateCompliancePacksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAggregateCompliancePacksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAggregateCompliancePacksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAggregateConfigRulesRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class DeleteAggregateConfigRulesResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [DeleteAggregateConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [DeleteAggregateConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: DeleteAggregateConfigRulesResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = DeleteAggregateConfigRulesResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAggregateConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAggregateConfigRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAggregateConfigRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAggregateRemediationsRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var remediationIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.remediationIds != nil {
            map["RemediationIds"] = self.remediationIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("RemediationIds") {
            self.remediationIds = dict["RemediationIds"] as! String
        }
    }
}

public class DeleteAggregateRemediationsResponseBody : Tea.TeaModel {
    public class RemediationDeleteResults : Tea.TeaModel {
        public var errorMessage: String?

        public var remediationId: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.remediationId != nil {
                map["RemediationId"] = self.remediationId!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("RemediationId") {
                self.remediationId = dict["RemediationId"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var remediationDeleteResults: [DeleteAggregateRemediationsResponseBody.RemediationDeleteResults]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remediationDeleteResults != nil {
            var tmp : [Any] = []
            for k in self.remediationDeleteResults! {
                tmp.append(k.toMap())
            }
            map["RemediationDeleteResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemediationDeleteResults") {
            self.remediationDeleteResults = dict["RemediationDeleteResults"] as! [DeleteAggregateRemediationsResponseBody.RemediationDeleteResults]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAggregateRemediationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAggregateRemediationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAggregateRemediationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAggregatorsRequest : Tea.TeaModel {
    public var aggregatorIds: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorIds != nil {
            map["AggregatorIds"] = self.aggregatorIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorIds") {
            self.aggregatorIds = dict["AggregatorIds"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
    }
}

public class DeleteAggregatorsResponseBody : Tea.TeaModel {
    public class OperateAggregatorsResult : Tea.TeaModel {
        public class OperateAggregators : Tea.TeaModel {
            public var aggregatorId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aggregatorId != nil {
                    map["AggregatorId"] = self.aggregatorId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AggregatorId") {
                    self.aggregatorId = dict["AggregatorId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateAggregators: [DeleteAggregatorsResponseBody.OperateAggregatorsResult.OperateAggregators]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateAggregators != nil {
                var tmp : [Any] = []
                for k in self.operateAggregators! {
                    tmp.append(k.toMap())
                }
                map["OperateAggregators"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateAggregators") {
                self.operateAggregators = dict["OperateAggregators"] as! [DeleteAggregatorsResponseBody.OperateAggregatorsResult.OperateAggregators]
            }
        }
    }
    public var operateAggregatorsResult: DeleteAggregatorsResponseBody.OperateAggregatorsResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateAggregatorsResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateAggregatorsResult != nil {
            map["OperateAggregatorsResult"] = self.operateAggregatorsResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateAggregatorsResult") {
            var model = DeleteAggregatorsResponseBody.OperateAggregatorsResult()
            model.fromMap(dict["OperateAggregatorsResult"] as! [String: Any])
            self.operateAggregatorsResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAggregatorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAggregatorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAggregatorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCompliancePacksRequest : Tea.TeaModel {
    public var clientToken: String?

    public var compliancePackIds: String?

    public var deleteRule: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackIds != nil {
            map["CompliancePackIds"] = self.compliancePackIds!
        }
        if self.deleteRule != nil {
            map["DeleteRule"] = self.deleteRule!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackIds") {
            self.compliancePackIds = dict["CompliancePackIds"] as! String
        }
        if dict.keys.contains("DeleteRule") {
            self.deleteRule = dict["DeleteRule"] as! Bool
        }
    }
}

public class DeleteCompliancePacksResponseBody : Tea.TeaModel {
    public class OperateCompliancePacksResult : Tea.TeaModel {
        public class OperateCompliancePacks : Tea.TeaModel {
            public var compliancePackId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compliancePackId != nil {
                    map["CompliancePackId"] = self.compliancePackId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompliancePackId") {
                    self.compliancePackId = dict["CompliancePackId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateCompliancePacks: [DeleteCompliancePacksResponseBody.OperateCompliancePacksResult.OperateCompliancePacks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateCompliancePacks != nil {
                var tmp : [Any] = []
                for k in self.operateCompliancePacks! {
                    tmp.append(k.toMap())
                }
                map["OperateCompliancePacks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateCompliancePacks") {
                self.operateCompliancePacks = dict["OperateCompliancePacks"] as! [DeleteCompliancePacksResponseBody.OperateCompliancePacksResult.OperateCompliancePacks]
            }
        }
    }
    public var operateCompliancePacksResult: DeleteCompliancePacksResponseBody.OperateCompliancePacksResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateCompliancePacksResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateCompliancePacksResult != nil {
            map["OperateCompliancePacksResult"] = self.operateCompliancePacksResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateCompliancePacksResult") {
            var model = DeleteCompliancePacksResponseBody.OperateCompliancePacksResult()
            model.fromMap(dict["OperateCompliancePacksResult"] as! [String: Any])
            self.operateCompliancePacksResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCompliancePacksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCompliancePacksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCompliancePacksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRemediationsRequest : Tea.TeaModel {
    public var remediationIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remediationIds != nil {
            map["RemediationIds"] = self.remediationIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemediationIds") {
            self.remediationIds = dict["RemediationIds"] as! String
        }
    }
}

public class DeleteRemediationsResponseBody : Tea.TeaModel {
    public class RemediationDeleteResults : Tea.TeaModel {
        public var errorMessage: String?

        public var remediationId: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.remediationId != nil {
                map["RemediationId"] = self.remediationId!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("RemediationId") {
                self.remediationId = dict["RemediationId"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var remediationDeleteResults: [DeleteRemediationsResponseBody.RemediationDeleteResults]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remediationDeleteResults != nil {
            var tmp : [Any] = []
            for k in self.remediationDeleteResults! {
                tmp.append(k.toMap())
            }
            map["RemediationDeleteResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemediationDeleteResults") {
            self.remediationDeleteResults = dict["RemediationDeleteResults"] as! [DeleteRemediationsResponseBody.RemediationDeleteResults]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteRemediationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRemediationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteRemediationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachAggregateConfigRuleToCompliancePackRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var compliancePackId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class DetachAggregateConfigRuleToCompliancePackResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [DetachAggregateConfigRuleToCompliancePackResponseBody.OperateRuleResult.OperateRuleItemList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [DetachAggregateConfigRuleToCompliancePackResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: DetachAggregateConfigRuleToCompliancePackResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = DetachAggregateConfigRuleToCompliancePackResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetachAggregateConfigRuleToCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachAggregateConfigRuleToCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetachAggregateConfigRuleToCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachConfigRuleToCompliancePackRequest : Tea.TeaModel {
    public var compliancePackId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class DetachConfigRuleToCompliancePackResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [DetachConfigRuleToCompliancePackResponseBody.OperateRuleResult.OperateRuleItemList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [DetachConfigRuleToCompliancePackResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: DetachConfigRuleToCompliancePackResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = DetachConfigRuleToCompliancePackResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetachConfigRuleToCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachConfigRuleToCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetachConfigRuleToCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateAggregateCompliancePackReportRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GenerateAggregateCompliancePackReportResponseBody : Tea.TeaModel {
    public var compliancePackId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateAggregateCompliancePackReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAggregateCompliancePackReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateAggregateCompliancePackReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateAggregateConfigRulesReportRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class GenerateAggregateConfigRulesReportResponseBody : Tea.TeaModel {
    public var aggregatorId: String?

    public var reportId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateAggregateConfigRulesReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAggregateConfigRulesReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateAggregateConfigRulesReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateCompliancePackReportRequest : Tea.TeaModel {
    public var clientToken: String?

    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GenerateCompliancePackReportResponseBody : Tea.TeaModel {
    public var compliancePackId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateCompliancePackReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCompliancePackReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateCompliancePackReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateConfigRulesReportRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class GenerateConfigRulesReportResponseBody : Tea.TeaModel {
    public var reportId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateConfigRulesReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateConfigRulesReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateConfigRulesReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateAccountComplianceByPackRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GetAggregateAccountComplianceByPackResponseBody : Tea.TeaModel {
    public class AccountComplianceResult : Tea.TeaModel {
        public class AccountCompliances : Tea.TeaModel {
            public var accountId: Int64?

            public var accountName: String?

            public var complianceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
            }
        }
        public var accountCompliances: [GetAggregateAccountComplianceByPackResponseBody.AccountComplianceResult.AccountCompliances]?

        public var compliancePackId: String?

        public var nonCompliantCount: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountCompliances != nil {
                var tmp : [Any] = []
                for k in self.accountCompliances! {
                    tmp.append(k.toMap())
                }
                map["AccountCompliances"] = tmp
            }
            if self.compliancePackId != nil {
                map["CompliancePackId"] = self.compliancePackId!
            }
            if self.nonCompliantCount != nil {
                map["NonCompliantCount"] = self.nonCompliantCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountCompliances") {
                self.accountCompliances = dict["AccountCompliances"] as! [GetAggregateAccountComplianceByPackResponseBody.AccountComplianceResult.AccountCompliances]
            }
            if dict.keys.contains("CompliancePackId") {
                self.compliancePackId = dict["CompliancePackId"] as! String
            }
            if dict.keys.contains("NonCompliantCount") {
                self.nonCompliantCount = dict["NonCompliantCount"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var accountComplianceResult: GetAggregateAccountComplianceByPackResponseBody.AccountComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountComplianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountComplianceResult != nil {
            map["AccountComplianceResult"] = self.accountComplianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountComplianceResult") {
            var model = GetAggregateAccountComplianceByPackResponseBody.AccountComplianceResult()
            model.fromMap(dict["AccountComplianceResult"] as! [String: Any])
            self.accountComplianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateAccountComplianceByPackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateAccountComplianceByPackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateAccountComplianceByPackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateCompliancePackRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GetAggregateCompliancePackResponseBody : Tea.TeaModel {
    public class CompliancePack : Tea.TeaModel {
        public class ConfigRules : Tea.TeaModel {
            public class ConfigRuleParameters : Tea.TeaModel {
                public var parameterName: String?

                public var parameterValue: String?

                public var required_: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.parameterName != nil {
                        map["ParameterName"] = self.parameterName!
                    }
                    if self.parameterValue != nil {
                        map["ParameterValue"] = self.parameterValue!
                    }
                    if self.required_ != nil {
                        map["Required"] = self.required_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ParameterName") {
                        self.parameterName = dict["ParameterName"] as! String
                    }
                    if dict.keys.contains("ParameterValue") {
                        self.parameterValue = dict["ParameterValue"] as! String
                    }
                    if dict.keys.contains("Required") {
                        self.required_ = dict["Required"] as! Bool
                    }
                }
            }
            public var configRuleId: String?

            public var configRuleName: String?

            public var configRuleParameters: [GetAggregateCompliancePackResponseBody.CompliancePack.ConfigRules.ConfigRuleParameters]?

            public var description_: String?

            public var managedRuleIdentifier: String?

            public var riskLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.configRuleName != nil {
                    map["ConfigRuleName"] = self.configRuleName!
                }
                if self.configRuleParameters != nil {
                    var tmp : [Any] = []
                    for k in self.configRuleParameters! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigRuleParameters"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.managedRuleIdentifier != nil {
                    map["ManagedRuleIdentifier"] = self.managedRuleIdentifier!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ConfigRuleName") {
                    self.configRuleName = dict["ConfigRuleName"] as! String
                }
                if dict.keys.contains("ConfigRuleParameters") {
                    self.configRuleParameters = dict["ConfigRuleParameters"] as! [GetAggregateCompliancePackResponseBody.CompliancePack.ConfigRules.ConfigRuleParameters]
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ManagedRuleIdentifier") {
                    self.managedRuleIdentifier = dict["ManagedRuleIdentifier"] as! String
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
            }
        }
        public var accountId: Int64?

        public var aggregatorId: String?

        public var compliancePackId: String?

        public var compliancePackName: String?

        public var compliancePackTemplateId: String?

        public var configRules: [GetAggregateCompliancePackResponseBody.CompliancePack.ConfigRules]?

        public var createTimestamp: Int64?

        public var description_: String?

        public var riskLevel: Int32?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.aggregatorId != nil {
                map["AggregatorId"] = self.aggregatorId!
            }
            if self.compliancePackId != nil {
                map["CompliancePackId"] = self.compliancePackId!
            }
            if self.compliancePackName != nil {
                map["CompliancePackName"] = self.compliancePackName!
            }
            if self.compliancePackTemplateId != nil {
                map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
            }
            if self.configRules != nil {
                var tmp : [Any] = []
                for k in self.configRules! {
                    tmp.append(k.toMap())
                }
                map["ConfigRules"] = tmp
            }
            if self.createTimestamp != nil {
                map["CreateTimestamp"] = self.createTimestamp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AggregatorId") {
                self.aggregatorId = dict["AggregatorId"] as! String
            }
            if dict.keys.contains("CompliancePackId") {
                self.compliancePackId = dict["CompliancePackId"] as! String
            }
            if dict.keys.contains("CompliancePackName") {
                self.compliancePackName = dict["CompliancePackName"] as! String
            }
            if dict.keys.contains("CompliancePackTemplateId") {
                self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
            }
            if dict.keys.contains("ConfigRules") {
                self.configRules = dict["ConfigRules"] as! [GetAggregateCompliancePackResponseBody.CompliancePack.ConfigRules]
            }
            if dict.keys.contains("CreateTimestamp") {
                self.createTimestamp = dict["CreateTimestamp"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var compliancePack: GetAggregateCompliancePackResponseBody.CompliancePack?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.compliancePack?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePack != nil {
            map["CompliancePack"] = self.compliancePack?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePack") {
            var model = GetAggregateCompliancePackResponseBody.CompliancePack()
            model.fromMap(dict["CompliancePack"] as! [String: Any])
            self.compliancePack = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateCompliancePackReportRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GetAggregateCompliancePackReportResponseBody : Tea.TeaModel {
    public class CompliancePackReport : Tea.TeaModel {
        public var accountId: Int64?

        public var compliancePackId: String?

        public var reportCreateTimestamp: Int64?

        public var reportStatus: String?

        public var reportUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.compliancePackId != nil {
                map["CompliancePackId"] = self.compliancePackId!
            }
            if self.reportCreateTimestamp != nil {
                map["ReportCreateTimestamp"] = self.reportCreateTimestamp!
            }
            if self.reportStatus != nil {
                map["ReportStatus"] = self.reportStatus!
            }
            if self.reportUrl != nil {
                map["ReportUrl"] = self.reportUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("CompliancePackId") {
                self.compliancePackId = dict["CompliancePackId"] as! String
            }
            if dict.keys.contains("ReportCreateTimestamp") {
                self.reportCreateTimestamp = dict["ReportCreateTimestamp"] as! Int64
            }
            if dict.keys.contains("ReportStatus") {
                self.reportStatus = dict["ReportStatus"] as! String
            }
            if dict.keys.contains("ReportUrl") {
                self.reportUrl = dict["ReportUrl"] as! String
            }
        }
    }
    public var compliancePackReport: GetAggregateCompliancePackReportResponseBody.CompliancePackReport?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.compliancePackReport?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackReport != nil {
            map["CompliancePackReport"] = self.compliancePackReport?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackReport") {
            var model = GetAggregateCompliancePackReportResponseBody.CompliancePackReport()
            model.fromMap(dict["CompliancePackReport"] as! [String: Any])
            self.compliancePackReport = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateCompliancePackReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateCompliancePackReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateCompliancePackReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateConfigDeliveryChannelRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var deliveryChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
    }
}

public class GetAggregateConfigDeliveryChannelResponseBody : Tea.TeaModel {
    public class DeliveryChannel : Tea.TeaModel {
        public var accountId: String?

        public var aggregatorId: String?

        public var configurationItemChangeNotification: Bool?

        public var configurationSnapshot: Bool?

        public var deliveryChannelAssumeRoleArn: String?

        public var deliveryChannelCondition: String?

        public var deliveryChannelId: String?

        public var deliveryChannelName: String?

        public var deliveryChannelTargetArn: String?

        public var deliveryChannelType: String?

        public var deliverySnapshotTime: String?

        public var description_: String?

        public var nonCompliantNotification: Bool?

        public var oversizedDataOSSTargetArn: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.aggregatorId != nil {
                map["AggregatorId"] = self.aggregatorId!
            }
            if self.configurationItemChangeNotification != nil {
                map["ConfigurationItemChangeNotification"] = self.configurationItemChangeNotification!
            }
            if self.configurationSnapshot != nil {
                map["ConfigurationSnapshot"] = self.configurationSnapshot!
            }
            if self.deliveryChannelAssumeRoleArn != nil {
                map["DeliveryChannelAssumeRoleArn"] = self.deliveryChannelAssumeRoleArn!
            }
            if self.deliveryChannelCondition != nil {
                map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
            }
            if self.deliveryChannelId != nil {
                map["DeliveryChannelId"] = self.deliveryChannelId!
            }
            if self.deliveryChannelName != nil {
                map["DeliveryChannelName"] = self.deliveryChannelName!
            }
            if self.deliveryChannelTargetArn != nil {
                map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
            }
            if self.deliveryChannelType != nil {
                map["DeliveryChannelType"] = self.deliveryChannelType!
            }
            if self.deliverySnapshotTime != nil {
                map["DeliverySnapshotTime"] = self.deliverySnapshotTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.nonCompliantNotification != nil {
                map["NonCompliantNotification"] = self.nonCompliantNotification!
            }
            if self.oversizedDataOSSTargetArn != nil {
                map["OversizedDataOSSTargetArn"] = self.oversizedDataOSSTargetArn!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AggregatorId") {
                self.aggregatorId = dict["AggregatorId"] as! String
            }
            if dict.keys.contains("ConfigurationItemChangeNotification") {
                self.configurationItemChangeNotification = dict["ConfigurationItemChangeNotification"] as! Bool
            }
            if dict.keys.contains("ConfigurationSnapshot") {
                self.configurationSnapshot = dict["ConfigurationSnapshot"] as! Bool
            }
            if dict.keys.contains("DeliveryChannelAssumeRoleArn") {
                self.deliveryChannelAssumeRoleArn = dict["DeliveryChannelAssumeRoleArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelCondition") {
                self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
            }
            if dict.keys.contains("DeliveryChannelId") {
                self.deliveryChannelId = dict["DeliveryChannelId"] as! String
            }
            if dict.keys.contains("DeliveryChannelName") {
                self.deliveryChannelName = dict["DeliveryChannelName"] as! String
            }
            if dict.keys.contains("DeliveryChannelTargetArn") {
                self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelType") {
                self.deliveryChannelType = dict["DeliveryChannelType"] as! String
            }
            if dict.keys.contains("DeliverySnapshotTime") {
                self.deliverySnapshotTime = dict["DeliverySnapshotTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("NonCompliantNotification") {
                self.nonCompliantNotification = dict["NonCompliantNotification"] as! Bool
            }
            if dict.keys.contains("OversizedDataOSSTargetArn") {
                self.oversizedDataOSSTargetArn = dict["OversizedDataOSSTargetArn"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var deliveryChannel: GetAggregateConfigDeliveryChannelResponseBody.DeliveryChannel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannel != nil {
            map["DeliveryChannel"] = self.deliveryChannel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannel") {
            var model = GetAggregateConfigDeliveryChannelResponseBody.DeliveryChannel()
            model.fromMap(dict["DeliveryChannel"] as! [String: Any])
            self.deliveryChannel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateConfigDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateConfigDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateConfigDeliveryChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateConfigRuleRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
    }
}

public class GetAggregateConfigRuleResponseBody : Tea.TeaModel {
    public class ConfigRule : Tea.TeaModel {
        public class Compliance : Tea.TeaModel {
            public var complianceType: String?

            public var count: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
            }
        }
        public class ConfigRuleEvaluationStatus : Tea.TeaModel {
            public var firstActivatedTimestamp: Int64?

            public var firstEvaluationStarted: Bool?

            public var lastErrorCode: String?

            public var lastErrorMessage: String?

            public var lastFailedEvaluationTimestamp: Int64?

            public var lastFailedInvocationTimestamp: Int64?

            public var lastSuccessfulEvaluationTimestamp: Int64?

            public var lastSuccessfulInvocationTimestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.firstActivatedTimestamp != nil {
                    map["FirstActivatedTimestamp"] = self.firstActivatedTimestamp!
                }
                if self.firstEvaluationStarted != nil {
                    map["FirstEvaluationStarted"] = self.firstEvaluationStarted!
                }
                if self.lastErrorCode != nil {
                    map["LastErrorCode"] = self.lastErrorCode!
                }
                if self.lastErrorMessage != nil {
                    map["LastErrorMessage"] = self.lastErrorMessage!
                }
                if self.lastFailedEvaluationTimestamp != nil {
                    map["LastFailedEvaluationTimestamp"] = self.lastFailedEvaluationTimestamp!
                }
                if self.lastFailedInvocationTimestamp != nil {
                    map["LastFailedInvocationTimestamp"] = self.lastFailedInvocationTimestamp!
                }
                if self.lastSuccessfulEvaluationTimestamp != nil {
                    map["LastSuccessfulEvaluationTimestamp"] = self.lastSuccessfulEvaluationTimestamp!
                }
                if self.lastSuccessfulInvocationTimestamp != nil {
                    map["LastSuccessfulInvocationTimestamp"] = self.lastSuccessfulInvocationTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FirstActivatedTimestamp") {
                    self.firstActivatedTimestamp = dict["FirstActivatedTimestamp"] as! Int64
                }
                if dict.keys.contains("FirstEvaluationStarted") {
                    self.firstEvaluationStarted = dict["FirstEvaluationStarted"] as! Bool
                }
                if dict.keys.contains("LastErrorCode") {
                    self.lastErrorCode = dict["LastErrorCode"] as! String
                }
                if dict.keys.contains("LastErrorMessage") {
                    self.lastErrorMessage = dict["LastErrorMessage"] as! String
                }
                if dict.keys.contains("LastFailedEvaluationTimestamp") {
                    self.lastFailedEvaluationTimestamp = dict["LastFailedEvaluationTimestamp"] as! Int64
                }
                if dict.keys.contains("LastFailedInvocationTimestamp") {
                    self.lastFailedInvocationTimestamp = dict["LastFailedInvocationTimestamp"] as! Int64
                }
                if dict.keys.contains("LastSuccessfulEvaluationTimestamp") {
                    self.lastSuccessfulEvaluationTimestamp = dict["LastSuccessfulEvaluationTimestamp"] as! Int64
                }
                if dict.keys.contains("LastSuccessfulInvocationTimestamp") {
                    self.lastSuccessfulInvocationTimestamp = dict["LastSuccessfulInvocationTimestamp"] as! Int64
                }
            }
        }
        public class CreateBy : Tea.TeaModel {
            public var aggregatorId: String?

            public var aggregatorName: String?

            public var compliancePackId: String?

            public var compliancePackName: String?

            public var creatorId: String?

            public var creatorName: String?

            public var creatorType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aggregatorId != nil {
                    map["AggregatorId"] = self.aggregatorId!
                }
                if self.aggregatorName != nil {
                    map["AggregatorName"] = self.aggregatorName!
                }
                if self.compliancePackId != nil {
                    map["CompliancePackId"] = self.compliancePackId!
                }
                if self.compliancePackName != nil {
                    map["CompliancePackName"] = self.compliancePackName!
                }
                if self.creatorId != nil {
                    map["CreatorId"] = self.creatorId!
                }
                if self.creatorName != nil {
                    map["CreatorName"] = self.creatorName!
                }
                if self.creatorType != nil {
                    map["CreatorType"] = self.creatorType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AggregatorId") {
                    self.aggregatorId = dict["AggregatorId"] as! String
                }
                if dict.keys.contains("AggregatorName") {
                    self.aggregatorName = dict["AggregatorName"] as! String
                }
                if dict.keys.contains("CompliancePackId") {
                    self.compliancePackId = dict["CompliancePackId"] as! String
                }
                if dict.keys.contains("CompliancePackName") {
                    self.compliancePackName = dict["CompliancePackName"] as! String
                }
                if dict.keys.contains("CreatorId") {
                    self.creatorId = dict["CreatorId"] as! String
                }
                if dict.keys.contains("CreatorName") {
                    self.creatorName = dict["CreatorName"] as! String
                }
                if dict.keys.contains("CreatorType") {
                    self.creatorType = dict["CreatorType"] as! String
                }
            }
        }
        public class ManagedRule : Tea.TeaModel {
            public class SourceDetails : Tea.TeaModel {
                public var eventSource: String?

                public var maximumExecutionFrequency: String?

                public var messageType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.eventSource != nil {
                        map["EventSource"] = self.eventSource!
                    }
                    if self.maximumExecutionFrequency != nil {
                        map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
                    }
                    if self.messageType != nil {
                        map["MessageType"] = self.messageType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventSource") {
                        self.eventSource = dict["EventSource"] as! String
                    }
                    if dict.keys.contains("MaximumExecutionFrequency") {
                        self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
                    }
                    if dict.keys.contains("MessageType") {
                        self.messageType = dict["MessageType"] as! String
                    }
                }
            }
            public var compulsoryInputParameterDetails: [String: Any]?

            public var description_: String?

            public var identifier: String?

            public var labels: [String]?

            public var managedRuleName: String?

            public var optionalInputParameterDetails: [String: Any]?

            public var sourceDetails: [GetAggregateConfigRuleResponseBody.ConfigRule.ManagedRule.SourceDetails]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compulsoryInputParameterDetails != nil {
                    map["CompulsoryInputParameterDetails"] = self.compulsoryInputParameterDetails!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.identifier != nil {
                    map["Identifier"] = self.identifier!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.managedRuleName != nil {
                    map["ManagedRuleName"] = self.managedRuleName!
                }
                if self.optionalInputParameterDetails != nil {
                    map["OptionalInputParameterDetails"] = self.optionalInputParameterDetails!
                }
                if self.sourceDetails != nil {
                    var tmp : [Any] = []
                    for k in self.sourceDetails! {
                        tmp.append(k.toMap())
                    }
                    map["SourceDetails"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompulsoryInputParameterDetails") {
                    self.compulsoryInputParameterDetails = dict["CompulsoryInputParameterDetails"] as! [String: Any]
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Identifier") {
                    self.identifier = dict["Identifier"] as! String
                }
                if dict.keys.contains("Labels") {
                    self.labels = dict["Labels"] as! [String]
                }
                if dict.keys.contains("ManagedRuleName") {
                    self.managedRuleName = dict["ManagedRuleName"] as! String
                }
                if dict.keys.contains("OptionalInputParameterDetails") {
                    self.optionalInputParameterDetails = dict["OptionalInputParameterDetails"] as! [String: Any]
                }
                if dict.keys.contains("SourceDetails") {
                    self.sourceDetails = dict["SourceDetails"] as! [GetAggregateConfigRuleResponseBody.ConfigRule.ManagedRule.SourceDetails]
                }
            }
        }
        public class Source : Tea.TeaModel {
            public class SourceDetails : Tea.TeaModel {
                public var eventSource: String?

                public var maximumExecutionFrequency: String?

                public var messageType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.eventSource != nil {
                        map["EventSource"] = self.eventSource!
                    }
                    if self.maximumExecutionFrequency != nil {
                        map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
                    }
                    if self.messageType != nil {
                        map["MessageType"] = self.messageType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventSource") {
                        self.eventSource = dict["EventSource"] as! String
                    }
                    if dict.keys.contains("MaximumExecutionFrequency") {
                        self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
                    }
                    if dict.keys.contains("MessageType") {
                        self.messageType = dict["MessageType"] as! String
                    }
                }
            }
            public var identifier: String?

            public var owner: String?

            public var sourceDetails: [GetAggregateConfigRuleResponseBody.ConfigRule.Source.SourceDetails]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.identifier != nil {
                    map["Identifier"] = self.identifier!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.sourceDetails != nil {
                    var tmp : [Any] = []
                    for k in self.sourceDetails! {
                        tmp.append(k.toMap())
                    }
                    map["SourceDetails"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Identifier") {
                    self.identifier = dict["Identifier"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("SourceDetails") {
                    self.sourceDetails = dict["SourceDetails"] as! [GetAggregateConfigRuleResponseBody.ConfigRule.Source.SourceDetails]
                }
            }
        }
        public var accountId: Int64?

        public var compliance: GetAggregateConfigRuleResponseBody.ConfigRule.Compliance?

        public var configRuleArn: String?

        public var configRuleEvaluationStatus: GetAggregateConfigRuleResponseBody.ConfigRule.ConfigRuleEvaluationStatus?

        public var configRuleId: String?

        public var configRuleName: String?

        public var configRuleState: String?

        public var configRuleTriggerTypes: String?

        public var createBy: GetAggregateConfigRuleResponseBody.ConfigRule.CreateBy?

        public var createTimestamp: Int64?

        public var description_: String?

        public var excludeAccountIdsScope: String?

        public var excludeFolderIdsScope: String?

        public var excludeResourceIdsScope: String?

        public var folderIdsScope: String?

        public var inputParameters: [String: Any]?

        public var managedRule: GetAggregateConfigRuleResponseBody.ConfigRule.ManagedRule?

        public var maximumExecutionFrequency: String?

        public var modifiedTimestamp: Int64?

        public var regionIdsScope: String?

        public var resourceGroupIdsScope: String?

        public var resourceTypesScope: String?

        public var riskLevel: Int32?

        public var source: GetAggregateConfigRuleResponseBody.ConfigRule.Source?

        public var tagKeyLogicScope: String?

        public var tagKeyScope: String?

        public var tagValueScope: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.compliance?.validate()
            try self.configRuleEvaluationStatus?.validate()
            try self.createBy?.validate()
            try self.managedRule?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.compliance != nil {
                map["Compliance"] = self.compliance?.toMap()
            }
            if self.configRuleArn != nil {
                map["ConfigRuleArn"] = self.configRuleArn!
            }
            if self.configRuleEvaluationStatus != nil {
                map["ConfigRuleEvaluationStatus"] = self.configRuleEvaluationStatus?.toMap()
            }
            if self.configRuleId != nil {
                map["ConfigRuleId"] = self.configRuleId!
            }
            if self.configRuleName != nil {
                map["ConfigRuleName"] = self.configRuleName!
            }
            if self.configRuleState != nil {
                map["ConfigRuleState"] = self.configRuleState!
            }
            if self.configRuleTriggerTypes != nil {
                map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
            }
            if self.createBy != nil {
                map["CreateBy"] = self.createBy?.toMap()
            }
            if self.createTimestamp != nil {
                map["CreateTimestamp"] = self.createTimestamp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.excludeAccountIdsScope != nil {
                map["ExcludeAccountIdsScope"] = self.excludeAccountIdsScope!
            }
            if self.excludeFolderIdsScope != nil {
                map["ExcludeFolderIdsScope"] = self.excludeFolderIdsScope!
            }
            if self.excludeResourceIdsScope != nil {
                map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
            }
            if self.folderIdsScope != nil {
                map["FolderIdsScope"] = self.folderIdsScope!
            }
            if self.inputParameters != nil {
                map["InputParameters"] = self.inputParameters!
            }
            if self.managedRule != nil {
                map["ManagedRule"] = self.managedRule?.toMap()
            }
            if self.maximumExecutionFrequency != nil {
                map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
            }
            if self.modifiedTimestamp != nil {
                map["ModifiedTimestamp"] = self.modifiedTimestamp!
            }
            if self.regionIdsScope != nil {
                map["RegionIdsScope"] = self.regionIdsScope!
            }
            if self.resourceGroupIdsScope != nil {
                map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
            }
            if self.resourceTypesScope != nil {
                map["ResourceTypesScope"] = self.resourceTypesScope!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            if self.tagKeyLogicScope != nil {
                map["TagKeyLogicScope"] = self.tagKeyLogicScope!
            }
            if self.tagKeyScope != nil {
                map["TagKeyScope"] = self.tagKeyScope!
            }
            if self.tagValueScope != nil {
                map["TagValueScope"] = self.tagValueScope!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("Compliance") {
                var model = GetAggregateConfigRuleResponseBody.ConfigRule.Compliance()
                model.fromMap(dict["Compliance"] as! [String: Any])
                self.compliance = model
            }
            if dict.keys.contains("ConfigRuleArn") {
                self.configRuleArn = dict["ConfigRuleArn"] as! String
            }
            if dict.keys.contains("ConfigRuleEvaluationStatus") {
                var model = GetAggregateConfigRuleResponseBody.ConfigRule.ConfigRuleEvaluationStatus()
                model.fromMap(dict["ConfigRuleEvaluationStatus"] as! [String: Any])
                self.configRuleEvaluationStatus = model
            }
            if dict.keys.contains("ConfigRuleId") {
                self.configRuleId = dict["ConfigRuleId"] as! String
            }
            if dict.keys.contains("ConfigRuleName") {
                self.configRuleName = dict["ConfigRuleName"] as! String
            }
            if dict.keys.contains("ConfigRuleState") {
                self.configRuleState = dict["ConfigRuleState"] as! String
            }
            if dict.keys.contains("ConfigRuleTriggerTypes") {
                self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
            }
            if dict.keys.contains("CreateBy") {
                var model = GetAggregateConfigRuleResponseBody.ConfigRule.CreateBy()
                model.fromMap(dict["CreateBy"] as! [String: Any])
                self.createBy = model
            }
            if dict.keys.contains("CreateTimestamp") {
                self.createTimestamp = dict["CreateTimestamp"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExcludeAccountIdsScope") {
                self.excludeAccountIdsScope = dict["ExcludeAccountIdsScope"] as! String
            }
            if dict.keys.contains("ExcludeFolderIdsScope") {
                self.excludeFolderIdsScope = dict["ExcludeFolderIdsScope"] as! String
            }
            if dict.keys.contains("ExcludeResourceIdsScope") {
                self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
            }
            if dict.keys.contains("FolderIdsScope") {
                self.folderIdsScope = dict["FolderIdsScope"] as! String
            }
            if dict.keys.contains("InputParameters") {
                self.inputParameters = dict["InputParameters"] as! [String: Any]
            }
            if dict.keys.contains("ManagedRule") {
                var model = GetAggregateConfigRuleResponseBody.ConfigRule.ManagedRule()
                model.fromMap(dict["ManagedRule"] as! [String: Any])
                self.managedRule = model
            }
            if dict.keys.contains("MaximumExecutionFrequency") {
                self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
            }
            if dict.keys.contains("ModifiedTimestamp") {
                self.modifiedTimestamp = dict["ModifiedTimestamp"] as! Int64
            }
            if dict.keys.contains("RegionIdsScope") {
                self.regionIdsScope = dict["RegionIdsScope"] as! String
            }
            if dict.keys.contains("ResourceGroupIdsScope") {
                self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
            }
            if dict.keys.contains("ResourceTypesScope") {
                self.resourceTypesScope = dict["ResourceTypesScope"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
            if dict.keys.contains("Source") {
                var model = GetAggregateConfigRuleResponseBody.ConfigRule.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
            if dict.keys.contains("TagKeyLogicScope") {
                self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
            }
            if dict.keys.contains("TagKeyScope") {
                self.tagKeyScope = dict["TagKeyScope"] as! String
            }
            if dict.keys.contains("TagValueScope") {
                self.tagValueScope = dict["TagValueScope"] as! String
            }
        }
    }
    public var configRule: GetAggregateConfigRuleResponseBody.ConfigRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRule != nil {
            map["ConfigRule"] = self.configRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRule") {
            var model = GetAggregateConfigRuleResponseBody.ConfigRule()
            model.fromMap(dict["ConfigRule"] as! [String: Any])
            self.configRule = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateConfigRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateConfigRuleComplianceByPackRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GetAggregateConfigRuleComplianceByPackResponseBody : Tea.TeaModel {
    public class ConfigRuleComplianceResult : Tea.TeaModel {
        public class ConfigRuleCompliances : Tea.TeaModel {
            public var complianceType: String?

            public var configRuleId: String?

            public var configRuleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.configRuleName != nil {
                    map["ConfigRuleName"] = self.configRuleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ConfigRuleName") {
                    self.configRuleName = dict["ConfigRuleName"] as! String
                }
            }
        }
        public var compliancePackId: String?

        public var configRuleCompliances: [GetAggregateConfigRuleComplianceByPackResponseBody.ConfigRuleComplianceResult.ConfigRuleCompliances]?

        public var nonCompliantCount: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePackId != nil {
                map["CompliancePackId"] = self.compliancePackId!
            }
            if self.configRuleCompliances != nil {
                var tmp : [Any] = []
                for k in self.configRuleCompliances! {
                    tmp.append(k.toMap())
                }
                map["ConfigRuleCompliances"] = tmp
            }
            if self.nonCompliantCount != nil {
                map["NonCompliantCount"] = self.nonCompliantCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliancePackId") {
                self.compliancePackId = dict["CompliancePackId"] as! String
            }
            if dict.keys.contains("ConfigRuleCompliances") {
                self.configRuleCompliances = dict["ConfigRuleCompliances"] as! [GetAggregateConfigRuleComplianceByPackResponseBody.ConfigRuleComplianceResult.ConfigRuleCompliances]
            }
            if dict.keys.contains("NonCompliantCount") {
                self.nonCompliantCount = dict["NonCompliantCount"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var configRuleComplianceResult: GetAggregateConfigRuleComplianceByPackResponseBody.ConfigRuleComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configRuleComplianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleComplianceResult != nil {
            map["ConfigRuleComplianceResult"] = self.configRuleComplianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleComplianceResult") {
            var model = GetAggregateConfigRuleComplianceByPackResponseBody.ConfigRuleComplianceResult()
            model.fromMap(dict["ConfigRuleComplianceResult"] as! [String: Any])
            self.configRuleComplianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateConfigRuleComplianceByPackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateConfigRuleComplianceByPackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateConfigRuleComplianceByPackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateConfigRuleSummaryByRiskLevelRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
    }
}

public class GetAggregateConfigRuleSummaryByRiskLevelResponseBody : Tea.TeaModel {
    public class ConfigRuleSummaries : Tea.TeaModel {
        public var compliantCount: Int32?

        public var nonCompliantCount: Int32?

        public var riskLevel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliantCount != nil {
                map["CompliantCount"] = self.compliantCount!
            }
            if self.nonCompliantCount != nil {
                map["NonCompliantCount"] = self.nonCompliantCount!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliantCount") {
                self.compliantCount = dict["CompliantCount"] as! Int32
            }
            if dict.keys.contains("NonCompliantCount") {
                self.nonCompliantCount = dict["NonCompliantCount"] as! Int32
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
        }
    }
    public var configRuleSummaries: [GetAggregateConfigRuleSummaryByRiskLevelResponseBody.ConfigRuleSummaries]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleSummaries != nil {
            var tmp : [Any] = []
            for k in self.configRuleSummaries! {
                tmp.append(k.toMap())
            }
            map["ConfigRuleSummaries"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleSummaries") {
            self.configRuleSummaries = dict["ConfigRuleSummaries"] as! [GetAggregateConfigRuleSummaryByRiskLevelResponseBody.ConfigRuleSummaries]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateConfigRuleSummaryByRiskLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateConfigRuleSummaryByRiskLevelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateConfigRuleSummaryByRiskLevelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateConfigRulesReportRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var reportId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
    }
}

public class GetAggregateConfigRulesReportResponseBody : Tea.TeaModel {
    public class ConfigRulesReport : Tea.TeaModel {
        public var accountId: Int64?

        public var aggregatorId: String?

        public var reportCreateTimestamp: Int64?

        public var reportId: String?

        public var reportStatus: String?

        public var reportUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.aggregatorId != nil {
                map["AggregatorId"] = self.aggregatorId!
            }
            if self.reportCreateTimestamp != nil {
                map["ReportCreateTimestamp"] = self.reportCreateTimestamp!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.reportStatus != nil {
                map["ReportStatus"] = self.reportStatus!
            }
            if self.reportUrl != nil {
                map["ReportUrl"] = self.reportUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AggregatorId") {
                self.aggregatorId = dict["AggregatorId"] as! String
            }
            if dict.keys.contains("ReportCreateTimestamp") {
                self.reportCreateTimestamp = dict["ReportCreateTimestamp"] as! Int64
            }
            if dict.keys.contains("ReportId") {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ReportStatus") {
                self.reportStatus = dict["ReportStatus"] as! String
            }
            if dict.keys.contains("ReportUrl") {
                self.reportUrl = dict["ReportUrl"] as! String
            }
        }
    }
    public var configRulesReport: GetAggregateConfigRulesReportResponseBody.ConfigRulesReport?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configRulesReport?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRulesReport != nil {
            map["ConfigRulesReport"] = self.configRulesReport?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRulesReport") {
            var model = GetAggregateConfigRulesReportResponseBody.ConfigRulesReport()
            model.fromMap(dict["ConfigRulesReport"] as! [String: Any])
            self.configRulesReport = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateConfigRulesReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateConfigRulesReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateConfigRulesReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateDiscoveredResourceRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var region: String?

    public var resourceId: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class GetAggregateDiscoveredResourceResponseBody : Tea.TeaModel {
    public class DiscoveredResourceDetail : Tea.TeaModel {
        public var accountId: Int64?

        public var availabilityZone: String?

        public var configuration: String?

        public var region: String?

        public var resourceCreationTime: Int64?

        public var resourceDeleted: Int32?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceStatus: String?

        public var resourceType: String?

        public var tags: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.availabilityZone != nil {
                map["AvailabilityZone"] = self.availabilityZone!
            }
            if self.configuration != nil {
                map["Configuration"] = self.configuration!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceCreationTime != nil {
                map["ResourceCreationTime"] = self.resourceCreationTime!
            }
            if self.resourceDeleted != nil {
                map["ResourceDeleted"] = self.resourceDeleted!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AvailabilityZone") {
                self.availabilityZone = dict["AvailabilityZone"] as! String
            }
            if dict.keys.contains("Configuration") {
                self.configuration = dict["Configuration"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceCreationTime") {
                self.resourceCreationTime = dict["ResourceCreationTime"] as! Int64
            }
            if dict.keys.contains("ResourceDeleted") {
                self.resourceDeleted = dict["ResourceDeleted"] as! Int32
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceStatus") {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
        }
    }
    public var discoveredResourceDetail: GetAggregateDiscoveredResourceResponseBody.DiscoveredResourceDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.discoveredResourceDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceDetail != nil {
            map["DiscoveredResourceDetail"] = self.discoveredResourceDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceDetail") {
            var model = GetAggregateDiscoveredResourceResponseBody.DiscoveredResourceDetail()
            model.fromMap(dict["DiscoveredResourceDetail"] as! [String: Any])
            self.discoveredResourceDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateDiscoveredResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateDiscoveredResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateDiscoveredResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateResourceComplianceByConfigRuleRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var complianceType: String?

    public var configRuleId: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetAggregateResourceComplianceByConfigRuleResponseBody : Tea.TeaModel {
    public class ComplianceResult : Tea.TeaModel {
        public class Compliances : Tea.TeaModel {
            public var complianceType: String?

            public var count: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
            }
        }
        public var compliances: [GetAggregateResourceComplianceByConfigRuleResponseBody.ComplianceResult.Compliances]?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliances != nil {
                var tmp : [Any] = []
                for k in self.compliances! {
                    tmp.append(k.toMap())
                }
                map["Compliances"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Compliances") {
                self.compliances = dict["Compliances"] as! [GetAggregateResourceComplianceByConfigRuleResponseBody.ComplianceResult.Compliances]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var complianceResult: GetAggregateResourceComplianceByConfigRuleResponseBody.ComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.complianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceResult != nil {
            map["ComplianceResult"] = self.complianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceResult") {
            var model = GetAggregateResourceComplianceByConfigRuleResponseBody.ComplianceResult()
            model.fromMap(dict["ComplianceResult"] as! [String: Any])
            self.complianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateResourceComplianceByConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateResourceComplianceByConfigRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateResourceComplianceByConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateResourceComplianceByPackRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GetAggregateResourceComplianceByPackResponseBody : Tea.TeaModel {
    public class ResourceComplianceResult : Tea.TeaModel {
        public var compliancePackId: String?

        public var nonCompliantCount: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePackId != nil {
                map["CompliancePackId"] = self.compliancePackId!
            }
            if self.nonCompliantCount != nil {
                map["NonCompliantCount"] = self.nonCompliantCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliancePackId") {
                self.compliancePackId = dict["CompliancePackId"] as! String
            }
            if dict.keys.contains("NonCompliantCount") {
                self.nonCompliantCount = dict["NonCompliantCount"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var resourceComplianceResult: GetAggregateResourceComplianceByPackResponseBody.ResourceComplianceResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceComplianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceComplianceResult != nil {
            map["ResourceComplianceResult"] = self.resourceComplianceResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceComplianceResult") {
            var model = GetAggregateResourceComplianceByPackResponseBody.ResourceComplianceResult()
            model.fromMap(dict["ResourceComplianceResult"] as! [String: Any])
            self.resourceComplianceResult = model
        }
    }
}

public class GetAggregateResourceComplianceByPackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateResourceComplianceByPackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateResourceComplianceByPackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateResourceComplianceGroupByRegionRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class GetAggregateResourceComplianceGroupByRegionResponseBody : Tea.TeaModel {
    public class ComplianceResult : Tea.TeaModel {
        public class ComplianceResultList : Tea.TeaModel {
            public class Compliances : Tea.TeaModel {
                public var complianceType: String?

                public var count: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.complianceType != nil {
                        map["ComplianceType"] = self.complianceType!
                    }
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComplianceType") {
                        self.complianceType = dict["ComplianceType"] as! String
                    }
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int64
                    }
                }
            }
            public var compliances: [GetAggregateResourceComplianceGroupByRegionResponseBody.ComplianceResult.ComplianceResultList.Compliances]?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compliances != nil {
                    var tmp : [Any] = []
                    for k in self.compliances! {
                        tmp.append(k.toMap())
                    }
                    map["Compliances"] = tmp
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Compliances") {
                    self.compliances = dict["Compliances"] as! [GetAggregateResourceComplianceGroupByRegionResponseBody.ComplianceResult.ComplianceResultList.Compliances]
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var complianceResultList: [GetAggregateResourceComplianceGroupByRegionResponseBody.ComplianceResult.ComplianceResultList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.complianceResultList != nil {
                var tmp : [Any] = []
                for k in self.complianceResultList! {
                    tmp.append(k.toMap())
                }
                map["ComplianceResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComplianceResultList") {
                self.complianceResultList = dict["ComplianceResultList"] as! [GetAggregateResourceComplianceGroupByRegionResponseBody.ComplianceResult.ComplianceResultList]
            }
        }
    }
    public var complianceResult: GetAggregateResourceComplianceGroupByRegionResponseBody.ComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.complianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceResult != nil {
            map["ComplianceResult"] = self.complianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceResult") {
            var model = GetAggregateResourceComplianceGroupByRegionResponseBody.ComplianceResult()
            model.fromMap(dict["ComplianceResult"] as! [String: Any])
            self.complianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateResourceComplianceGroupByRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateResourceComplianceGroupByRegionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateResourceComplianceGroupByRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateResourceComplianceGroupByResourceTypeRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class GetAggregateResourceComplianceGroupByResourceTypeResponseBody : Tea.TeaModel {
    public class ComplianceResult : Tea.TeaModel {
        public class ComplianceResultList : Tea.TeaModel {
            public class Compliances : Tea.TeaModel {
                public var complianceType: String?

                public var count: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.complianceType != nil {
                        map["ComplianceType"] = self.complianceType!
                    }
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComplianceType") {
                        self.complianceType = dict["ComplianceType"] as! String
                    }
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int64
                    }
                }
            }
            public var compliances: [GetAggregateResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult.ComplianceResultList.Compliances]?

            public var resourceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compliances != nil {
                    var tmp : [Any] = []
                    for k in self.compliances! {
                        tmp.append(k.toMap())
                    }
                    map["Compliances"] = tmp
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Compliances") {
                    self.compliances = dict["Compliances"] as! [GetAggregateResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult.ComplianceResultList.Compliances]
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public var complianceResultList: [GetAggregateResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult.ComplianceResultList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.complianceResultList != nil {
                var tmp : [Any] = []
                for k in self.complianceResultList! {
                    tmp.append(k.toMap())
                }
                map["ComplianceResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComplianceResultList") {
                self.complianceResultList = dict["ComplianceResultList"] as! [GetAggregateResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult.ComplianceResultList]
            }
        }
    }
    public var complianceResult: GetAggregateResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.complianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceResult != nil {
            map["ComplianceResult"] = self.complianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceResult") {
            var model = GetAggregateResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult()
            model.fromMap(dict["ComplianceResult"] as! [String: Any])
            self.complianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateResourceComplianceGroupByResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateResourceComplianceGroupByResourceTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateResourceComplianceGroupByResourceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateResourceComplianceTimelineRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var endTime: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var resourceId: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetAggregateResourceComplianceTimelineResponseBody : Tea.TeaModel {
    public class ResourceComplianceTimeline : Tea.TeaModel {
        public class ComplianceList : Tea.TeaModel {
            public var accountId: String?

            public var availabilityZone: String?

            public var captureTime: Int64?

            public var configuration: String?

            public var configurationDiff: String?

            public var region: String?

            public var resourceCreateTime: Int64?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceStatus: String?

            public var resourceType: String?

            public var tags: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.availabilityZone != nil {
                    map["AvailabilityZone"] = self.availabilityZone!
                }
                if self.captureTime != nil {
                    map["CaptureTime"] = self.captureTime!
                }
                if self.configuration != nil {
                    map["Configuration"] = self.configuration!
                }
                if self.configurationDiff != nil {
                    map["ConfigurationDiff"] = self.configurationDiff!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceCreateTime != nil {
                    map["ResourceCreateTime"] = self.resourceCreateTime!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceStatus != nil {
                    map["ResourceStatus"] = self.resourceStatus!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AvailabilityZone") {
                    self.availabilityZone = dict["AvailabilityZone"] as! String
                }
                if dict.keys.contains("CaptureTime") {
                    self.captureTime = dict["CaptureTime"] as! Int64
                }
                if dict.keys.contains("Configuration") {
                    self.configuration = dict["Configuration"] as! String
                }
                if dict.keys.contains("ConfigurationDiff") {
                    self.configurationDiff = dict["ConfigurationDiff"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceCreateTime") {
                    self.resourceCreateTime = dict["ResourceCreateTime"] as! Int64
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceStatus") {
                    self.resourceStatus = dict["ResourceStatus"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public var complianceList: [GetAggregateResourceComplianceTimelineResponseBody.ResourceComplianceTimeline.ComplianceList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.complianceList != nil {
                var tmp : [Any] = []
                for k in self.complianceList! {
                    tmp.append(k.toMap())
                }
                map["ComplianceList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComplianceList") {
                self.complianceList = dict["ComplianceList"] as! [GetAggregateResourceComplianceTimelineResponseBody.ResourceComplianceTimeline.ComplianceList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceComplianceTimeline: GetAggregateResourceComplianceTimelineResponseBody.ResourceComplianceTimeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceComplianceTimeline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceComplianceTimeline != nil {
            map["ResourceComplianceTimeline"] = self.resourceComplianceTimeline?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceComplianceTimeline") {
            var model = GetAggregateResourceComplianceTimelineResponseBody.ResourceComplianceTimeline()
            model.fromMap(dict["ResourceComplianceTimeline"] as! [String: Any])
            self.resourceComplianceTimeline = model
        }
    }
}

public class GetAggregateResourceComplianceTimelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateResourceComplianceTimelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateResourceComplianceTimelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateResourceConfigurationTimelineRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var endTime: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var resourceId: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetAggregateResourceConfigurationTimelineResponseBody : Tea.TeaModel {
    public class ResourceConfigurationTimeline : Tea.TeaModel {
        public class ConfigurationList : Tea.TeaModel {
            public var accountId: Int64?

            public var availabilityZone: String?

            public var captureTime: String?

            public var configurationDiff: String?

            public var region: String?

            public var resourceCreateTime: String?

            public var resourceEventType: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var tags: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.availabilityZone != nil {
                    map["AvailabilityZone"] = self.availabilityZone!
                }
                if self.captureTime != nil {
                    map["CaptureTime"] = self.captureTime!
                }
                if self.configurationDiff != nil {
                    map["ConfigurationDiff"] = self.configurationDiff!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceCreateTime != nil {
                    map["ResourceCreateTime"] = self.resourceCreateTime!
                }
                if self.resourceEventType != nil {
                    map["ResourceEventType"] = self.resourceEventType!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AvailabilityZone") {
                    self.availabilityZone = dict["AvailabilityZone"] as! String
                }
                if dict.keys.contains("CaptureTime") {
                    self.captureTime = dict["CaptureTime"] as! String
                }
                if dict.keys.contains("ConfigurationDiff") {
                    self.configurationDiff = dict["ConfigurationDiff"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceCreateTime") {
                    self.resourceCreateTime = dict["ResourceCreateTime"] as! String
                }
                if dict.keys.contains("ResourceEventType") {
                    self.resourceEventType = dict["ResourceEventType"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public var configurationList: [GetAggregateResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline.ConfigurationList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configurationList != nil {
                var tmp : [Any] = []
                for k in self.configurationList! {
                    tmp.append(k.toMap())
                }
                map["ConfigurationList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigurationList") {
                self.configurationList = dict["ConfigurationList"] as! [GetAggregateResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline.ConfigurationList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceConfigurationTimeline: GetAggregateResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceConfigurationTimeline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceConfigurationTimeline != nil {
            map["ResourceConfigurationTimeline"] = self.resourceConfigurationTimeline?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceConfigurationTimeline") {
            var model = GetAggregateResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline()
            model.fromMap(dict["ResourceConfigurationTimeline"] as! [String: Any])
            self.resourceConfigurationTimeline = model
        }
    }
}

public class GetAggregateResourceConfigurationTimelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateResourceConfigurationTimelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateResourceConfigurationTimelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateResourceCountsGroupByRegionRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var folderId: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("FolderId") {
            self.folderId = dict["FolderId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class GetAggregateResourceCountsGroupByRegionResponseBody : Tea.TeaModel {
    public class DiscoveredResourceCountsSummary : Tea.TeaModel {
        public var region: String?

        public var resourceCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceCount != nil {
                map["ResourceCount"] = self.resourceCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceCount") {
                self.resourceCount = dict["ResourceCount"] as! Int64
            }
        }
    }
    public var discoveredResourceCountsSummary: [GetAggregateResourceCountsGroupByRegionResponseBody.DiscoveredResourceCountsSummary]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceCountsSummary != nil {
            var tmp : [Any] = []
            for k in self.discoveredResourceCountsSummary! {
                tmp.append(k.toMap())
            }
            map["DiscoveredResourceCountsSummary"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceCountsSummary") {
            self.discoveredResourceCountsSummary = dict["DiscoveredResourceCountsSummary"] as! [GetAggregateResourceCountsGroupByRegionResponseBody.DiscoveredResourceCountsSummary]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateResourceCountsGroupByRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateResourceCountsGroupByRegionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateResourceCountsGroupByRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateResourceCountsGroupByResourceTypeRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var folderId: String?

    public var region: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("FolderId") {
            self.folderId = dict["FolderId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetAggregateResourceCountsGroupByResourceTypeResponseBody : Tea.TeaModel {
    public class DiscoveredResourceCountsSummary : Tea.TeaModel {
        public var resourceCount: Int64?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceCount != nil {
                map["ResourceCount"] = self.resourceCount!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceCount") {
                self.resourceCount = dict["ResourceCount"] as! Int64
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var discoveredResourceCountsSummary: [GetAggregateResourceCountsGroupByResourceTypeResponseBody.DiscoveredResourceCountsSummary]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceCountsSummary != nil {
            var tmp : [Any] = []
            for k in self.discoveredResourceCountsSummary! {
                tmp.append(k.toMap())
            }
            map["DiscoveredResourceCountsSummary"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceCountsSummary") {
            self.discoveredResourceCountsSummary = dict["DiscoveredResourceCountsSummary"] as! [GetAggregateResourceCountsGroupByResourceTypeResponseBody.DiscoveredResourceCountsSummary]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateResourceCountsGroupByResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateResourceCountsGroupByResourceTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateResourceCountsGroupByResourceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregatorRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
    }
}

public class GetAggregatorResponseBody : Tea.TeaModel {
    public class Aggregator : Tea.TeaModel {
        public class AggregatorAccounts : Tea.TeaModel {
            public var accountId: Int64?

            public var accountName: String?

            public var accountType: String?

            public var recorderStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.recorderStatus != nil {
                    map["RecorderStatus"] = self.recorderStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("AccountType") {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("RecorderStatus") {
                    self.recorderStatus = dict["RecorderStatus"] as! String
                }
            }
        }
        public var accountId: Int64?

        public var aggregatorAccountCount: Int64?

        public var aggregatorAccounts: [GetAggregatorResponseBody.Aggregator.AggregatorAccounts]?

        public var aggregatorCreateTimestamp: String?

        public var aggregatorId: String?

        public var aggregatorName: String?

        public var aggregatorStatus: Int32?

        public var aggregatorType: String?

        public var description_: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.aggregatorAccountCount != nil {
                map["AggregatorAccountCount"] = self.aggregatorAccountCount!
            }
            if self.aggregatorAccounts != nil {
                var tmp : [Any] = []
                for k in self.aggregatorAccounts! {
                    tmp.append(k.toMap())
                }
                map["AggregatorAccounts"] = tmp
            }
            if self.aggregatorCreateTimestamp != nil {
                map["AggregatorCreateTimestamp"] = self.aggregatorCreateTimestamp!
            }
            if self.aggregatorId != nil {
                map["AggregatorId"] = self.aggregatorId!
            }
            if self.aggregatorName != nil {
                map["AggregatorName"] = self.aggregatorName!
            }
            if self.aggregatorStatus != nil {
                map["AggregatorStatus"] = self.aggregatorStatus!
            }
            if self.aggregatorType != nil {
                map["AggregatorType"] = self.aggregatorType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AggregatorAccountCount") {
                self.aggregatorAccountCount = dict["AggregatorAccountCount"] as! Int64
            }
            if dict.keys.contains("AggregatorAccounts") {
                self.aggregatorAccounts = dict["AggregatorAccounts"] as! [GetAggregatorResponseBody.Aggregator.AggregatorAccounts]
            }
            if dict.keys.contains("AggregatorCreateTimestamp") {
                self.aggregatorCreateTimestamp = dict["AggregatorCreateTimestamp"] as! String
            }
            if dict.keys.contains("AggregatorId") {
                self.aggregatorId = dict["AggregatorId"] as! String
            }
            if dict.keys.contains("AggregatorName") {
                self.aggregatorName = dict["AggregatorName"] as! String
            }
            if dict.keys.contains("AggregatorStatus") {
                self.aggregatorStatus = dict["AggregatorStatus"] as! Int32
            }
            if dict.keys.contains("AggregatorType") {
                self.aggregatorType = dict["AggregatorType"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
        }
    }
    public var aggregator: GetAggregatorResponseBody.Aggregator?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aggregator?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregator != nil {
            map["Aggregator"] = self.aggregator?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Aggregator") {
            var model = GetAggregatorResponseBody.Aggregator()
            model.fromMap(dict["Aggregator"] as! [String: Any])
            self.aggregator = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregatorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregatorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCompliancePackRequest : Tea.TeaModel {
    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GetCompliancePackResponseBody : Tea.TeaModel {
    public class CompliancePack : Tea.TeaModel {
        public class ConfigRules : Tea.TeaModel {
            public class ConfigRuleParameters : Tea.TeaModel {
                public var parameterName: String?

                public var parameterValue: String?

                public var required_: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.parameterName != nil {
                        map["ParameterName"] = self.parameterName!
                    }
                    if self.parameterValue != nil {
                        map["ParameterValue"] = self.parameterValue!
                    }
                    if self.required_ != nil {
                        map["Required"] = self.required_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ParameterName") {
                        self.parameterName = dict["ParameterName"] as! String
                    }
                    if dict.keys.contains("ParameterValue") {
                        self.parameterValue = dict["ParameterValue"] as! String
                    }
                    if dict.keys.contains("Required") {
                        self.required_ = dict["Required"] as! Bool
                    }
                }
            }
            public var configRuleId: String?

            public var configRuleName: String?

            public var configRuleParameters: [GetCompliancePackResponseBody.CompliancePack.ConfigRules.ConfigRuleParameters]?

            public var description_: String?

            public var managedRuleIdentifier: String?

            public var riskLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.configRuleName != nil {
                    map["ConfigRuleName"] = self.configRuleName!
                }
                if self.configRuleParameters != nil {
                    var tmp : [Any] = []
                    for k in self.configRuleParameters! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigRuleParameters"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.managedRuleIdentifier != nil {
                    map["ManagedRuleIdentifier"] = self.managedRuleIdentifier!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ConfigRuleName") {
                    self.configRuleName = dict["ConfigRuleName"] as! String
                }
                if dict.keys.contains("ConfigRuleParameters") {
                    self.configRuleParameters = dict["ConfigRuleParameters"] as! [GetCompliancePackResponseBody.CompliancePack.ConfigRules.ConfigRuleParameters]
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ManagedRuleIdentifier") {
                    self.managedRuleIdentifier = dict["ManagedRuleIdentifier"] as! String
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
            }
        }
        public var accountId: Int64?

        public var compliancePackId: String?

        public var compliancePackName: String?

        public var compliancePackTemplateId: String?

        public var configRules: [GetCompliancePackResponseBody.CompliancePack.ConfigRules]?

        public var createTimestamp: Int64?

        public var description_: String?

        public var riskLevel: Int32?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.compliancePackId != nil {
                map["CompliancePackId"] = self.compliancePackId!
            }
            if self.compliancePackName != nil {
                map["CompliancePackName"] = self.compliancePackName!
            }
            if self.compliancePackTemplateId != nil {
                map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
            }
            if self.configRules != nil {
                var tmp : [Any] = []
                for k in self.configRules! {
                    tmp.append(k.toMap())
                }
                map["ConfigRules"] = tmp
            }
            if self.createTimestamp != nil {
                map["CreateTimestamp"] = self.createTimestamp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("CompliancePackId") {
                self.compliancePackId = dict["CompliancePackId"] as! String
            }
            if dict.keys.contains("CompliancePackName") {
                self.compliancePackName = dict["CompliancePackName"] as! String
            }
            if dict.keys.contains("CompliancePackTemplateId") {
                self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
            }
            if dict.keys.contains("ConfigRules") {
                self.configRules = dict["ConfigRules"] as! [GetCompliancePackResponseBody.CompliancePack.ConfigRules]
            }
            if dict.keys.contains("CreateTimestamp") {
                self.createTimestamp = dict["CreateTimestamp"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var compliancePack: GetCompliancePackResponseBody.CompliancePack?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.compliancePack?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePack != nil {
            map["CompliancePack"] = self.compliancePack?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePack") {
            var model = GetCompliancePackResponseBody.CompliancePack()
            model.fromMap(dict["CompliancePack"] as! [String: Any])
            self.compliancePack = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCompliancePackReportRequest : Tea.TeaModel {
    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GetCompliancePackReportResponseBody : Tea.TeaModel {
    public class CompliancePackReport : Tea.TeaModel {
        public var accountId: Int64?

        public var compliancePackId: String?

        public var reportCreateTimestamp: Int64?

        public var reportStatus: String?

        public var reportUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.compliancePackId != nil {
                map["CompliancePackId"] = self.compliancePackId!
            }
            if self.reportCreateTimestamp != nil {
                map["ReportCreateTimestamp"] = self.reportCreateTimestamp!
            }
            if self.reportStatus != nil {
                map["ReportStatus"] = self.reportStatus!
            }
            if self.reportUrl != nil {
                map["ReportUrl"] = self.reportUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("CompliancePackId") {
                self.compliancePackId = dict["CompliancePackId"] as! String
            }
            if dict.keys.contains("ReportCreateTimestamp") {
                self.reportCreateTimestamp = dict["ReportCreateTimestamp"] as! Int64
            }
            if dict.keys.contains("ReportStatus") {
                self.reportStatus = dict["ReportStatus"] as! String
            }
            if dict.keys.contains("ReportUrl") {
                self.reportUrl = dict["ReportUrl"] as! String
            }
        }
    }
    public var compliancePackReport: GetCompliancePackReportResponseBody.CompliancePackReport?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.compliancePackReport?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackReport != nil {
            map["CompliancePackReport"] = self.compliancePackReport?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackReport") {
            var model = GetCompliancePackReportResponseBody.CompliancePackReport()
            model.fromMap(dict["CompliancePackReport"] as! [String: Any])
            self.compliancePackReport = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCompliancePackReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCompliancePackReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCompliancePackReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConfigDeliveryChannelRequest : Tea.TeaModel {
    public var deliveryChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
    }
}

public class GetConfigDeliveryChannelResponseBody : Tea.TeaModel {
    public class DeliveryChannel : Tea.TeaModel {
        public var accountId: Int64?

        public var configurationItemChangeNotification: Bool?

        public var configurationSnapshot: Bool?

        public var deliveryChannelAssumeRoleArn: String?

        public var deliveryChannelCondition: String?

        public var deliveryChannelId: String?

        public var deliveryChannelName: String?

        public var deliveryChannelTargetArn: String?

        public var deliveryChannelType: String?

        public var deliverySnapshotTime: String?

        public var description_: String?

        public var nonCompliantNotification: Bool?

        public var oversizedDataOSSTargetArn: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.configurationItemChangeNotification != nil {
                map["ConfigurationItemChangeNotification"] = self.configurationItemChangeNotification!
            }
            if self.configurationSnapshot != nil {
                map["ConfigurationSnapshot"] = self.configurationSnapshot!
            }
            if self.deliveryChannelAssumeRoleArn != nil {
                map["DeliveryChannelAssumeRoleArn"] = self.deliveryChannelAssumeRoleArn!
            }
            if self.deliveryChannelCondition != nil {
                map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
            }
            if self.deliveryChannelId != nil {
                map["DeliveryChannelId"] = self.deliveryChannelId!
            }
            if self.deliveryChannelName != nil {
                map["DeliveryChannelName"] = self.deliveryChannelName!
            }
            if self.deliveryChannelTargetArn != nil {
                map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
            }
            if self.deliveryChannelType != nil {
                map["DeliveryChannelType"] = self.deliveryChannelType!
            }
            if self.deliverySnapshotTime != nil {
                map["DeliverySnapshotTime"] = self.deliverySnapshotTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.nonCompliantNotification != nil {
                map["NonCompliantNotification"] = self.nonCompliantNotification!
            }
            if self.oversizedDataOSSTargetArn != nil {
                map["OversizedDataOSSTargetArn"] = self.oversizedDataOSSTargetArn!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("ConfigurationItemChangeNotification") {
                self.configurationItemChangeNotification = dict["ConfigurationItemChangeNotification"] as! Bool
            }
            if dict.keys.contains("ConfigurationSnapshot") {
                self.configurationSnapshot = dict["ConfigurationSnapshot"] as! Bool
            }
            if dict.keys.contains("DeliveryChannelAssumeRoleArn") {
                self.deliveryChannelAssumeRoleArn = dict["DeliveryChannelAssumeRoleArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelCondition") {
                self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
            }
            if dict.keys.contains("DeliveryChannelId") {
                self.deliveryChannelId = dict["DeliveryChannelId"] as! String
            }
            if dict.keys.contains("DeliveryChannelName") {
                self.deliveryChannelName = dict["DeliveryChannelName"] as! String
            }
            if dict.keys.contains("DeliveryChannelTargetArn") {
                self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelType") {
                self.deliveryChannelType = dict["DeliveryChannelType"] as! String
            }
            if dict.keys.contains("DeliverySnapshotTime") {
                self.deliverySnapshotTime = dict["DeliverySnapshotTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("NonCompliantNotification") {
                self.nonCompliantNotification = dict["NonCompliantNotification"] as! Bool
            }
            if dict.keys.contains("OversizedDataOSSTargetArn") {
                self.oversizedDataOSSTargetArn = dict["OversizedDataOSSTargetArn"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var deliveryChannel: GetConfigDeliveryChannelResponseBody.DeliveryChannel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryChannel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannel != nil {
            map["DeliveryChannel"] = self.deliveryChannel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannel") {
            var model = GetConfigDeliveryChannelResponseBody.DeliveryChannel()
            model.fromMap(dict["DeliveryChannel"] as! [String: Any])
            self.deliveryChannel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetConfigDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConfigDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConfigDeliveryChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConfigRuleRequest : Tea.TeaModel {
    public var configRuleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
    }
}

public class GetConfigRuleResponseBody : Tea.TeaModel {
    public class ConfigRule : Tea.TeaModel {
        public class Compliance : Tea.TeaModel {
            public var complianceType: String?

            public var count: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
            }
        }
        public class ConfigRuleEvaluationStatus : Tea.TeaModel {
            public var firstActivatedTimestamp: Int64?

            public var firstEvaluationStarted: Bool?

            public var lastErrorCode: String?

            public var lastErrorMessage: String?

            public var lastFailedEvaluationTimestamp: Int64?

            public var lastFailedInvocationTimestamp: Int64?

            public var lastSuccessfulEvaluationTimestamp: Int64?

            public var lastSuccessfulInvocationTimestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.firstActivatedTimestamp != nil {
                    map["FirstActivatedTimestamp"] = self.firstActivatedTimestamp!
                }
                if self.firstEvaluationStarted != nil {
                    map["FirstEvaluationStarted"] = self.firstEvaluationStarted!
                }
                if self.lastErrorCode != nil {
                    map["LastErrorCode"] = self.lastErrorCode!
                }
                if self.lastErrorMessage != nil {
                    map["LastErrorMessage"] = self.lastErrorMessage!
                }
                if self.lastFailedEvaluationTimestamp != nil {
                    map["LastFailedEvaluationTimestamp"] = self.lastFailedEvaluationTimestamp!
                }
                if self.lastFailedInvocationTimestamp != nil {
                    map["LastFailedInvocationTimestamp"] = self.lastFailedInvocationTimestamp!
                }
                if self.lastSuccessfulEvaluationTimestamp != nil {
                    map["LastSuccessfulEvaluationTimestamp"] = self.lastSuccessfulEvaluationTimestamp!
                }
                if self.lastSuccessfulInvocationTimestamp != nil {
                    map["LastSuccessfulInvocationTimestamp"] = self.lastSuccessfulInvocationTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FirstActivatedTimestamp") {
                    self.firstActivatedTimestamp = dict["FirstActivatedTimestamp"] as! Int64
                }
                if dict.keys.contains("FirstEvaluationStarted") {
                    self.firstEvaluationStarted = dict["FirstEvaluationStarted"] as! Bool
                }
                if dict.keys.contains("LastErrorCode") {
                    self.lastErrorCode = dict["LastErrorCode"] as! String
                }
                if dict.keys.contains("LastErrorMessage") {
                    self.lastErrorMessage = dict["LastErrorMessage"] as! String
                }
                if dict.keys.contains("LastFailedEvaluationTimestamp") {
                    self.lastFailedEvaluationTimestamp = dict["LastFailedEvaluationTimestamp"] as! Int64
                }
                if dict.keys.contains("LastFailedInvocationTimestamp") {
                    self.lastFailedInvocationTimestamp = dict["LastFailedInvocationTimestamp"] as! Int64
                }
                if dict.keys.contains("LastSuccessfulEvaluationTimestamp") {
                    self.lastSuccessfulEvaluationTimestamp = dict["LastSuccessfulEvaluationTimestamp"] as! Int64
                }
                if dict.keys.contains("LastSuccessfulInvocationTimestamp") {
                    self.lastSuccessfulInvocationTimestamp = dict["LastSuccessfulInvocationTimestamp"] as! Int64
                }
            }
        }
        public class CreateBy : Tea.TeaModel {
            public var compliancePackId: String?

            public var compliancePackName: String?

            public var creatorId: String?

            public var creatorName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compliancePackId != nil {
                    map["CompliancePackId"] = self.compliancePackId!
                }
                if self.compliancePackName != nil {
                    map["CompliancePackName"] = self.compliancePackName!
                }
                if self.creatorId != nil {
                    map["CreatorId"] = self.creatorId!
                }
                if self.creatorName != nil {
                    map["CreatorName"] = self.creatorName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompliancePackId") {
                    self.compliancePackId = dict["CompliancePackId"] as! String
                }
                if dict.keys.contains("CompliancePackName") {
                    self.compliancePackName = dict["CompliancePackName"] as! String
                }
                if dict.keys.contains("CreatorId") {
                    self.creatorId = dict["CreatorId"] as! String
                }
                if dict.keys.contains("CreatorName") {
                    self.creatorName = dict["CreatorName"] as! String
                }
            }
        }
        public class ManagedRule : Tea.TeaModel {
            public class SourceDetails : Tea.TeaModel {
                public var eventSource: String?

                public var maximumExecutionFrequency: String?

                public var messageType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.eventSource != nil {
                        map["EventSource"] = self.eventSource!
                    }
                    if self.maximumExecutionFrequency != nil {
                        map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
                    }
                    if self.messageType != nil {
                        map["MessageType"] = self.messageType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventSource") {
                        self.eventSource = dict["EventSource"] as! String
                    }
                    if dict.keys.contains("MaximumExecutionFrequency") {
                        self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
                    }
                    if dict.keys.contains("MessageType") {
                        self.messageType = dict["MessageType"] as! String
                    }
                }
            }
            public var compulsoryInputParameterDetails: [String: Any]?

            public var description_: String?

            public var identifier: String?

            public var labels: [String]?

            public var managedRuleName: String?

            public var optionalInputParameterDetails: [String: Any]?

            public var sourceDetails: [GetConfigRuleResponseBody.ConfigRule.ManagedRule.SourceDetails]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compulsoryInputParameterDetails != nil {
                    map["CompulsoryInputParameterDetails"] = self.compulsoryInputParameterDetails!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.identifier != nil {
                    map["Identifier"] = self.identifier!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.managedRuleName != nil {
                    map["ManagedRuleName"] = self.managedRuleName!
                }
                if self.optionalInputParameterDetails != nil {
                    map["OptionalInputParameterDetails"] = self.optionalInputParameterDetails!
                }
                if self.sourceDetails != nil {
                    var tmp : [Any] = []
                    for k in self.sourceDetails! {
                        tmp.append(k.toMap())
                    }
                    map["SourceDetails"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompulsoryInputParameterDetails") {
                    self.compulsoryInputParameterDetails = dict["CompulsoryInputParameterDetails"] as! [String: Any]
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Identifier") {
                    self.identifier = dict["Identifier"] as! String
                }
                if dict.keys.contains("Labels") {
                    self.labels = dict["Labels"] as! [String]
                }
                if dict.keys.contains("ManagedRuleName") {
                    self.managedRuleName = dict["ManagedRuleName"] as! String
                }
                if dict.keys.contains("OptionalInputParameterDetails") {
                    self.optionalInputParameterDetails = dict["OptionalInputParameterDetails"] as! [String: Any]
                }
                if dict.keys.contains("SourceDetails") {
                    self.sourceDetails = dict["SourceDetails"] as! [GetConfigRuleResponseBody.ConfigRule.ManagedRule.SourceDetails]
                }
            }
        }
        public class Source : Tea.TeaModel {
            public class SourceDetails : Tea.TeaModel {
                public var eventSource: String?

                public var maximumExecutionFrequency: String?

                public var messageType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.eventSource != nil {
                        map["EventSource"] = self.eventSource!
                    }
                    if self.maximumExecutionFrequency != nil {
                        map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
                    }
                    if self.messageType != nil {
                        map["MessageType"] = self.messageType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventSource") {
                        self.eventSource = dict["EventSource"] as! String
                    }
                    if dict.keys.contains("MaximumExecutionFrequency") {
                        self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
                    }
                    if dict.keys.contains("MessageType") {
                        self.messageType = dict["MessageType"] as! String
                    }
                }
            }
            public var identifier: String?

            public var owner: String?

            public var sourceDetails: [GetConfigRuleResponseBody.ConfigRule.Source.SourceDetails]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.identifier != nil {
                    map["Identifier"] = self.identifier!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.sourceDetails != nil {
                    var tmp : [Any] = []
                    for k in self.sourceDetails! {
                        tmp.append(k.toMap())
                    }
                    map["SourceDetails"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Identifier") {
                    self.identifier = dict["Identifier"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("SourceDetails") {
                    self.sourceDetails = dict["SourceDetails"] as! [GetConfigRuleResponseBody.ConfigRule.Source.SourceDetails]
                }
            }
        }
        public var accountId: Int64?

        public var compliance: GetConfigRuleResponseBody.ConfigRule.Compliance?

        public var configRuleArn: String?

        public var configRuleEvaluationStatus: GetConfigRuleResponseBody.ConfigRule.ConfigRuleEvaluationStatus?

        public var configRuleId: String?

        public var configRuleName: String?

        public var configRuleState: String?

        public var configRuleTriggerTypes: String?

        public var createBy: GetConfigRuleResponseBody.ConfigRule.CreateBy?

        public var createTimestamp: Int64?

        public var description_: String?

        public var excludeResourceIdsScope: String?

        public var inputParameters: [String: Any]?

        public var managedRule: GetConfigRuleResponseBody.ConfigRule.ManagedRule?

        public var maximumExecutionFrequency: String?

        public var modifiedTimestamp: Int64?

        public var regionIdsScope: String?

        public var resourceGroupIdsScope: String?

        public var resourceTypesScope: String?

        public var riskLevel: Int32?

        public var source: GetConfigRuleResponseBody.ConfigRule.Source?

        public var tagKeyLogicScope: String?

        public var tagKeyScope: String?

        public var tagValueScope: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.compliance?.validate()
            try self.configRuleEvaluationStatus?.validate()
            try self.createBy?.validate()
            try self.managedRule?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.compliance != nil {
                map["Compliance"] = self.compliance?.toMap()
            }
            if self.configRuleArn != nil {
                map["ConfigRuleArn"] = self.configRuleArn!
            }
            if self.configRuleEvaluationStatus != nil {
                map["ConfigRuleEvaluationStatus"] = self.configRuleEvaluationStatus?.toMap()
            }
            if self.configRuleId != nil {
                map["ConfigRuleId"] = self.configRuleId!
            }
            if self.configRuleName != nil {
                map["ConfigRuleName"] = self.configRuleName!
            }
            if self.configRuleState != nil {
                map["ConfigRuleState"] = self.configRuleState!
            }
            if self.configRuleTriggerTypes != nil {
                map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
            }
            if self.createBy != nil {
                map["CreateBy"] = self.createBy?.toMap()
            }
            if self.createTimestamp != nil {
                map["CreateTimestamp"] = self.createTimestamp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.excludeResourceIdsScope != nil {
                map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
            }
            if self.inputParameters != nil {
                map["InputParameters"] = self.inputParameters!
            }
            if self.managedRule != nil {
                map["ManagedRule"] = self.managedRule?.toMap()
            }
            if self.maximumExecutionFrequency != nil {
                map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
            }
            if self.modifiedTimestamp != nil {
                map["ModifiedTimestamp"] = self.modifiedTimestamp!
            }
            if self.regionIdsScope != nil {
                map["RegionIdsScope"] = self.regionIdsScope!
            }
            if self.resourceGroupIdsScope != nil {
                map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
            }
            if self.resourceTypesScope != nil {
                map["ResourceTypesScope"] = self.resourceTypesScope!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            if self.tagKeyLogicScope != nil {
                map["TagKeyLogicScope"] = self.tagKeyLogicScope!
            }
            if self.tagKeyScope != nil {
                map["TagKeyScope"] = self.tagKeyScope!
            }
            if self.tagValueScope != nil {
                map["TagValueScope"] = self.tagValueScope!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("Compliance") {
                var model = GetConfigRuleResponseBody.ConfigRule.Compliance()
                model.fromMap(dict["Compliance"] as! [String: Any])
                self.compliance = model
            }
            if dict.keys.contains("ConfigRuleArn") {
                self.configRuleArn = dict["ConfigRuleArn"] as! String
            }
            if dict.keys.contains("ConfigRuleEvaluationStatus") {
                var model = GetConfigRuleResponseBody.ConfigRule.ConfigRuleEvaluationStatus()
                model.fromMap(dict["ConfigRuleEvaluationStatus"] as! [String: Any])
                self.configRuleEvaluationStatus = model
            }
            if dict.keys.contains("ConfigRuleId") {
                self.configRuleId = dict["ConfigRuleId"] as! String
            }
            if dict.keys.contains("ConfigRuleName") {
                self.configRuleName = dict["ConfigRuleName"] as! String
            }
            if dict.keys.contains("ConfigRuleState") {
                self.configRuleState = dict["ConfigRuleState"] as! String
            }
            if dict.keys.contains("ConfigRuleTriggerTypes") {
                self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
            }
            if dict.keys.contains("CreateBy") {
                var model = GetConfigRuleResponseBody.ConfigRule.CreateBy()
                model.fromMap(dict["CreateBy"] as! [String: Any])
                self.createBy = model
            }
            if dict.keys.contains("CreateTimestamp") {
                self.createTimestamp = dict["CreateTimestamp"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExcludeResourceIdsScope") {
                self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
            }
            if dict.keys.contains("InputParameters") {
                self.inputParameters = dict["InputParameters"] as! [String: Any]
            }
            if dict.keys.contains("ManagedRule") {
                var model = GetConfigRuleResponseBody.ConfigRule.ManagedRule()
                model.fromMap(dict["ManagedRule"] as! [String: Any])
                self.managedRule = model
            }
            if dict.keys.contains("MaximumExecutionFrequency") {
                self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
            }
            if dict.keys.contains("ModifiedTimestamp") {
                self.modifiedTimestamp = dict["ModifiedTimestamp"] as! Int64
            }
            if dict.keys.contains("RegionIdsScope") {
                self.regionIdsScope = dict["RegionIdsScope"] as! String
            }
            if dict.keys.contains("ResourceGroupIdsScope") {
                self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
            }
            if dict.keys.contains("ResourceTypesScope") {
                self.resourceTypesScope = dict["ResourceTypesScope"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
            if dict.keys.contains("Source") {
                var model = GetConfigRuleResponseBody.ConfigRule.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
            if dict.keys.contains("TagKeyLogicScope") {
                self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
            }
            if dict.keys.contains("TagKeyScope") {
                self.tagKeyScope = dict["TagKeyScope"] as! String
            }
            if dict.keys.contains("TagValueScope") {
                self.tagValueScope = dict["TagValueScope"] as! String
            }
        }
    }
    public var configRule: GetConfigRuleResponseBody.ConfigRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRule != nil {
            map["ConfigRule"] = self.configRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRule") {
            var model = GetConfigRuleResponseBody.ConfigRule()
            model.fromMap(dict["ConfigRule"] as! [String: Any])
            self.configRule = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConfigRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConfigRuleComplianceByPackRequest : Tea.TeaModel {
    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GetConfigRuleComplianceByPackResponseBody : Tea.TeaModel {
    public class ConfigRuleComplianceResult : Tea.TeaModel {
        public class ConfigRuleCompliances : Tea.TeaModel {
            public var complianceType: String?

            public var configRuleId: String?

            public var configRuleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.configRuleName != nil {
                    map["ConfigRuleName"] = self.configRuleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ConfigRuleName") {
                    self.configRuleName = dict["ConfigRuleName"] as! String
                }
            }
        }
        public var compliancePackId: String?

        public var configRuleCompliances: [GetConfigRuleComplianceByPackResponseBody.ConfigRuleComplianceResult.ConfigRuleCompliances]?

        public var nonCompliantCount: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePackId != nil {
                map["CompliancePackId"] = self.compliancePackId!
            }
            if self.configRuleCompliances != nil {
                var tmp : [Any] = []
                for k in self.configRuleCompliances! {
                    tmp.append(k.toMap())
                }
                map["ConfigRuleCompliances"] = tmp
            }
            if self.nonCompliantCount != nil {
                map["NonCompliantCount"] = self.nonCompliantCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliancePackId") {
                self.compliancePackId = dict["CompliancePackId"] as! String
            }
            if dict.keys.contains("ConfigRuleCompliances") {
                self.configRuleCompliances = dict["ConfigRuleCompliances"] as! [GetConfigRuleComplianceByPackResponseBody.ConfigRuleComplianceResult.ConfigRuleCompliances]
            }
            if dict.keys.contains("NonCompliantCount") {
                self.nonCompliantCount = dict["NonCompliantCount"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var configRuleComplianceResult: GetConfigRuleComplianceByPackResponseBody.ConfigRuleComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configRuleComplianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleComplianceResult != nil {
            map["ConfigRuleComplianceResult"] = self.configRuleComplianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleComplianceResult") {
            var model = GetConfigRuleComplianceByPackResponseBody.ConfigRuleComplianceResult()
            model.fromMap(dict["ConfigRuleComplianceResult"] as! [String: Any])
            self.configRuleComplianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetConfigRuleComplianceByPackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConfigRuleComplianceByPackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConfigRuleComplianceByPackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConfigRuleSummaryByRiskLevelResponseBody : Tea.TeaModel {
    public class ConfigRuleSummaries : Tea.TeaModel {
        public var compliantCount: Int32?

        public var nonCompliantCount: Int32?

        public var riskLevel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliantCount != nil {
                map["CompliantCount"] = self.compliantCount!
            }
            if self.nonCompliantCount != nil {
                map["NonCompliantCount"] = self.nonCompliantCount!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliantCount") {
                self.compliantCount = dict["CompliantCount"] as! Int32
            }
            if dict.keys.contains("NonCompliantCount") {
                self.nonCompliantCount = dict["NonCompliantCount"] as! Int32
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
        }
    }
    public var configRuleSummaries: [GetConfigRuleSummaryByRiskLevelResponseBody.ConfigRuleSummaries]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleSummaries != nil {
            var tmp : [Any] = []
            for k in self.configRuleSummaries! {
                tmp.append(k.toMap())
            }
            map["ConfigRuleSummaries"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleSummaries") {
            self.configRuleSummaries = dict["ConfigRuleSummaries"] as! [GetConfigRuleSummaryByRiskLevelResponseBody.ConfigRuleSummaries]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetConfigRuleSummaryByRiskLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConfigRuleSummaryByRiskLevelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConfigRuleSummaryByRiskLevelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConfigRulesReportRequest : Tea.TeaModel {
    public var reportId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
    }
}

public class GetConfigRulesReportResponseBody : Tea.TeaModel {
    public class ConfigRulesReport : Tea.TeaModel {
        public var accountId: Int64?

        public var reportCreateTimestamp: Int64?

        public var reportId: String?

        public var reportStatus: String?

        public var reportUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.reportCreateTimestamp != nil {
                map["ReportCreateTimestamp"] = self.reportCreateTimestamp!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.reportStatus != nil {
                map["ReportStatus"] = self.reportStatus!
            }
            if self.reportUrl != nil {
                map["ReportUrl"] = self.reportUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("ReportCreateTimestamp") {
                self.reportCreateTimestamp = dict["ReportCreateTimestamp"] as! Int64
            }
            if dict.keys.contains("ReportId") {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ReportStatus") {
                self.reportStatus = dict["ReportStatus"] as! String
            }
            if dict.keys.contains("ReportUrl") {
                self.reportUrl = dict["ReportUrl"] as! String
            }
        }
    }
    public var configRulesReport: GetConfigRulesReportResponseBody.ConfigRulesReport?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configRulesReport?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRulesReport != nil {
            map["ConfigRulesReport"] = self.configRulesReport?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRulesReport") {
            var model = GetConfigRulesReportResponseBody.ConfigRulesReport()
            model.fromMap(dict["ConfigRulesReport"] as! [String: Any])
            self.configRulesReport = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetConfigRulesReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConfigRulesReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConfigRulesReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiscoveredResourceRequest : Tea.TeaModel {
    public var region: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class GetDiscoveredResourceResponseBody : Tea.TeaModel {
    public class DiscoveredResourceDetail : Tea.TeaModel {
        public var accountId: Int64?

        public var availabilityZone: String?

        public var configuration: String?

        public var region: String?

        public var resourceCreationTime: Int64?

        public var resourceDeleted: Int32?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceStatus: String?

        public var resourceType: String?

        public var tags: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.availabilityZone != nil {
                map["AvailabilityZone"] = self.availabilityZone!
            }
            if self.configuration != nil {
                map["Configuration"] = self.configuration!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceCreationTime != nil {
                map["ResourceCreationTime"] = self.resourceCreationTime!
            }
            if self.resourceDeleted != nil {
                map["ResourceDeleted"] = self.resourceDeleted!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AvailabilityZone") {
                self.availabilityZone = dict["AvailabilityZone"] as! String
            }
            if dict.keys.contains("Configuration") {
                self.configuration = dict["Configuration"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceCreationTime") {
                self.resourceCreationTime = dict["ResourceCreationTime"] as! Int64
            }
            if dict.keys.contains("ResourceDeleted") {
                self.resourceDeleted = dict["ResourceDeleted"] as! Int32
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceStatus") {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
        }
    }
    public var discoveredResourceDetail: GetDiscoveredResourceResponseBody.DiscoveredResourceDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.discoveredResourceDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceDetail != nil {
            map["DiscoveredResourceDetail"] = self.discoveredResourceDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceDetail") {
            var model = GetDiscoveredResourceResponseBody.DiscoveredResourceDetail()
            model.fromMap(dict["DiscoveredResourceDetail"] as! [String: Any])
            self.discoveredResourceDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDiscoveredResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiscoveredResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDiscoveredResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiscoveredResourceCountsGroupByRegionRequest : Tea.TeaModel {
    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class GetDiscoveredResourceCountsGroupByRegionResponseBody : Tea.TeaModel {
    public class DiscoveredResourceCountsSummary : Tea.TeaModel {
        public var region: String?

        public var resourceCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceCount != nil {
                map["ResourceCount"] = self.resourceCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceCount") {
                self.resourceCount = dict["ResourceCount"] as! Int64
            }
        }
    }
    public var discoveredResourceCountsSummary: [GetDiscoveredResourceCountsGroupByRegionResponseBody.DiscoveredResourceCountsSummary]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceCountsSummary != nil {
            var tmp : [Any] = []
            for k in self.discoveredResourceCountsSummary! {
                tmp.append(k.toMap())
            }
            map["DiscoveredResourceCountsSummary"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceCountsSummary") {
            self.discoveredResourceCountsSummary = dict["DiscoveredResourceCountsSummary"] as! [GetDiscoveredResourceCountsGroupByRegionResponseBody.DiscoveredResourceCountsSummary]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDiscoveredResourceCountsGroupByRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiscoveredResourceCountsGroupByRegionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDiscoveredResourceCountsGroupByRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiscoveredResourceCountsGroupByResourceTypeRequest : Tea.TeaModel {
    public var region: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
    }
}

public class GetDiscoveredResourceCountsGroupByResourceTypeResponseBody : Tea.TeaModel {
    public class DiscoveredResourceCountsSummary : Tea.TeaModel {
        public var resourceCount: Int64?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceCount != nil {
                map["ResourceCount"] = self.resourceCount!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceCount") {
                self.resourceCount = dict["ResourceCount"] as! Int64
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var discoveredResourceCountsSummary: [GetDiscoveredResourceCountsGroupByResourceTypeResponseBody.DiscoveredResourceCountsSummary]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceCountsSummary != nil {
            var tmp : [Any] = []
            for k in self.discoveredResourceCountsSummary! {
                tmp.append(k.toMap())
            }
            map["DiscoveredResourceCountsSummary"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceCountsSummary") {
            self.discoveredResourceCountsSummary = dict["DiscoveredResourceCountsSummary"] as! [GetDiscoveredResourceCountsGroupByResourceTypeResponseBody.DiscoveredResourceCountsSummary]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDiscoveredResourceCountsGroupByResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiscoveredResourceCountsGroupByResourceTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDiscoveredResourceCountsGroupByResourceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetManagedRuleRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
    }
}

public class GetManagedRuleResponseBody : Tea.TeaModel {
    public class ManagedRule : Tea.TeaModel {
        public class Scope : Tea.TeaModel {
            public var complianceResourceTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.complianceResourceTypes != nil {
                    map["ComplianceResourceTypes"] = self.complianceResourceTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceResourceTypes") {
                    self.complianceResourceTypes = dict["ComplianceResourceTypes"] as! [String]
                }
            }
        }
        public class SourceDetails : Tea.TeaModel {
            public var maximumExecutionFrequency: String?

            public var messageType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maximumExecutionFrequency != nil {
                    map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
                }
                if self.messageType != nil {
                    map["MessageType"] = self.messageType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MaximumExecutionFrequency") {
                    self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
                }
                if dict.keys.contains("MessageType") {
                    self.messageType = dict["MessageType"] as! String
                }
            }
        }
        public var compulsoryInputParameterDetails: [String: Any]?

        public var configRuleName: String?

        public var description_: String?

        public var helpUrls: String?

        public var identifier: String?

        public var labels: [String]?

        public var optionalInputParameterDetails: [String: Any]?

        public var riskLevel: Int32?

        public var scope: GetManagedRuleResponseBody.ManagedRule.Scope?

        public var sourceDetails: [GetManagedRuleResponseBody.ManagedRule.SourceDetails]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.scope?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compulsoryInputParameterDetails != nil {
                map["CompulsoryInputParameterDetails"] = self.compulsoryInputParameterDetails!
            }
            if self.configRuleName != nil {
                map["ConfigRuleName"] = self.configRuleName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.helpUrls != nil {
                map["HelpUrls"] = self.helpUrls!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.optionalInputParameterDetails != nil {
                map["OptionalInputParameterDetails"] = self.optionalInputParameterDetails!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.scope != nil {
                map["Scope"] = self.scope?.toMap()
            }
            if self.sourceDetails != nil {
                var tmp : [Any] = []
                for k in self.sourceDetails! {
                    tmp.append(k.toMap())
                }
                map["SourceDetails"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompulsoryInputParameterDetails") {
                self.compulsoryInputParameterDetails = dict["CompulsoryInputParameterDetails"] as! [String: Any]
            }
            if dict.keys.contains("ConfigRuleName") {
                self.configRuleName = dict["ConfigRuleName"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HelpUrls") {
                self.helpUrls = dict["HelpUrls"] as! String
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String]
            }
            if dict.keys.contains("OptionalInputParameterDetails") {
                self.optionalInputParameterDetails = dict["OptionalInputParameterDetails"] as! [String: Any]
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
            if dict.keys.contains("Scope") {
                var model = GetManagedRuleResponseBody.ManagedRule.Scope()
                model.fromMap(dict["Scope"] as! [String: Any])
                self.scope = model
            }
            if dict.keys.contains("SourceDetails") {
                self.sourceDetails = dict["SourceDetails"] as! [GetManagedRuleResponseBody.ManagedRule.SourceDetails]
            }
        }
    }
    public var managedRule: GetManagedRuleResponseBody.ManagedRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.managedRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.managedRule != nil {
            map["ManagedRule"] = self.managedRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ManagedRule") {
            var model = GetManagedRuleResponseBody.ManagedRule()
            model.fromMap(dict["ManagedRule"] as! [String: Any])
            self.managedRule = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetManagedRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetManagedRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetManagedRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceComplianceByConfigRuleRequest : Tea.TeaModel {
    public var complianceType: String?

    public var configRuleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
    }
}

public class GetResourceComplianceByConfigRuleResponseBody : Tea.TeaModel {
    public class ComplianceResult : Tea.TeaModel {
        public class Compliances : Tea.TeaModel {
            public var complianceType: String?

            public var count: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
            }
        }
        public var compliances: [GetResourceComplianceByConfigRuleResponseBody.ComplianceResult.Compliances]?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliances != nil {
                var tmp : [Any] = []
                for k in self.compliances! {
                    tmp.append(k.toMap())
                }
                map["Compliances"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Compliances") {
                self.compliances = dict["Compliances"] as! [GetResourceComplianceByConfigRuleResponseBody.ComplianceResult.Compliances]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var complianceResult: GetResourceComplianceByConfigRuleResponseBody.ComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.complianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceResult != nil {
            map["ComplianceResult"] = self.complianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceResult") {
            var model = GetResourceComplianceByConfigRuleResponseBody.ComplianceResult()
            model.fromMap(dict["ComplianceResult"] as! [String: Any])
            self.complianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetResourceComplianceByConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceComplianceByConfigRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceComplianceByConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceComplianceByPackRequest : Tea.TeaModel {
    public var compliancePackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
    }
}

public class GetResourceComplianceByPackResponseBody : Tea.TeaModel {
    public class ResourceComplianceResult : Tea.TeaModel {
        public var compliancePackId: String?

        public var nonCompliantCount: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePackId != nil {
                map["CompliancePackId"] = self.compliancePackId!
            }
            if self.nonCompliantCount != nil {
                map["NonCompliantCount"] = self.nonCompliantCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliancePackId") {
                self.compliancePackId = dict["CompliancePackId"] as! String
            }
            if dict.keys.contains("NonCompliantCount") {
                self.nonCompliantCount = dict["NonCompliantCount"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var resourceComplianceResult: GetResourceComplianceByPackResponseBody.ResourceComplianceResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceComplianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceComplianceResult != nil {
            map["ResourceComplianceResult"] = self.resourceComplianceResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceComplianceResult") {
            var model = GetResourceComplianceByPackResponseBody.ResourceComplianceResult()
            model.fromMap(dict["ResourceComplianceResult"] as! [String: Any])
            self.resourceComplianceResult = model
        }
    }
}

public class GetResourceComplianceByPackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceComplianceByPackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceComplianceByPackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceComplianceGroupByRegionRequest : Tea.TeaModel {
    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class GetResourceComplianceGroupByRegionResponseBody : Tea.TeaModel {
    public class ComplianceResult : Tea.TeaModel {
        public class ComplianceResultList : Tea.TeaModel {
            public class Compliances : Tea.TeaModel {
                public var complianceType: String?

                public var count: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.complianceType != nil {
                        map["ComplianceType"] = self.complianceType!
                    }
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComplianceType") {
                        self.complianceType = dict["ComplianceType"] as! String
                    }
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int64
                    }
                }
            }
            public var compliances: [GetResourceComplianceGroupByRegionResponseBody.ComplianceResult.ComplianceResultList.Compliances]?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compliances != nil {
                    var tmp : [Any] = []
                    for k in self.compliances! {
                        tmp.append(k.toMap())
                    }
                    map["Compliances"] = tmp
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Compliances") {
                    self.compliances = dict["Compliances"] as! [GetResourceComplianceGroupByRegionResponseBody.ComplianceResult.ComplianceResultList.Compliances]
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var complianceResultList: [GetResourceComplianceGroupByRegionResponseBody.ComplianceResult.ComplianceResultList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.complianceResultList != nil {
                var tmp : [Any] = []
                for k in self.complianceResultList! {
                    tmp.append(k.toMap())
                }
                map["ComplianceResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComplianceResultList") {
                self.complianceResultList = dict["ComplianceResultList"] as! [GetResourceComplianceGroupByRegionResponseBody.ComplianceResult.ComplianceResultList]
            }
        }
    }
    public var complianceResult: GetResourceComplianceGroupByRegionResponseBody.ComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.complianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceResult != nil {
            map["ComplianceResult"] = self.complianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceResult") {
            var model = GetResourceComplianceGroupByRegionResponseBody.ComplianceResult()
            model.fromMap(dict["ComplianceResult"] as! [String: Any])
            self.complianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetResourceComplianceGroupByRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceComplianceGroupByRegionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceComplianceGroupByRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceComplianceGroupByResourceTypeRequest : Tea.TeaModel {
    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class GetResourceComplianceGroupByResourceTypeResponseBody : Tea.TeaModel {
    public class ComplianceResult : Tea.TeaModel {
        public class ComplianceResultList : Tea.TeaModel {
            public class Compliances : Tea.TeaModel {
                public var complianceType: String?

                public var count: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.complianceType != nil {
                        map["ComplianceType"] = self.complianceType!
                    }
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComplianceType") {
                        self.complianceType = dict["ComplianceType"] as! String
                    }
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int64
                    }
                }
            }
            public var compliances: [GetResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult.ComplianceResultList.Compliances]?

            public var resourceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compliances != nil {
                    var tmp : [Any] = []
                    for k in self.compliances! {
                        tmp.append(k.toMap())
                    }
                    map["Compliances"] = tmp
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Compliances") {
                    self.compliances = dict["Compliances"] as! [GetResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult.ComplianceResultList.Compliances]
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public var complianceResultList: [GetResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult.ComplianceResultList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.complianceResultList != nil {
                var tmp : [Any] = []
                for k in self.complianceResultList! {
                    tmp.append(k.toMap())
                }
                map["ComplianceResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComplianceResultList") {
                self.complianceResultList = dict["ComplianceResultList"] as! [GetResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult.ComplianceResultList]
            }
        }
    }
    public var complianceResult: GetResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.complianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceResult != nil {
            map["ComplianceResult"] = self.complianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceResult") {
            var model = GetResourceComplianceGroupByResourceTypeResponseBody.ComplianceResult()
            model.fromMap(dict["ComplianceResult"] as! [String: Any])
            self.complianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetResourceComplianceGroupByResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceComplianceGroupByResourceTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceComplianceGroupByResourceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceComplianceTimelineRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var resourceId: String?

    public var resourceType: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetResourceComplianceTimelineResponseBody : Tea.TeaModel {
    public class ResourceComplianceTimeline : Tea.TeaModel {
        public class ComplianceList : Tea.TeaModel {
            public var accountId: String?

            public var availabilityZone: String?

            public var captureTime: Int64?

            public var configuration: String?

            public var configurationDiff: String?

            public var region: String?

            public var resourceCreateTime: Int64?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceStatus: String?

            public var resourceType: String?

            public var tags: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.availabilityZone != nil {
                    map["AvailabilityZone"] = self.availabilityZone!
                }
                if self.captureTime != nil {
                    map["CaptureTime"] = self.captureTime!
                }
                if self.configuration != nil {
                    map["Configuration"] = self.configuration!
                }
                if self.configurationDiff != nil {
                    map["ConfigurationDiff"] = self.configurationDiff!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceCreateTime != nil {
                    map["ResourceCreateTime"] = self.resourceCreateTime!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceStatus != nil {
                    map["ResourceStatus"] = self.resourceStatus!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AvailabilityZone") {
                    self.availabilityZone = dict["AvailabilityZone"] as! String
                }
                if dict.keys.contains("CaptureTime") {
                    self.captureTime = dict["CaptureTime"] as! Int64
                }
                if dict.keys.contains("Configuration") {
                    self.configuration = dict["Configuration"] as! String
                }
                if dict.keys.contains("ConfigurationDiff") {
                    self.configurationDiff = dict["ConfigurationDiff"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceCreateTime") {
                    self.resourceCreateTime = dict["ResourceCreateTime"] as! Int64
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceStatus") {
                    self.resourceStatus = dict["ResourceStatus"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public var complianceList: [GetResourceComplianceTimelineResponseBody.ResourceComplianceTimeline.ComplianceList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.complianceList != nil {
                var tmp : [Any] = []
                for k in self.complianceList! {
                    tmp.append(k.toMap())
                }
                map["ComplianceList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComplianceList") {
                self.complianceList = dict["ComplianceList"] as! [GetResourceComplianceTimelineResponseBody.ResourceComplianceTimeline.ComplianceList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceComplianceTimeline: GetResourceComplianceTimelineResponseBody.ResourceComplianceTimeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceComplianceTimeline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceComplianceTimeline != nil {
            map["ResourceComplianceTimeline"] = self.resourceComplianceTimeline?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceComplianceTimeline") {
            var model = GetResourceComplianceTimelineResponseBody.ResourceComplianceTimeline()
            model.fromMap(dict["ResourceComplianceTimeline"] as! [String: Any])
            self.resourceComplianceTimeline = model
        }
    }
}

public class GetResourceComplianceTimelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceComplianceTimelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceComplianceTimelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceConfigurationTimelineRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var resourceId: String?

    public var resourceType: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetResourceConfigurationTimelineResponseBody : Tea.TeaModel {
    public class ResourceConfigurationTimeline : Tea.TeaModel {
        public class ConfigurationList : Tea.TeaModel {
            public var accountId: Int64?

            public var availabilityZone: String?

            public var captureTime: String?

            public var configurationDiff: String?

            public var region: String?

            public var relationship: String?

            public var relationshipDiff: String?

            public var resourceCreateTime: String?

            public var resourceEventType: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var tags: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.availabilityZone != nil {
                    map["AvailabilityZone"] = self.availabilityZone!
                }
                if self.captureTime != nil {
                    map["CaptureTime"] = self.captureTime!
                }
                if self.configurationDiff != nil {
                    map["ConfigurationDiff"] = self.configurationDiff!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.relationship != nil {
                    map["Relationship"] = self.relationship!
                }
                if self.relationshipDiff != nil {
                    map["RelationshipDiff"] = self.relationshipDiff!
                }
                if self.resourceCreateTime != nil {
                    map["ResourceCreateTime"] = self.resourceCreateTime!
                }
                if self.resourceEventType != nil {
                    map["ResourceEventType"] = self.resourceEventType!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AvailabilityZone") {
                    self.availabilityZone = dict["AvailabilityZone"] as! String
                }
                if dict.keys.contains("CaptureTime") {
                    self.captureTime = dict["CaptureTime"] as! String
                }
                if dict.keys.contains("ConfigurationDiff") {
                    self.configurationDiff = dict["ConfigurationDiff"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("Relationship") {
                    self.relationship = dict["Relationship"] as! String
                }
                if dict.keys.contains("RelationshipDiff") {
                    self.relationshipDiff = dict["RelationshipDiff"] as! String
                }
                if dict.keys.contains("ResourceCreateTime") {
                    self.resourceCreateTime = dict["ResourceCreateTime"] as! String
                }
                if dict.keys.contains("ResourceEventType") {
                    self.resourceEventType = dict["ResourceEventType"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public var configurationList: [GetResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline.ConfigurationList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configurationList != nil {
                var tmp : [Any] = []
                for k in self.configurationList! {
                    tmp.append(k.toMap())
                }
                map["ConfigurationList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigurationList") {
                self.configurationList = dict["ConfigurationList"] as! [GetResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline.ConfigurationList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceConfigurationTimeline: GetResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceConfigurationTimeline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceConfigurationTimeline != nil {
            map["ResourceConfigurationTimeline"] = self.resourceConfigurationTimeline?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceConfigurationTimeline") {
            var model = GetResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline()
            model.fromMap(dict["ResourceConfigurationTimeline"] as! [String: Any])
            self.resourceConfigurationTimeline = model
        }
    }
}

public class GetResourceConfigurationTimelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceConfigurationTimelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceConfigurationTimelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IgnoreAggregateEvaluationResultsRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var region: String?

        public var resourceAccountId: Int64?

        public var resourceId: String?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceAccountId != nil {
                map["ResourceAccountId"] = self.resourceAccountId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceAccountId") {
                self.resourceAccountId = dict["ResourceAccountId"] as! Int64
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var aggregatorId: String?

    public var configRuleId: String?

    public var ignoreDate: String?

    public var reason: String?

    public var resources: [IgnoreAggregateEvaluationResultsRequest.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.ignoreDate != nil {
            map["IgnoreDate"] = self.ignoreDate!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("IgnoreDate") {
            self.ignoreDate = dict["IgnoreDate"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [IgnoreAggregateEvaluationResultsRequest.Resources]
        }
    }
}

public class IgnoreAggregateEvaluationResultsShrinkRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleId: String?

    public var ignoreDate: String?

    public var reason: String?

    public var resourcesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.ignoreDate != nil {
            map["IgnoreDate"] = self.ignoreDate!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.resourcesShrink != nil {
            map["Resources"] = self.resourcesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("IgnoreDate") {
            self.ignoreDate = dict["IgnoreDate"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resourcesShrink = dict["Resources"] as! String
        }
    }
}

public class IgnoreAggregateEvaluationResultsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class IgnoreAggregateEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IgnoreAggregateEvaluationResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = IgnoreAggregateEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IgnoreEvaluationResultsRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var region: String?

        public var resourceAccountId: Int64?

        public var resourceId: String?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceAccountId != nil {
                map["ResourceAccountId"] = self.resourceAccountId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceAccountId") {
                self.resourceAccountId = dict["ResourceAccountId"] as! Int64
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var configRuleId: String?

    public var ignoreDate: String?

    public var reason: String?

    public var resources: [IgnoreEvaluationResultsRequest.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.ignoreDate != nil {
            map["IgnoreDate"] = self.ignoreDate!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("IgnoreDate") {
            self.ignoreDate = dict["IgnoreDate"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [IgnoreEvaluationResultsRequest.Resources]
        }
    }
}

public class IgnoreEvaluationResultsShrinkRequest : Tea.TeaModel {
    public var configRuleId: String?

    public var ignoreDate: String?

    public var reason: String?

    public var resourcesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.ignoreDate != nil {
            map["IgnoreDate"] = self.ignoreDate!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.resourcesShrink != nil {
            map["Resources"] = self.resourcesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("IgnoreDate") {
            self.ignoreDate = dict["IgnoreDate"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resourcesShrink = dict["Resources"] as! String
        }
    }
}

public class IgnoreEvaluationResultsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class IgnoreEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IgnoreEvaluationResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = IgnoreEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAggregateCompliancePacksRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListAggregateCompliancePacksResponseBody : Tea.TeaModel {
    public class CompliancePacksResult : Tea.TeaModel {
        public class CompliancePacks : Tea.TeaModel {
            public var accountId: Int64?

            public var aggregatorId: String?

            public var compliancePackId: String?

            public var compliancePackName: String?

            public var compliancePackTemplateId: String?

            public var createTimestamp: Int64?

            public var description_: String?

            public var riskLevel: Int32?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.aggregatorId != nil {
                    map["AggregatorId"] = self.aggregatorId!
                }
                if self.compliancePackId != nil {
                    map["CompliancePackId"] = self.compliancePackId!
                }
                if self.compliancePackName != nil {
                    map["CompliancePackName"] = self.compliancePackName!
                }
                if self.compliancePackTemplateId != nil {
                    map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
                }
                if self.createTimestamp != nil {
                    map["CreateTimestamp"] = self.createTimestamp!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AggregatorId") {
                    self.aggregatorId = dict["AggregatorId"] as! String
                }
                if dict.keys.contains("CompliancePackId") {
                    self.compliancePackId = dict["CompliancePackId"] as! String
                }
                if dict.keys.contains("CompliancePackName") {
                    self.compliancePackName = dict["CompliancePackName"] as! String
                }
                if dict.keys.contains("CompliancePackTemplateId") {
                    self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
                }
                if dict.keys.contains("CreateTimestamp") {
                    self.createTimestamp = dict["CreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var compliancePacks: [ListAggregateCompliancePacksResponseBody.CompliancePacksResult.CompliancePacks]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePacks != nil {
                var tmp : [Any] = []
                for k in self.compliancePacks! {
                    tmp.append(k.toMap())
                }
                map["CompliancePacks"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliancePacks") {
                self.compliancePacks = dict["CompliancePacks"] as! [ListAggregateCompliancePacksResponseBody.CompliancePacksResult.CompliancePacks]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var compliancePacksResult: ListAggregateCompliancePacksResponseBody.CompliancePacksResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.compliancePacksResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePacksResult != nil {
            map["CompliancePacksResult"] = self.compliancePacksResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePacksResult") {
            var model = ListAggregateCompliancePacksResponseBody.CompliancePacksResult()
            model.fromMap(dict["CompliancePacksResult"] as! [String: Any])
            self.compliancePacksResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAggregateCompliancePacksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAggregateCompliancePacksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAggregateCompliancePacksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAggregateConfigDeliveryChannelsRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var deliveryChannelIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.deliveryChannelIds != nil {
            map["DeliveryChannelIds"] = self.deliveryChannelIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("DeliveryChannelIds") {
            self.deliveryChannelIds = dict["DeliveryChannelIds"] as! String
        }
    }
}

public class ListAggregateConfigDeliveryChannelsResponseBody : Tea.TeaModel {
    public class DeliveryChannels : Tea.TeaModel {
        public var accountId: Int64?

        public var aggregatorId: String?

        public var configurationItemChangeNotification: Bool?

        public var configurationSnapshot: Bool?

        public var deliveryChannelAssumeRoleArn: String?

        public var deliveryChannelCondition: String?

        public var deliveryChannelId: String?

        public var deliveryChannelName: String?

        public var deliveryChannelTargetArn: String?

        public var deliveryChannelType: String?

        public var deliverySnapshotTime: String?

        public var description_: String?

        public var nonCompliantNotification: Bool?

        public var oversizedDataOSSTargetArn: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.aggregatorId != nil {
                map["AggregatorId"] = self.aggregatorId!
            }
            if self.configurationItemChangeNotification != nil {
                map["ConfigurationItemChangeNotification"] = self.configurationItemChangeNotification!
            }
            if self.configurationSnapshot != nil {
                map["ConfigurationSnapshot"] = self.configurationSnapshot!
            }
            if self.deliveryChannelAssumeRoleArn != nil {
                map["DeliveryChannelAssumeRoleArn"] = self.deliveryChannelAssumeRoleArn!
            }
            if self.deliveryChannelCondition != nil {
                map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
            }
            if self.deliveryChannelId != nil {
                map["DeliveryChannelId"] = self.deliveryChannelId!
            }
            if self.deliveryChannelName != nil {
                map["DeliveryChannelName"] = self.deliveryChannelName!
            }
            if self.deliveryChannelTargetArn != nil {
                map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
            }
            if self.deliveryChannelType != nil {
                map["DeliveryChannelType"] = self.deliveryChannelType!
            }
            if self.deliverySnapshotTime != nil {
                map["DeliverySnapshotTime"] = self.deliverySnapshotTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.nonCompliantNotification != nil {
                map["NonCompliantNotification"] = self.nonCompliantNotification!
            }
            if self.oversizedDataOSSTargetArn != nil {
                map["OversizedDataOSSTargetArn"] = self.oversizedDataOSSTargetArn!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AggregatorId") {
                self.aggregatorId = dict["AggregatorId"] as! String
            }
            if dict.keys.contains("ConfigurationItemChangeNotification") {
                self.configurationItemChangeNotification = dict["ConfigurationItemChangeNotification"] as! Bool
            }
            if dict.keys.contains("ConfigurationSnapshot") {
                self.configurationSnapshot = dict["ConfigurationSnapshot"] as! Bool
            }
            if dict.keys.contains("DeliveryChannelAssumeRoleArn") {
                self.deliveryChannelAssumeRoleArn = dict["DeliveryChannelAssumeRoleArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelCondition") {
                self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
            }
            if dict.keys.contains("DeliveryChannelId") {
                self.deliveryChannelId = dict["DeliveryChannelId"] as! String
            }
            if dict.keys.contains("DeliveryChannelName") {
                self.deliveryChannelName = dict["DeliveryChannelName"] as! String
            }
            if dict.keys.contains("DeliveryChannelTargetArn") {
                self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelType") {
                self.deliveryChannelType = dict["DeliveryChannelType"] as! String
            }
            if dict.keys.contains("DeliverySnapshotTime") {
                self.deliverySnapshotTime = dict["DeliverySnapshotTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("NonCompliantNotification") {
                self.nonCompliantNotification = dict["NonCompliantNotification"] as! Bool
            }
            if dict.keys.contains("OversizedDataOSSTargetArn") {
                self.oversizedDataOSSTargetArn = dict["OversizedDataOSSTargetArn"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var deliveryChannels: [ListAggregateConfigDeliveryChannelsResponseBody.DeliveryChannels]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannels != nil {
            var tmp : [Any] = []
            for k in self.deliveryChannels! {
                tmp.append(k.toMap())
            }
            map["DeliveryChannels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannels") {
            self.deliveryChannels = dict["DeliveryChannels"] as! [ListAggregateConfigDeliveryChannelsResponseBody.DeliveryChannels]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAggregateConfigDeliveryChannelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAggregateConfigDeliveryChannelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAggregateConfigDeliveryChannelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAggregateConfigRuleEvaluationResultsRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var compliancePackId: String?

    public var complianceType: String?

    public var configRuleId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ListAggregateConfigRuleEvaluationResultsResponseBody : Tea.TeaModel {
    public class EvaluationResults : Tea.TeaModel {
        public class EvaluationResultList : Tea.TeaModel {
            public class EvaluationResultIdentifier : Tea.TeaModel {
                public class EvaluationResultQualifier : Tea.TeaModel {
                    public var compliancePackId: String?

                    public var configRuleArn: String?

                    public var configRuleId: String?

                    public var configRuleName: String?

                    public var ignoreDate: String?

                    public var regionId: String?

                    public var resourceId: String?

                    public var resourceName: String?

                    public var resourceOwnerId: Int64?

                    public var resourceType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.compliancePackId != nil {
                            map["CompliancePackId"] = self.compliancePackId!
                        }
                        if self.configRuleArn != nil {
                            map["ConfigRuleArn"] = self.configRuleArn!
                        }
                        if self.configRuleId != nil {
                            map["ConfigRuleId"] = self.configRuleId!
                        }
                        if self.configRuleName != nil {
                            map["ConfigRuleName"] = self.configRuleName!
                        }
                        if self.ignoreDate != nil {
                            map["IgnoreDate"] = self.ignoreDate!
                        }
                        if self.regionId != nil {
                            map["RegionId"] = self.regionId!
                        }
                        if self.resourceId != nil {
                            map["ResourceId"] = self.resourceId!
                        }
                        if self.resourceName != nil {
                            map["ResourceName"] = self.resourceName!
                        }
                        if self.resourceOwnerId != nil {
                            map["ResourceOwnerId"] = self.resourceOwnerId!
                        }
                        if self.resourceType != nil {
                            map["ResourceType"] = self.resourceType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CompliancePackId") {
                            self.compliancePackId = dict["CompliancePackId"] as! String
                        }
                        if dict.keys.contains("ConfigRuleArn") {
                            self.configRuleArn = dict["ConfigRuleArn"] as! String
                        }
                        if dict.keys.contains("ConfigRuleId") {
                            self.configRuleId = dict["ConfigRuleId"] as! String
                        }
                        if dict.keys.contains("ConfigRuleName") {
                            self.configRuleName = dict["ConfigRuleName"] as! String
                        }
                        if dict.keys.contains("IgnoreDate") {
                            self.ignoreDate = dict["IgnoreDate"] as! String
                        }
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("ResourceId") {
                            self.resourceId = dict["ResourceId"] as! String
                        }
                        if dict.keys.contains("ResourceName") {
                            self.resourceName = dict["ResourceName"] as! String
                        }
                        if dict.keys.contains("ResourceOwnerId") {
                            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
                        }
                        if dict.keys.contains("ResourceType") {
                            self.resourceType = dict["ResourceType"] as! String
                        }
                    }
                }
                public var evaluationResultQualifier: ListAggregateConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier?

                public var orderingTimestamp: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.evaluationResultQualifier?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.evaluationResultQualifier != nil {
                        map["EvaluationResultQualifier"] = self.evaluationResultQualifier?.toMap()
                    }
                    if self.orderingTimestamp != nil {
                        map["OrderingTimestamp"] = self.orderingTimestamp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EvaluationResultQualifier") {
                        var model = ListAggregateConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier()
                        model.fromMap(dict["EvaluationResultQualifier"] as! [String: Any])
                        self.evaluationResultQualifier = model
                    }
                    if dict.keys.contains("OrderingTimestamp") {
                        self.orderingTimestamp = dict["OrderingTimestamp"] as! Int64
                    }
                }
            }
            public var annotation: String?

            public var complianceType: String?

            public var configRuleInvokedTimestamp: Int64?

            public var evaluationResultIdentifier: ListAggregateConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier?

            public var invokingEventMessageType: String?

            public var remediationEnabled: Bool?

            public var resultRecordedTimestamp: Int64?

            public var riskLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.evaluationResultIdentifier?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.annotation != nil {
                    map["Annotation"] = self.annotation!
                }
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.configRuleInvokedTimestamp != nil {
                    map["ConfigRuleInvokedTimestamp"] = self.configRuleInvokedTimestamp!
                }
                if self.evaluationResultIdentifier != nil {
                    map["EvaluationResultIdentifier"] = self.evaluationResultIdentifier?.toMap()
                }
                if self.invokingEventMessageType != nil {
                    map["InvokingEventMessageType"] = self.invokingEventMessageType!
                }
                if self.remediationEnabled != nil {
                    map["RemediationEnabled"] = self.remediationEnabled!
                }
                if self.resultRecordedTimestamp != nil {
                    map["ResultRecordedTimestamp"] = self.resultRecordedTimestamp!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Annotation") {
                    self.annotation = dict["Annotation"] as! String
                }
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("ConfigRuleInvokedTimestamp") {
                    self.configRuleInvokedTimestamp = dict["ConfigRuleInvokedTimestamp"] as! Int64
                }
                if dict.keys.contains("EvaluationResultIdentifier") {
                    var model = ListAggregateConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier()
                    model.fromMap(dict["EvaluationResultIdentifier"] as! [String: Any])
                    self.evaluationResultIdentifier = model
                }
                if dict.keys.contains("InvokingEventMessageType") {
                    self.invokingEventMessageType = dict["InvokingEventMessageType"] as! String
                }
                if dict.keys.contains("RemediationEnabled") {
                    self.remediationEnabled = dict["RemediationEnabled"] as! Bool
                }
                if dict.keys.contains("ResultRecordedTimestamp") {
                    self.resultRecordedTimestamp = dict["ResultRecordedTimestamp"] as! Int64
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
            }
        }
        public var evaluationResultList: [ListAggregateConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.evaluationResultList != nil {
                var tmp : [Any] = []
                for k in self.evaluationResultList! {
                    tmp.append(k.toMap())
                }
                map["EvaluationResultList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EvaluationResultList") {
                self.evaluationResultList = dict["EvaluationResultList"] as! [ListAggregateConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var evaluationResults: ListAggregateConfigRuleEvaluationResultsResponseBody.EvaluationResults?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluationResults?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.evaluationResults != nil {
            map["EvaluationResults"] = self.evaluationResults?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EvaluationResults") {
            var model = ListAggregateConfigRuleEvaluationResultsResponseBody.EvaluationResults()
            model.fromMap(dict["EvaluationResults"] as! [String: Any])
            self.evaluationResults = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAggregateConfigRuleEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAggregateConfigRuleEvaluationResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAggregateConfigRuleEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAggregateConfigRulesRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var complianceType: String?

    public var configRuleName: String?

    public var configRuleState: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleState != nil {
            map["ConfigRuleState"] = self.configRuleState!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleState") {
            self.configRuleState = dict["ConfigRuleState"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class ListAggregateConfigRulesResponseBody : Tea.TeaModel {
    public class ConfigRules : Tea.TeaModel {
        public class ConfigRuleList : Tea.TeaModel {
            public class Compliance : Tea.TeaModel {
                public var complianceType: String?

                public var count: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.complianceType != nil {
                        map["ComplianceType"] = self.complianceType!
                    }
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComplianceType") {
                        self.complianceType = dict["ComplianceType"] as! String
                    }
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                }
            }
            public class CreateBy : Tea.TeaModel {
                public var aggregatorId: String?

                public var aggregatorName: String?

                public var compliancePackId: String?

                public var compliancePackName: String?

                public var creatorId: String?

                public var creatorName: String?

                public var creatorType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.aggregatorId != nil {
                        map["AggregatorId"] = self.aggregatorId!
                    }
                    if self.aggregatorName != nil {
                        map["AggregatorName"] = self.aggregatorName!
                    }
                    if self.compliancePackId != nil {
                        map["CompliancePackId"] = self.compliancePackId!
                    }
                    if self.compliancePackName != nil {
                        map["CompliancePackName"] = self.compliancePackName!
                    }
                    if self.creatorId != nil {
                        map["CreatorId"] = self.creatorId!
                    }
                    if self.creatorName != nil {
                        map["CreatorName"] = self.creatorName!
                    }
                    if self.creatorType != nil {
                        map["CreatorType"] = self.creatorType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AggregatorId") {
                        self.aggregatorId = dict["AggregatorId"] as! String
                    }
                    if dict.keys.contains("AggregatorName") {
                        self.aggregatorName = dict["AggregatorName"] as! String
                    }
                    if dict.keys.contains("CompliancePackId") {
                        self.compliancePackId = dict["CompliancePackId"] as! String
                    }
                    if dict.keys.contains("CompliancePackName") {
                        self.compliancePackName = dict["CompliancePackName"] as! String
                    }
                    if dict.keys.contains("CreatorId") {
                        self.creatorId = dict["CreatorId"] as! String
                    }
                    if dict.keys.contains("CreatorName") {
                        self.creatorName = dict["CreatorName"] as! String
                    }
                    if dict.keys.contains("CreatorType") {
                        self.creatorType = dict["CreatorType"] as! String
                    }
                }
            }
            public class Tags : Tea.TeaModel {
                public var key: String?

                public var value: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var accountId: Int64?

            public var automationType: String?

            public var compliance: ListAggregateConfigRulesResponseBody.ConfigRules.ConfigRuleList.Compliance?

            public var configRuleArn: String?

            public var configRuleId: String?

            public var configRuleName: String?

            public var configRuleState: String?

            public var createBy: ListAggregateConfigRulesResponseBody.ConfigRules.ConfigRuleList.CreateBy?

            public var description_: String?

            public var riskLevel: Int32?

            public var sourceIdentifier: String?

            public var sourceOwner: String?

            public var tags: [ListAggregateConfigRulesResponseBody.ConfigRules.ConfigRuleList.Tags]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.compliance?.validate()
                try self.createBy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.automationType != nil {
                    map["AutomationType"] = self.automationType!
                }
                if self.compliance != nil {
                    map["Compliance"] = self.compliance?.toMap()
                }
                if self.configRuleArn != nil {
                    map["ConfigRuleArn"] = self.configRuleArn!
                }
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.configRuleName != nil {
                    map["ConfigRuleName"] = self.configRuleName!
                }
                if self.configRuleState != nil {
                    map["ConfigRuleState"] = self.configRuleState!
                }
                if self.createBy != nil {
                    map["CreateBy"] = self.createBy?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.sourceIdentifier != nil {
                    map["SourceIdentifier"] = self.sourceIdentifier!
                }
                if self.sourceOwner != nil {
                    map["SourceOwner"] = self.sourceOwner!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AutomationType") {
                    self.automationType = dict["AutomationType"] as! String
                }
                if dict.keys.contains("Compliance") {
                    var model = ListAggregateConfigRulesResponseBody.ConfigRules.ConfigRuleList.Compliance()
                    model.fromMap(dict["Compliance"] as! [String: Any])
                    self.compliance = model
                }
                if dict.keys.contains("ConfigRuleArn") {
                    self.configRuleArn = dict["ConfigRuleArn"] as! String
                }
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ConfigRuleName") {
                    self.configRuleName = dict["ConfigRuleName"] as! String
                }
                if dict.keys.contains("ConfigRuleState") {
                    self.configRuleState = dict["ConfigRuleState"] as! String
                }
                if dict.keys.contains("CreateBy") {
                    var model = ListAggregateConfigRulesResponseBody.ConfigRules.ConfigRuleList.CreateBy()
                    model.fromMap(dict["CreateBy"] as! [String: Any])
                    self.createBy = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
                if dict.keys.contains("SourceIdentifier") {
                    self.sourceIdentifier = dict["SourceIdentifier"] as! String
                }
                if dict.keys.contains("SourceOwner") {
                    self.sourceOwner = dict["SourceOwner"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! [ListAggregateConfigRulesResponseBody.ConfigRules.ConfigRuleList.Tags]
                }
            }
        }
        public var configRuleList: [ListAggregateConfigRulesResponseBody.ConfigRules.ConfigRuleList]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configRuleList != nil {
                var tmp : [Any] = []
                for k in self.configRuleList! {
                    tmp.append(k.toMap())
                }
                map["ConfigRuleList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigRuleList") {
                self.configRuleList = dict["ConfigRuleList"] as! [ListAggregateConfigRulesResponseBody.ConfigRules.ConfigRuleList]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var configRules: ListAggregateConfigRulesResponseBody.ConfigRules?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRules != nil {
            map["ConfigRules"] = self.configRules?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRules") {
            var model = ListAggregateConfigRulesResponseBody.ConfigRules()
            model.fromMap(dict["ConfigRules"] as! [String: Any])
            self.configRules = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAggregateConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAggregateConfigRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAggregateConfigRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAggregateDiscoveredResourcesRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regions: String?

    public var resourceDeleted: Int32?

    public var resourceId: String?

    public var resourceOwnerId: Int64?

    public var resourceTypes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regions != nil {
            map["Regions"] = self.regions!
        }
        if self.resourceDeleted != nil {
            map["ResourceDeleted"] = self.resourceDeleted!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! String
        }
        if dict.keys.contains("ResourceDeleted") {
            self.resourceDeleted = dict["ResourceDeleted"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceTypes") {
            self.resourceTypes = dict["ResourceTypes"] as! String
        }
    }
}

public class ListAggregateDiscoveredResourcesResponseBody : Tea.TeaModel {
    public class DiscoveredResourceProfiles : Tea.TeaModel {
        public class DiscoveredResourceProfileList : Tea.TeaModel {
            public var accountId: Int64?

            public var region: String?

            public var resourceCreationTime: Int64?

            public var resourceDeleted: Int32?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceOwnerId: Int64?

            public var resourceStatus: String?

            public var resourceType: String?

            public var tags: String?

            public var version: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceCreationTime != nil {
                    map["ResourceCreationTime"] = self.resourceCreationTime!
                }
                if self.resourceDeleted != nil {
                    map["ResourceDeleted"] = self.resourceDeleted!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceOwnerId != nil {
                    map["ResourceOwnerId"] = self.resourceOwnerId!
                }
                if self.resourceStatus != nil {
                    map["ResourceStatus"] = self.resourceStatus!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceCreationTime") {
                    self.resourceCreationTime = dict["ResourceCreationTime"] as! Int64
                }
                if dict.keys.contains("ResourceDeleted") {
                    self.resourceDeleted = dict["ResourceDeleted"] as! Int32
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceOwnerId") {
                    self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
                }
                if dict.keys.contains("ResourceStatus") {
                    self.resourceStatus = dict["ResourceStatus"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! Int64
                }
            }
        }
        public var discoveredResourceProfileList: [ListAggregateDiscoveredResourcesResponseBody.DiscoveredResourceProfiles.DiscoveredResourceProfileList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.discoveredResourceProfileList != nil {
                var tmp : [Any] = []
                for k in self.discoveredResourceProfileList! {
                    tmp.append(k.toMap())
                }
                map["DiscoveredResourceProfileList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DiscoveredResourceProfileList") {
                self.discoveredResourceProfileList = dict["DiscoveredResourceProfileList"] as! [ListAggregateDiscoveredResourcesResponseBody.DiscoveredResourceProfiles.DiscoveredResourceProfileList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var discoveredResourceProfiles: ListAggregateDiscoveredResourcesResponseBody.DiscoveredResourceProfiles?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.discoveredResourceProfiles?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceProfiles != nil {
            map["DiscoveredResourceProfiles"] = self.discoveredResourceProfiles?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceProfiles") {
            var model = ListAggregateDiscoveredResourcesResponseBody.DiscoveredResourceProfiles()
            model.fromMap(dict["DiscoveredResourceProfiles"] as! [String: Any])
            self.discoveredResourceProfiles = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAggregateDiscoveredResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAggregateDiscoveredResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAggregateDiscoveredResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAggregateRemediationsRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class ListAggregateRemediationsResponseBody : Tea.TeaModel {
    public class Remediations : Tea.TeaModel {
        public var accountId: Int64?

        public var aggregatorId: String?

        public var configRuleId: String?

        public var invokeType: String?

        public var lastSuccessfulInvocationId: String?

        public var lastSuccessfulInvocationTime: Int64?

        public var lastSuccessfulInvocationType: String?

        public var remediaitonOriginParams: String?

        public var remediationId: String?

        public var remediationSourceType: String?

        public var remediationTemplateId: String?

        public var remediationType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.aggregatorId != nil {
                map["AggregatorId"] = self.aggregatorId!
            }
            if self.configRuleId != nil {
                map["ConfigRuleId"] = self.configRuleId!
            }
            if self.invokeType != nil {
                map["InvokeType"] = self.invokeType!
            }
            if self.lastSuccessfulInvocationId != nil {
                map["LastSuccessfulInvocationId"] = self.lastSuccessfulInvocationId!
            }
            if self.lastSuccessfulInvocationTime != nil {
                map["LastSuccessfulInvocationTime"] = self.lastSuccessfulInvocationTime!
            }
            if self.lastSuccessfulInvocationType != nil {
                map["LastSuccessfulInvocationType"] = self.lastSuccessfulInvocationType!
            }
            if self.remediaitonOriginParams != nil {
                map["RemediaitonOriginParams"] = self.remediaitonOriginParams!
            }
            if self.remediationId != nil {
                map["RemediationId"] = self.remediationId!
            }
            if self.remediationSourceType != nil {
                map["RemediationSourceType"] = self.remediationSourceType!
            }
            if self.remediationTemplateId != nil {
                map["RemediationTemplateId"] = self.remediationTemplateId!
            }
            if self.remediationType != nil {
                map["RemediationType"] = self.remediationType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AggregatorId") {
                self.aggregatorId = dict["AggregatorId"] as! String
            }
            if dict.keys.contains("ConfigRuleId") {
                self.configRuleId = dict["ConfigRuleId"] as! String
            }
            if dict.keys.contains("InvokeType") {
                self.invokeType = dict["InvokeType"] as! String
            }
            if dict.keys.contains("LastSuccessfulInvocationId") {
                self.lastSuccessfulInvocationId = dict["LastSuccessfulInvocationId"] as! String
            }
            if dict.keys.contains("LastSuccessfulInvocationTime") {
                self.lastSuccessfulInvocationTime = dict["LastSuccessfulInvocationTime"] as! Int64
            }
            if dict.keys.contains("LastSuccessfulInvocationType") {
                self.lastSuccessfulInvocationType = dict["LastSuccessfulInvocationType"] as! String
            }
            if dict.keys.contains("RemediaitonOriginParams") {
                self.remediaitonOriginParams = dict["RemediaitonOriginParams"] as! String
            }
            if dict.keys.contains("RemediationId") {
                self.remediationId = dict["RemediationId"] as! String
            }
            if dict.keys.contains("RemediationSourceType") {
                self.remediationSourceType = dict["RemediationSourceType"] as! String
            }
            if dict.keys.contains("RemediationTemplateId") {
                self.remediationTemplateId = dict["RemediationTemplateId"] as! String
            }
            if dict.keys.contains("RemediationType") {
                self.remediationType = dict["RemediationType"] as! String
            }
        }
    }
    public var remediations: [ListAggregateRemediationsResponseBody.Remediations]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remediations != nil {
            var tmp : [Any] = []
            for k in self.remediations! {
                tmp.append(k.toMap())
            }
            map["Remediations"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Remediations") {
            self.remediations = dict["Remediations"] as! [ListAggregateRemediationsResponseBody.Remediations]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAggregateRemediationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAggregateRemediationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAggregateRemediationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAggregateResourceEvaluationResultsRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var complianceType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListAggregateResourceEvaluationResultsResponseBody : Tea.TeaModel {
    public class EvaluationResults : Tea.TeaModel {
        public class EvaluationResultList : Tea.TeaModel {
            public class EvaluationResultIdentifier : Tea.TeaModel {
                public class EvaluationResultQualifier : Tea.TeaModel {
                    public var configRuleArn: String?

                    public var configRuleId: String?

                    public var configRuleName: String?

                    public var ignoreDate: String?

                    public var regionId: String?

                    public var resourceId: String?

                    public var resourceName: String?

                    public var resourceType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.configRuleArn != nil {
                            map["ConfigRuleArn"] = self.configRuleArn!
                        }
                        if self.configRuleId != nil {
                            map["ConfigRuleId"] = self.configRuleId!
                        }
                        if self.configRuleName != nil {
                            map["ConfigRuleName"] = self.configRuleName!
                        }
                        if self.ignoreDate != nil {
                            map["IgnoreDate"] = self.ignoreDate!
                        }
                        if self.regionId != nil {
                            map["RegionId"] = self.regionId!
                        }
                        if self.resourceId != nil {
                            map["ResourceId"] = self.resourceId!
                        }
                        if self.resourceName != nil {
                            map["ResourceName"] = self.resourceName!
                        }
                        if self.resourceType != nil {
                            map["ResourceType"] = self.resourceType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConfigRuleArn") {
                            self.configRuleArn = dict["ConfigRuleArn"] as! String
                        }
                        if dict.keys.contains("ConfigRuleId") {
                            self.configRuleId = dict["ConfigRuleId"] as! String
                        }
                        if dict.keys.contains("ConfigRuleName") {
                            self.configRuleName = dict["ConfigRuleName"] as! String
                        }
                        if dict.keys.contains("IgnoreDate") {
                            self.ignoreDate = dict["IgnoreDate"] as! String
                        }
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("ResourceId") {
                            self.resourceId = dict["ResourceId"] as! String
                        }
                        if dict.keys.contains("ResourceName") {
                            self.resourceName = dict["ResourceName"] as! String
                        }
                        if dict.keys.contains("ResourceType") {
                            self.resourceType = dict["ResourceType"] as! String
                        }
                    }
                }
                public var evaluationResultQualifier: ListAggregateResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier?

                public var orderingTimestamp: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.evaluationResultQualifier?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.evaluationResultQualifier != nil {
                        map["EvaluationResultQualifier"] = self.evaluationResultQualifier?.toMap()
                    }
                    if self.orderingTimestamp != nil {
                        map["OrderingTimestamp"] = self.orderingTimestamp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EvaluationResultQualifier") {
                        var model = ListAggregateResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier()
                        model.fromMap(dict["EvaluationResultQualifier"] as! [String: Any])
                        self.evaluationResultQualifier = model
                    }
                    if dict.keys.contains("OrderingTimestamp") {
                        self.orderingTimestamp = dict["OrderingTimestamp"] as! Int64
                    }
                }
            }
            public var annotation: String?

            public var complianceType: String?

            public var configRuleInvokedTimestamp: Int64?

            public var evaluationResultIdentifier: ListAggregateResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier?

            public var invokingEventMessageType: String?

            public var remediationEnabled: Bool?

            public var resultRecordedTimestamp: Int64?

            public var riskLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.evaluationResultIdentifier?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.annotation != nil {
                    map["Annotation"] = self.annotation!
                }
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.configRuleInvokedTimestamp != nil {
                    map["ConfigRuleInvokedTimestamp"] = self.configRuleInvokedTimestamp!
                }
                if self.evaluationResultIdentifier != nil {
                    map["EvaluationResultIdentifier"] = self.evaluationResultIdentifier?.toMap()
                }
                if self.invokingEventMessageType != nil {
                    map["InvokingEventMessageType"] = self.invokingEventMessageType!
                }
                if self.remediationEnabled != nil {
                    map["RemediationEnabled"] = self.remediationEnabled!
                }
                if self.resultRecordedTimestamp != nil {
                    map["ResultRecordedTimestamp"] = self.resultRecordedTimestamp!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Annotation") {
                    self.annotation = dict["Annotation"] as! String
                }
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("ConfigRuleInvokedTimestamp") {
                    self.configRuleInvokedTimestamp = dict["ConfigRuleInvokedTimestamp"] as! Int64
                }
                if dict.keys.contains("EvaluationResultIdentifier") {
                    var model = ListAggregateResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier()
                    model.fromMap(dict["EvaluationResultIdentifier"] as! [String: Any])
                    self.evaluationResultIdentifier = model
                }
                if dict.keys.contains("InvokingEventMessageType") {
                    self.invokingEventMessageType = dict["InvokingEventMessageType"] as! String
                }
                if dict.keys.contains("RemediationEnabled") {
                    self.remediationEnabled = dict["RemediationEnabled"] as! Bool
                }
                if dict.keys.contains("ResultRecordedTimestamp") {
                    self.resultRecordedTimestamp = dict["ResultRecordedTimestamp"] as! Int64
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
            }
        }
        public var evaluationResultList: [ListAggregateResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.evaluationResultList != nil {
                var tmp : [Any] = []
                for k in self.evaluationResultList! {
                    tmp.append(k.toMap())
                }
                map["EvaluationResultList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EvaluationResultList") {
                self.evaluationResultList = dict["EvaluationResultList"] as! [ListAggregateResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var evaluationResults: ListAggregateResourceEvaluationResultsResponseBody.EvaluationResults?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluationResults?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.evaluationResults != nil {
            map["EvaluationResults"] = self.evaluationResults?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EvaluationResults") {
            var model = ListAggregateResourceEvaluationResultsResponseBody.EvaluationResults()
            model.fromMap(dict["EvaluationResults"] as! [String: Any])
            self.evaluationResults = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAggregateResourceEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAggregateResourceEvaluationResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAggregateResourceEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAggregatorsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListAggregatorsResponseBody : Tea.TeaModel {
    public class AggregatorsResult : Tea.TeaModel {
        public class Aggregators : Tea.TeaModel {
            public var accountId: Int64?

            public var aggregatorAccountCount: Int64?

            public var aggregatorCreateTimestamp: Int64?

            public var aggregatorId: String?

            public var aggregatorName: String?

            public var aggregatorStatus: Int32?

            public var aggregatorType: String?

            public var description_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.aggregatorAccountCount != nil {
                    map["AggregatorAccountCount"] = self.aggregatorAccountCount!
                }
                if self.aggregatorCreateTimestamp != nil {
                    map["AggregatorCreateTimestamp"] = self.aggregatorCreateTimestamp!
                }
                if self.aggregatorId != nil {
                    map["AggregatorId"] = self.aggregatorId!
                }
                if self.aggregatorName != nil {
                    map["AggregatorName"] = self.aggregatorName!
                }
                if self.aggregatorStatus != nil {
                    map["AggregatorStatus"] = self.aggregatorStatus!
                }
                if self.aggregatorType != nil {
                    map["AggregatorType"] = self.aggregatorType!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AggregatorAccountCount") {
                    self.aggregatorAccountCount = dict["AggregatorAccountCount"] as! Int64
                }
                if dict.keys.contains("AggregatorCreateTimestamp") {
                    self.aggregatorCreateTimestamp = dict["AggregatorCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("AggregatorId") {
                    self.aggregatorId = dict["AggregatorId"] as! String
                }
                if dict.keys.contains("AggregatorName") {
                    self.aggregatorName = dict["AggregatorName"] as! String
                }
                if dict.keys.contains("AggregatorStatus") {
                    self.aggregatorStatus = dict["AggregatorStatus"] as! Int32
                }
                if dict.keys.contains("AggregatorType") {
                    self.aggregatorType = dict["AggregatorType"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
            }
        }
        public var aggregators: [ListAggregatorsResponseBody.AggregatorsResult.Aggregators]?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aggregators != nil {
                var tmp : [Any] = []
                for k in self.aggregators! {
                    tmp.append(k.toMap())
                }
                map["Aggregators"] = tmp
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Aggregators") {
                self.aggregators = dict["Aggregators"] as! [ListAggregatorsResponseBody.AggregatorsResult.Aggregators]
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var aggregatorsResult: ListAggregatorsResponseBody.AggregatorsResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aggregatorsResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorsResult != nil {
            map["AggregatorsResult"] = self.aggregatorsResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorsResult") {
            var model = ListAggregatorsResponseBody.AggregatorsResult()
            model.fromMap(dict["AggregatorsResult"] as! [String: Any])
            self.aggregatorsResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAggregatorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAggregatorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAggregatorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCompliancePackTemplatesRequest : Tea.TeaModel {
    public var compliancePackTemplateId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackTemplateId != nil {
            map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackTemplateId") {
            self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListCompliancePackTemplatesResponseBody : Tea.TeaModel {
    public class CompliancePackTemplatesResult : Tea.TeaModel {
        public class CompliancePackTemplates : Tea.TeaModel {
            public class ConfigRules : Tea.TeaModel {
                public class ConfigRuleParameters : Tea.TeaModel {
                    public var parameterName: String?

                    public var parameterValue: String?

                    public var required_: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.parameterName != nil {
                            map["ParameterName"] = self.parameterName!
                        }
                        if self.parameterValue != nil {
                            map["ParameterValue"] = self.parameterValue!
                        }
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ParameterName") {
                            self.parameterName = dict["ParameterName"] as! String
                        }
                        if dict.keys.contains("ParameterValue") {
                            self.parameterValue = dict["ParameterValue"] as! String
                        }
                        if dict.keys.contains("Required") {
                            self.required_ = dict["Required"] as! Bool
                        }
                    }
                }
                public var configRuleParameters: [ListCompliancePackTemplatesResponseBody.CompliancePackTemplatesResult.CompliancePackTemplates.ConfigRules.ConfigRuleParameters]?

                public var controlDescription: String?

                public var controlId: String?

                public var description_: String?

                public var managedRuleIdentifier: String?

                public var managedRuleName: String?

                public var riskLevel: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.configRuleParameters != nil {
                        var tmp : [Any] = []
                        for k in self.configRuleParameters! {
                            tmp.append(k.toMap())
                        }
                        map["ConfigRuleParameters"] = tmp
                    }
                    if self.controlDescription != nil {
                        map["ControlDescription"] = self.controlDescription!
                    }
                    if self.controlId != nil {
                        map["ControlId"] = self.controlId!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.managedRuleIdentifier != nil {
                        map["ManagedRuleIdentifier"] = self.managedRuleIdentifier!
                    }
                    if self.managedRuleName != nil {
                        map["ManagedRuleName"] = self.managedRuleName!
                    }
                    if self.riskLevel != nil {
                        map["RiskLevel"] = self.riskLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConfigRuleParameters") {
                        self.configRuleParameters = dict["ConfigRuleParameters"] as! [ListCompliancePackTemplatesResponseBody.CompliancePackTemplatesResult.CompliancePackTemplates.ConfigRules.ConfigRuleParameters]
                    }
                    if dict.keys.contains("ControlDescription") {
                        self.controlDescription = dict["ControlDescription"] as! String
                    }
                    if dict.keys.contains("ControlId") {
                        self.controlId = dict["ControlId"] as! String
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("ManagedRuleIdentifier") {
                        self.managedRuleIdentifier = dict["ManagedRuleIdentifier"] as! String
                    }
                    if dict.keys.contains("ManagedRuleName") {
                        self.managedRuleName = dict["ManagedRuleName"] as! String
                    }
                    if dict.keys.contains("RiskLevel") {
                        self.riskLevel = dict["RiskLevel"] as! Int32
                    }
                }
            }
            public var compliancePackTemplateId: String?

            public var compliancePackTemplateName: String?

            public var configRules: [ListCompliancePackTemplatesResponseBody.CompliancePackTemplatesResult.CompliancePackTemplates.ConfigRules]?

            public var description_: String?

            public var labels: String?

            public var lastUpdate: Int32?

            public var riskLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compliancePackTemplateId != nil {
                    map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
                }
                if self.compliancePackTemplateName != nil {
                    map["CompliancePackTemplateName"] = self.compliancePackTemplateName!
                }
                if self.configRules != nil {
                    var tmp : [Any] = []
                    for k in self.configRules! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigRules"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.lastUpdate != nil {
                    map["LastUpdate"] = self.lastUpdate!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompliancePackTemplateId") {
                    self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
                }
                if dict.keys.contains("CompliancePackTemplateName") {
                    self.compliancePackTemplateName = dict["CompliancePackTemplateName"] as! String
                }
                if dict.keys.contains("ConfigRules") {
                    self.configRules = dict["ConfigRules"] as! [ListCompliancePackTemplatesResponseBody.CompliancePackTemplatesResult.CompliancePackTemplates.ConfigRules]
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Labels") {
                    self.labels = dict["Labels"] as! String
                }
                if dict.keys.contains("LastUpdate") {
                    self.lastUpdate = dict["LastUpdate"] as! Int32
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
            }
        }
        public var compliancePackTemplates: [ListCompliancePackTemplatesResponseBody.CompliancePackTemplatesResult.CompliancePackTemplates]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePackTemplates != nil {
                var tmp : [Any] = []
                for k in self.compliancePackTemplates! {
                    tmp.append(k.toMap())
                }
                map["CompliancePackTemplates"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliancePackTemplates") {
                self.compliancePackTemplates = dict["CompliancePackTemplates"] as! [ListCompliancePackTemplatesResponseBody.CompliancePackTemplatesResult.CompliancePackTemplates]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var compliancePackTemplatesResult: ListCompliancePackTemplatesResponseBody.CompliancePackTemplatesResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.compliancePackTemplatesResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackTemplatesResult != nil {
            map["CompliancePackTemplatesResult"] = self.compliancePackTemplatesResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackTemplatesResult") {
            var model = ListCompliancePackTemplatesResponseBody.CompliancePackTemplatesResult()
            model.fromMap(dict["CompliancePackTemplatesResult"] as! [String: Any])
            self.compliancePackTemplatesResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCompliancePackTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCompliancePackTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCompliancePackTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCompliancePacksRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListCompliancePacksResponseBody : Tea.TeaModel {
    public class CompliancePacksResult : Tea.TeaModel {
        public class CompliancePacks : Tea.TeaModel {
            public var accountId: Int64?

            public var compliancePackId: String?

            public var compliancePackName: String?

            public var compliancePackTemplateId: String?

            public var createTimestamp: Int64?

            public var description_: String?

            public var riskLevel: Int32?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.compliancePackId != nil {
                    map["CompliancePackId"] = self.compliancePackId!
                }
                if self.compliancePackName != nil {
                    map["CompliancePackName"] = self.compliancePackName!
                }
                if self.compliancePackTemplateId != nil {
                    map["CompliancePackTemplateId"] = self.compliancePackTemplateId!
                }
                if self.createTimestamp != nil {
                    map["CreateTimestamp"] = self.createTimestamp!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("CompliancePackId") {
                    self.compliancePackId = dict["CompliancePackId"] as! String
                }
                if dict.keys.contains("CompliancePackName") {
                    self.compliancePackName = dict["CompliancePackName"] as! String
                }
                if dict.keys.contains("CompliancePackTemplateId") {
                    self.compliancePackTemplateId = dict["CompliancePackTemplateId"] as! String
                }
                if dict.keys.contains("CreateTimestamp") {
                    self.createTimestamp = dict["CreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var compliancePacks: [ListCompliancePacksResponseBody.CompliancePacksResult.CompliancePacks]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePacks != nil {
                var tmp : [Any] = []
                for k in self.compliancePacks! {
                    tmp.append(k.toMap())
                }
                map["CompliancePacks"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliancePacks") {
                self.compliancePacks = dict["CompliancePacks"] as! [ListCompliancePacksResponseBody.CompliancePacksResult.CompliancePacks]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var compliancePacksResult: ListCompliancePacksResponseBody.CompliancePacksResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.compliancePacksResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePacksResult != nil {
            map["CompliancePacksResult"] = self.compliancePacksResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePacksResult") {
            var model = ListCompliancePacksResponseBody.CompliancePacksResult()
            model.fromMap(dict["CompliancePacksResult"] as! [String: Any])
            self.compliancePacksResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCompliancePacksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCompliancePacksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCompliancePacksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConfigDeliveryChannelsRequest : Tea.TeaModel {
    public var deliveryChannelIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelIds != nil {
            map["DeliveryChannelIds"] = self.deliveryChannelIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannelIds") {
            self.deliveryChannelIds = dict["DeliveryChannelIds"] as! String
        }
    }
}

public class ListConfigDeliveryChannelsResponseBody : Tea.TeaModel {
    public class DeliveryChannels : Tea.TeaModel {
        public var accountId: Int64?

        public var configurationItemChangeNotification: Bool?

        public var configurationSnapshot: Bool?

        public var deliveryChannelAssumeRoleArn: String?

        public var deliveryChannelCondition: String?

        public var deliveryChannelId: String?

        public var deliveryChannelName: String?

        public var deliveryChannelTargetArn: String?

        public var deliveryChannelType: String?

        public var deliverySnapshotTime: String?

        public var description_: String?

        public var nonCompliantNotification: Bool?

        public var oversizedDataOSSTargetArn: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.configurationItemChangeNotification != nil {
                map["ConfigurationItemChangeNotification"] = self.configurationItemChangeNotification!
            }
            if self.configurationSnapshot != nil {
                map["ConfigurationSnapshot"] = self.configurationSnapshot!
            }
            if self.deliveryChannelAssumeRoleArn != nil {
                map["DeliveryChannelAssumeRoleArn"] = self.deliveryChannelAssumeRoleArn!
            }
            if self.deliveryChannelCondition != nil {
                map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
            }
            if self.deliveryChannelId != nil {
                map["DeliveryChannelId"] = self.deliveryChannelId!
            }
            if self.deliveryChannelName != nil {
                map["DeliveryChannelName"] = self.deliveryChannelName!
            }
            if self.deliveryChannelTargetArn != nil {
                map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
            }
            if self.deliveryChannelType != nil {
                map["DeliveryChannelType"] = self.deliveryChannelType!
            }
            if self.deliverySnapshotTime != nil {
                map["DeliverySnapshotTime"] = self.deliverySnapshotTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.nonCompliantNotification != nil {
                map["NonCompliantNotification"] = self.nonCompliantNotification!
            }
            if self.oversizedDataOSSTargetArn != nil {
                map["OversizedDataOSSTargetArn"] = self.oversizedDataOSSTargetArn!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("ConfigurationItemChangeNotification") {
                self.configurationItemChangeNotification = dict["ConfigurationItemChangeNotification"] as! Bool
            }
            if dict.keys.contains("ConfigurationSnapshot") {
                self.configurationSnapshot = dict["ConfigurationSnapshot"] as! Bool
            }
            if dict.keys.contains("DeliveryChannelAssumeRoleArn") {
                self.deliveryChannelAssumeRoleArn = dict["DeliveryChannelAssumeRoleArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelCondition") {
                self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
            }
            if dict.keys.contains("DeliveryChannelId") {
                self.deliveryChannelId = dict["DeliveryChannelId"] as! String
            }
            if dict.keys.contains("DeliveryChannelName") {
                self.deliveryChannelName = dict["DeliveryChannelName"] as! String
            }
            if dict.keys.contains("DeliveryChannelTargetArn") {
                self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelType") {
                self.deliveryChannelType = dict["DeliveryChannelType"] as! String
            }
            if dict.keys.contains("DeliverySnapshotTime") {
                self.deliverySnapshotTime = dict["DeliverySnapshotTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("NonCompliantNotification") {
                self.nonCompliantNotification = dict["NonCompliantNotification"] as! Bool
            }
            if dict.keys.contains("OversizedDataOSSTargetArn") {
                self.oversizedDataOSSTargetArn = dict["OversizedDataOSSTargetArn"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var deliveryChannels: [ListConfigDeliveryChannelsResponseBody.DeliveryChannels]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannels != nil {
            var tmp : [Any] = []
            for k in self.deliveryChannels! {
                tmp.append(k.toMap())
            }
            map["DeliveryChannels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannels") {
            self.deliveryChannels = dict["DeliveryChannels"] as! [ListConfigDeliveryChannelsResponseBody.DeliveryChannels]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListConfigDeliveryChannelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConfigDeliveryChannelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConfigDeliveryChannelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConfigRuleEvaluationResultsRequest : Tea.TeaModel {
    public var compliancePackId: String?

    public var complianceType: String?

    public var configRuleId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListConfigRuleEvaluationResultsResponseBody : Tea.TeaModel {
    public class EvaluationResults : Tea.TeaModel {
        public class EvaluationResultList : Tea.TeaModel {
            public class EvaluationResultIdentifier : Tea.TeaModel {
                public class EvaluationResultQualifier : Tea.TeaModel {
                    public var compliancePackId: String?

                    public var configRuleArn: String?

                    public var configRuleId: String?

                    public var configRuleName: String?

                    public var ignoreDate: String?

                    public var regionId: String?

                    public var resourceId: String?

                    public var resourceName: String?

                    public var resourceOwnerId: Int64?

                    public var resourceType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.compliancePackId != nil {
                            map["CompliancePackId"] = self.compliancePackId!
                        }
                        if self.configRuleArn != nil {
                            map["ConfigRuleArn"] = self.configRuleArn!
                        }
                        if self.configRuleId != nil {
                            map["ConfigRuleId"] = self.configRuleId!
                        }
                        if self.configRuleName != nil {
                            map["ConfigRuleName"] = self.configRuleName!
                        }
                        if self.ignoreDate != nil {
                            map["IgnoreDate"] = self.ignoreDate!
                        }
                        if self.regionId != nil {
                            map["RegionId"] = self.regionId!
                        }
                        if self.resourceId != nil {
                            map["ResourceId"] = self.resourceId!
                        }
                        if self.resourceName != nil {
                            map["ResourceName"] = self.resourceName!
                        }
                        if self.resourceOwnerId != nil {
                            map["ResourceOwnerId"] = self.resourceOwnerId!
                        }
                        if self.resourceType != nil {
                            map["ResourceType"] = self.resourceType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CompliancePackId") {
                            self.compliancePackId = dict["CompliancePackId"] as! String
                        }
                        if dict.keys.contains("ConfigRuleArn") {
                            self.configRuleArn = dict["ConfigRuleArn"] as! String
                        }
                        if dict.keys.contains("ConfigRuleId") {
                            self.configRuleId = dict["ConfigRuleId"] as! String
                        }
                        if dict.keys.contains("ConfigRuleName") {
                            self.configRuleName = dict["ConfigRuleName"] as! String
                        }
                        if dict.keys.contains("IgnoreDate") {
                            self.ignoreDate = dict["IgnoreDate"] as! String
                        }
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("ResourceId") {
                            self.resourceId = dict["ResourceId"] as! String
                        }
                        if dict.keys.contains("ResourceName") {
                            self.resourceName = dict["ResourceName"] as! String
                        }
                        if dict.keys.contains("ResourceOwnerId") {
                            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
                        }
                        if dict.keys.contains("ResourceType") {
                            self.resourceType = dict["ResourceType"] as! String
                        }
                    }
                }
                public var evaluationResultQualifier: ListConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier?

                public var orderingTimestamp: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.evaluationResultQualifier?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.evaluationResultQualifier != nil {
                        map["EvaluationResultQualifier"] = self.evaluationResultQualifier?.toMap()
                    }
                    if self.orderingTimestamp != nil {
                        map["OrderingTimestamp"] = self.orderingTimestamp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EvaluationResultQualifier") {
                        var model = ListConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier()
                        model.fromMap(dict["EvaluationResultQualifier"] as! [String: Any])
                        self.evaluationResultQualifier = model
                    }
                    if dict.keys.contains("OrderingTimestamp") {
                        self.orderingTimestamp = dict["OrderingTimestamp"] as! Int64
                    }
                }
            }
            public var annotation: String?

            public var complianceType: String?

            public var configRuleInvokedTimestamp: Int64?

            public var evaluationResultIdentifier: ListConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier?

            public var invokingEventMessageType: String?

            public var remediationEnabled: Bool?

            public var resultRecordedTimestamp: Int64?

            public var riskLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.evaluationResultIdentifier?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.annotation != nil {
                    map["Annotation"] = self.annotation!
                }
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.configRuleInvokedTimestamp != nil {
                    map["ConfigRuleInvokedTimestamp"] = self.configRuleInvokedTimestamp!
                }
                if self.evaluationResultIdentifier != nil {
                    map["EvaluationResultIdentifier"] = self.evaluationResultIdentifier?.toMap()
                }
                if self.invokingEventMessageType != nil {
                    map["InvokingEventMessageType"] = self.invokingEventMessageType!
                }
                if self.remediationEnabled != nil {
                    map["RemediationEnabled"] = self.remediationEnabled!
                }
                if self.resultRecordedTimestamp != nil {
                    map["ResultRecordedTimestamp"] = self.resultRecordedTimestamp!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Annotation") {
                    self.annotation = dict["Annotation"] as! String
                }
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("ConfigRuleInvokedTimestamp") {
                    self.configRuleInvokedTimestamp = dict["ConfigRuleInvokedTimestamp"] as! Int64
                }
                if dict.keys.contains("EvaluationResultIdentifier") {
                    var model = ListConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier()
                    model.fromMap(dict["EvaluationResultIdentifier"] as! [String: Any])
                    self.evaluationResultIdentifier = model
                }
                if dict.keys.contains("InvokingEventMessageType") {
                    self.invokingEventMessageType = dict["InvokingEventMessageType"] as! String
                }
                if dict.keys.contains("RemediationEnabled") {
                    self.remediationEnabled = dict["RemediationEnabled"] as! Bool
                }
                if dict.keys.contains("ResultRecordedTimestamp") {
                    self.resultRecordedTimestamp = dict["ResultRecordedTimestamp"] as! Int64
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
            }
        }
        public var evaluationResultList: [ListConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.evaluationResultList != nil {
                var tmp : [Any] = []
                for k in self.evaluationResultList! {
                    tmp.append(k.toMap())
                }
                map["EvaluationResultList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EvaluationResultList") {
                self.evaluationResultList = dict["EvaluationResultList"] as! [ListConfigRuleEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var evaluationResults: ListConfigRuleEvaluationResultsResponseBody.EvaluationResults?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluationResults?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.evaluationResults != nil {
            map["EvaluationResults"] = self.evaluationResults?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EvaluationResults") {
            var model = ListConfigRuleEvaluationResultsResponseBody.EvaluationResults()
            model.fromMap(dict["EvaluationResults"] as! [String: Any])
            self.evaluationResults = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListConfigRuleEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConfigRuleEvaluationResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConfigRuleEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDiscoveredResourcesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regions: String?

    public var resourceDeleted: Int32?

    public var resourceId: String?

    public var resourceTypes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regions != nil {
            map["Regions"] = self.regions!
        }
        if self.resourceDeleted != nil {
            map["ResourceDeleted"] = self.resourceDeleted!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! String
        }
        if dict.keys.contains("ResourceDeleted") {
            self.resourceDeleted = dict["ResourceDeleted"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceTypes") {
            self.resourceTypes = dict["ResourceTypes"] as! String
        }
    }
}

public class ListDiscoveredResourcesResponseBody : Tea.TeaModel {
    public class DiscoveredResourceProfiles : Tea.TeaModel {
        public class DiscoveredResourceProfileList : Tea.TeaModel {
            public var accountId: Int64?

            public var region: String?

            public var resourceCreationTime: Int64?

            public var resourceDeleted: Int32?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceStatus: String?

            public var resourceType: String?

            public var tags: String?

            public var version: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceCreationTime != nil {
                    map["ResourceCreationTime"] = self.resourceCreationTime!
                }
                if self.resourceDeleted != nil {
                    map["ResourceDeleted"] = self.resourceDeleted!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceStatus != nil {
                    map["ResourceStatus"] = self.resourceStatus!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceCreationTime") {
                    self.resourceCreationTime = dict["ResourceCreationTime"] as! Int64
                }
                if dict.keys.contains("ResourceDeleted") {
                    self.resourceDeleted = dict["ResourceDeleted"] as! Int32
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceStatus") {
                    self.resourceStatus = dict["ResourceStatus"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! Int64
                }
            }
        }
        public var discoveredResourceProfileList: [ListDiscoveredResourcesResponseBody.DiscoveredResourceProfiles.DiscoveredResourceProfileList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.discoveredResourceProfileList != nil {
                var tmp : [Any] = []
                for k in self.discoveredResourceProfileList! {
                    tmp.append(k.toMap())
                }
                map["DiscoveredResourceProfileList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DiscoveredResourceProfileList") {
                self.discoveredResourceProfileList = dict["DiscoveredResourceProfileList"] as! [ListDiscoveredResourcesResponseBody.DiscoveredResourceProfiles.DiscoveredResourceProfileList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var discoveredResourceProfiles: ListDiscoveredResourcesResponseBody.DiscoveredResourceProfiles?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.discoveredResourceProfiles?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceProfiles != nil {
            map["DiscoveredResourceProfiles"] = self.discoveredResourceProfiles?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceProfiles") {
            var model = ListDiscoveredResourcesResponseBody.DiscoveredResourceProfiles()
            model.fromMap(dict["DiscoveredResourceProfiles"] as! [String: Any])
            self.discoveredResourceProfiles = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDiscoveredResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDiscoveredResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDiscoveredResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListManagedRulesRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class ListManagedRulesResponseBody : Tea.TeaModel {
    public class ManagedRules : Tea.TeaModel {
        public class ManagedRuleList : Tea.TeaModel {
            public var configRuleName: String?

            public var description_: String?

            public var helpUrls: String?

            public var identifier: String?

            public var labels: [String]?

            public var riskLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configRuleName != nil {
                    map["ConfigRuleName"] = self.configRuleName!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.helpUrls != nil {
                    map["HelpUrls"] = self.helpUrls!
                }
                if self.identifier != nil {
                    map["Identifier"] = self.identifier!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleName") {
                    self.configRuleName = dict["ConfigRuleName"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("HelpUrls") {
                    self.helpUrls = dict["HelpUrls"] as! String
                }
                if dict.keys.contains("Identifier") {
                    self.identifier = dict["Identifier"] as! String
                }
                if dict.keys.contains("Labels") {
                    self.labels = dict["Labels"] as! [String]
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
            }
        }
        public var managedRuleList: [ListManagedRulesResponseBody.ManagedRules.ManagedRuleList]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.managedRuleList != nil {
                var tmp : [Any] = []
                for k in self.managedRuleList! {
                    tmp.append(k.toMap())
                }
                map["ManagedRuleList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ManagedRuleList") {
                self.managedRuleList = dict["ManagedRuleList"] as! [ListManagedRulesResponseBody.ManagedRules.ManagedRuleList]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var managedRules: ListManagedRulesResponseBody.ManagedRules?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.managedRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.managedRules != nil {
            map["ManagedRules"] = self.managedRules?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ManagedRules") {
            var model = ListManagedRulesResponseBody.ManagedRules()
            model.fromMap(dict["ManagedRules"] as! [String: Any])
            self.managedRules = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListManagedRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListManagedRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListManagedRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRemediationTemplatesRequest : Tea.TeaModel {
    public var managedRuleIdentifier: String?

    public var remediationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.managedRuleIdentifier != nil {
            map["ManagedRuleIdentifier"] = self.managedRuleIdentifier!
        }
        if self.remediationType != nil {
            map["RemediationType"] = self.remediationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ManagedRuleIdentifier") {
            self.managedRuleIdentifier = dict["ManagedRuleIdentifier"] as! String
        }
        if dict.keys.contains("RemediationType") {
            self.remediationType = dict["RemediationType"] as! String
        }
    }
}

public class ListRemediationTemplatesResponseBody : Tea.TeaModel {
    public class RemediationTemplates : Tea.TeaModel {
        public var remediationType: String?

        public var templateDefinition: String?

        public var templateIdentifier: String?

        public var templateName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.remediationType != nil {
                map["RemediationType"] = self.remediationType!
            }
            if self.templateDefinition != nil {
                map["TemplateDefinition"] = self.templateDefinition!
            }
            if self.templateIdentifier != nil {
                map["TemplateIdentifier"] = self.templateIdentifier!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RemediationType") {
                self.remediationType = dict["RemediationType"] as! String
            }
            if dict.keys.contains("TemplateDefinition") {
                self.templateDefinition = dict["TemplateDefinition"] as! String
            }
            if dict.keys.contains("TemplateIdentifier") {
                self.templateIdentifier = dict["TemplateIdentifier"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public var remediationTemplates: [ListRemediationTemplatesResponseBody.RemediationTemplates]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remediationTemplates != nil {
            var tmp : [Any] = []
            for k in self.remediationTemplates! {
                tmp.append(k.toMap())
            }
            map["RemediationTemplates"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemediationTemplates") {
            self.remediationTemplates = dict["RemediationTemplates"] as! [ListRemediationTemplatesResponseBody.RemediationTemplates]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRemediationTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRemediationTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRemediationTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRemediationsRequest : Tea.TeaModel {
    public var configRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class ListRemediationsResponseBody : Tea.TeaModel {
    public class Remediations : Tea.TeaModel {
        public var accountId: Int64?

        public var configRuleId: String?

        public var invokeType: String?

        public var lastSuccessfulInvocationId: String?

        public var lastSuccessfulInvocationTime: Int64?

        public var lastSuccessfulInvocationType: String?

        public var remediationId: String?

        public var remediationOriginParams: String?

        public var remediationSourceType: String?

        public var remediationTemplateId: String?

        public var remediationType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.configRuleId != nil {
                map["ConfigRuleId"] = self.configRuleId!
            }
            if self.invokeType != nil {
                map["InvokeType"] = self.invokeType!
            }
            if self.lastSuccessfulInvocationId != nil {
                map["LastSuccessfulInvocationId"] = self.lastSuccessfulInvocationId!
            }
            if self.lastSuccessfulInvocationTime != nil {
                map["LastSuccessfulInvocationTime"] = self.lastSuccessfulInvocationTime!
            }
            if self.lastSuccessfulInvocationType != nil {
                map["LastSuccessfulInvocationType"] = self.lastSuccessfulInvocationType!
            }
            if self.remediationId != nil {
                map["RemediationId"] = self.remediationId!
            }
            if self.remediationOriginParams != nil {
                map["RemediationOriginParams"] = self.remediationOriginParams!
            }
            if self.remediationSourceType != nil {
                map["RemediationSourceType"] = self.remediationSourceType!
            }
            if self.remediationTemplateId != nil {
                map["RemediationTemplateId"] = self.remediationTemplateId!
            }
            if self.remediationType != nil {
                map["RemediationType"] = self.remediationType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("ConfigRuleId") {
                self.configRuleId = dict["ConfigRuleId"] as! String
            }
            if dict.keys.contains("InvokeType") {
                self.invokeType = dict["InvokeType"] as! String
            }
            if dict.keys.contains("LastSuccessfulInvocationId") {
                self.lastSuccessfulInvocationId = dict["LastSuccessfulInvocationId"] as! String
            }
            if dict.keys.contains("LastSuccessfulInvocationTime") {
                self.lastSuccessfulInvocationTime = dict["LastSuccessfulInvocationTime"] as! Int64
            }
            if dict.keys.contains("LastSuccessfulInvocationType") {
                self.lastSuccessfulInvocationType = dict["LastSuccessfulInvocationType"] as! String
            }
            if dict.keys.contains("RemediationId") {
                self.remediationId = dict["RemediationId"] as! String
            }
            if dict.keys.contains("RemediationOriginParams") {
                self.remediationOriginParams = dict["RemediationOriginParams"] as! String
            }
            if dict.keys.contains("RemediationSourceType") {
                self.remediationSourceType = dict["RemediationSourceType"] as! String
            }
            if dict.keys.contains("RemediationTemplateId") {
                self.remediationTemplateId = dict["RemediationTemplateId"] as! String
            }
            if dict.keys.contains("RemediationType") {
                self.remediationType = dict["RemediationType"] as! String
            }
        }
    }
    public var remediations: [ListRemediationsResponseBody.Remediations]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remediations != nil {
            var tmp : [Any] = []
            for k in self.remediations! {
                tmp.append(k.toMap())
            }
            map["Remediations"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Remediations") {
            self.remediations = dict["Remediations"] as! [ListRemediationsResponseBody.Remediations]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRemediationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRemediationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRemediationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceEvaluationResultsRequest : Tea.TeaModel {
    public var complianceType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListResourceEvaluationResultsResponseBody : Tea.TeaModel {
    public class EvaluationResults : Tea.TeaModel {
        public class EvaluationResultList : Tea.TeaModel {
            public class EvaluationResultIdentifier : Tea.TeaModel {
                public class EvaluationResultQualifier : Tea.TeaModel {
                    public var configRuleArn: String?

                    public var configRuleId: String?

                    public var configRuleName: String?

                    public var ignoreDate: String?

                    public var regionId: String?

                    public var resourceId: String?

                    public var resourceName: String?

                    public var resourceType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.configRuleArn != nil {
                            map["ConfigRuleArn"] = self.configRuleArn!
                        }
                        if self.configRuleId != nil {
                            map["ConfigRuleId"] = self.configRuleId!
                        }
                        if self.configRuleName != nil {
                            map["ConfigRuleName"] = self.configRuleName!
                        }
                        if self.ignoreDate != nil {
                            map["IgnoreDate"] = self.ignoreDate!
                        }
                        if self.regionId != nil {
                            map["RegionId"] = self.regionId!
                        }
                        if self.resourceId != nil {
                            map["ResourceId"] = self.resourceId!
                        }
                        if self.resourceName != nil {
                            map["ResourceName"] = self.resourceName!
                        }
                        if self.resourceType != nil {
                            map["ResourceType"] = self.resourceType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConfigRuleArn") {
                            self.configRuleArn = dict["ConfigRuleArn"] as! String
                        }
                        if dict.keys.contains("ConfigRuleId") {
                            self.configRuleId = dict["ConfigRuleId"] as! String
                        }
                        if dict.keys.contains("ConfigRuleName") {
                            self.configRuleName = dict["ConfigRuleName"] as! String
                        }
                        if dict.keys.contains("IgnoreDate") {
                            self.ignoreDate = dict["IgnoreDate"] as! String
                        }
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("ResourceId") {
                            self.resourceId = dict["ResourceId"] as! String
                        }
                        if dict.keys.contains("ResourceName") {
                            self.resourceName = dict["ResourceName"] as! String
                        }
                        if dict.keys.contains("ResourceType") {
                            self.resourceType = dict["ResourceType"] as! String
                        }
                    }
                }
                public var evaluationResultQualifier: ListResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier?

                public var orderingTimestamp: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.evaluationResultQualifier?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.evaluationResultQualifier != nil {
                        map["EvaluationResultQualifier"] = self.evaluationResultQualifier?.toMap()
                    }
                    if self.orderingTimestamp != nil {
                        map["OrderingTimestamp"] = self.orderingTimestamp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EvaluationResultQualifier") {
                        var model = ListResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier()
                        model.fromMap(dict["EvaluationResultQualifier"] as! [String: Any])
                        self.evaluationResultQualifier = model
                    }
                    if dict.keys.contains("OrderingTimestamp") {
                        self.orderingTimestamp = dict["OrderingTimestamp"] as! Int64
                    }
                }
            }
            public var annotation: String?

            public var complianceType: String?

            public var configRuleInvokedTimestamp: Int64?

            public var evaluationResultIdentifier: ListResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier?

            public var invokingEventMessageType: String?

            public var remediationEnabled: Bool?

            public var resultRecordedTimestamp: Int64?

            public var riskLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.evaluationResultIdentifier?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.annotation != nil {
                    map["Annotation"] = self.annotation!
                }
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.configRuleInvokedTimestamp != nil {
                    map["ConfigRuleInvokedTimestamp"] = self.configRuleInvokedTimestamp!
                }
                if self.evaluationResultIdentifier != nil {
                    map["EvaluationResultIdentifier"] = self.evaluationResultIdentifier?.toMap()
                }
                if self.invokingEventMessageType != nil {
                    map["InvokingEventMessageType"] = self.invokingEventMessageType!
                }
                if self.remediationEnabled != nil {
                    map["RemediationEnabled"] = self.remediationEnabled!
                }
                if self.resultRecordedTimestamp != nil {
                    map["ResultRecordedTimestamp"] = self.resultRecordedTimestamp!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Annotation") {
                    self.annotation = dict["Annotation"] as! String
                }
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("ConfigRuleInvokedTimestamp") {
                    self.configRuleInvokedTimestamp = dict["ConfigRuleInvokedTimestamp"] as! Int64
                }
                if dict.keys.contains("EvaluationResultIdentifier") {
                    var model = ListResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier()
                    model.fromMap(dict["EvaluationResultIdentifier"] as! [String: Any])
                    self.evaluationResultIdentifier = model
                }
                if dict.keys.contains("InvokingEventMessageType") {
                    self.invokingEventMessageType = dict["InvokingEventMessageType"] as! String
                }
                if dict.keys.contains("RemediationEnabled") {
                    self.remediationEnabled = dict["RemediationEnabled"] as! Bool
                }
                if dict.keys.contains("ResultRecordedTimestamp") {
                    self.resultRecordedTimestamp = dict["ResultRecordedTimestamp"] as! Int64
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
            }
        }
        public var evaluationResultList: [ListResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]?

        public var maxResults: Int32?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.evaluationResultList != nil {
                var tmp : [Any] = []
                for k in self.evaluationResultList! {
                    tmp.append(k.toMap())
                }
                map["EvaluationResultList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EvaluationResultList") {
                self.evaluationResultList = dict["EvaluationResultList"] as! [ListResourceEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var evaluationResults: ListResourceEvaluationResultsResponseBody.EvaluationResults?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluationResults?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.evaluationResults != nil {
            map["EvaluationResults"] = self.evaluationResults?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EvaluationResults") {
            var model = ListResourceEvaluationResultsResponseBody.EvaluationResults()
            model.fromMap(dict["EvaluationResults"] as! [String: Any])
            self.evaluationResults = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListResourceEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceEvaluationResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListResourceEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListTagResourcesRequest.Tag]
        }
    }
}

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tagShrink = dict["Tag"] as! String
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
            public var resourceId: String?

            public var resourceType: String?

            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") {
                self.tagResource = dict["TagResource"] as! [ListTagResourcesResponseBody.TagResources.TagResource]
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
            self.tagResources = model
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevertAggregateEvaluationResultsRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var region: String?

        public var resourceAccountId: Int64?

        public var resourceId: String?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceAccountId != nil {
                map["ResourceAccountId"] = self.resourceAccountId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceAccountId") {
                self.resourceAccountId = dict["ResourceAccountId"] as! Int64
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var aggregatorId: String?

    public var configRuleId: String?

    public var resources: [RevertAggregateEvaluationResultsRequest.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [RevertAggregateEvaluationResultsRequest.Resources]
        }
    }
}

public class RevertAggregateEvaluationResultsShrinkRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleId: String?

    public var resourcesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.resourcesShrink != nil {
            map["Resources"] = self.resourcesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resourcesShrink = dict["Resources"] as! String
        }
    }
}

public class RevertAggregateEvaluationResultsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RevertAggregateEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevertAggregateEvaluationResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RevertAggregateEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevertEvaluationResultsRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var region: String?

        public var resourceAccountId: Int64?

        public var resourceId: String?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceAccountId != nil {
                map["ResourceAccountId"] = self.resourceAccountId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceAccountId") {
                self.resourceAccountId = dict["ResourceAccountId"] as! Int64
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var configRuleId: String?

    public var resources: [RevertEvaluationResultsRequest.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [RevertEvaluationResultsRequest.Resources]
        }
    }
}

public class RevertEvaluationResultsShrinkRequest : Tea.TeaModel {
    public var configRuleId: String?

    public var resourcesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.resourcesShrink != nil {
            map["Resources"] = self.resourcesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resourcesShrink = dict["Resources"] as! String
        }
    }
}

public class RevertEvaluationResultsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RevertEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevertEvaluationResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RevertEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartAggregateConfigRuleEvaluationRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var compliancePackId: String?

    public var configRuleId: String?

    public var revertEvaluation: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.revertEvaluation != nil {
            map["RevertEvaluation"] = self.revertEvaluation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("RevertEvaluation") {
            self.revertEvaluation = dict["RevertEvaluation"] as! Bool
        }
    }
}

public class StartAggregateConfigRuleEvaluationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class StartAggregateConfigRuleEvaluationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAggregateConfigRuleEvaluationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartAggregateConfigRuleEvaluationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartAggregateRemediationRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var configRuleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
    }
}

public class StartAggregateRemediationResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartAggregateRemediationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAggregateRemediationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartAggregateRemediationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartRemediationRequest : Tea.TeaModel {
    public var configRuleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
    }
}

public class StartRemediationResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartRemediationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartRemediationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartRemediationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [TagResourcesRequest.Tag]
        }
    }
}

public class TagResourcesShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tagShrink = dict["Tag"] as! String
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAggregateCompliancePackRequest : Tea.TeaModel {
    public class ConfigRules : Tea.TeaModel {
        public class ConfigRuleParameters : Tea.TeaModel {
            public var parameterName: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterName") {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public var configRuleId: String?

        public var configRuleName: String?

        public var configRuleParameters: [UpdateAggregateCompliancePackRequest.ConfigRules.ConfigRuleParameters]?

        public var description_: String?

        public var managedRuleIdentifier: String?

        public var riskLevel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configRuleId != nil {
                map["ConfigRuleId"] = self.configRuleId!
            }
            if self.configRuleName != nil {
                map["ConfigRuleName"] = self.configRuleName!
            }
            if self.configRuleParameters != nil {
                var tmp : [Any] = []
                for k in self.configRuleParameters! {
                    tmp.append(k.toMap())
                }
                map["ConfigRuleParameters"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.managedRuleIdentifier != nil {
                map["ManagedRuleIdentifier"] = self.managedRuleIdentifier!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigRuleId") {
                self.configRuleId = dict["ConfigRuleId"] as! String
            }
            if dict.keys.contains("ConfigRuleName") {
                self.configRuleName = dict["ConfigRuleName"] as! String
            }
            if dict.keys.contains("ConfigRuleParameters") {
                self.configRuleParameters = dict["ConfigRuleParameters"] as! [UpdateAggregateCompliancePackRequest.ConfigRules.ConfigRuleParameters]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ManagedRuleIdentifier") {
                self.managedRuleIdentifier = dict["ManagedRuleIdentifier"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
        }
    }
    public var aggregatorId: String?

    public var clientToken: String?

    public var compliancePackId: String?

    public var compliancePackName: String?

    public var configRules: [UpdateAggregateCompliancePackRequest.ConfigRules]?

    public var description_: String?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.compliancePackName != nil {
            map["CompliancePackName"] = self.compliancePackName!
        }
        if self.configRules != nil {
            var tmp : [Any] = []
            for k in self.configRules! {
                tmp.append(k.toMap())
            }
            map["ConfigRules"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("CompliancePackName") {
            self.compliancePackName = dict["CompliancePackName"] as! String
        }
        if dict.keys.contains("ConfigRules") {
            self.configRules = dict["ConfigRules"] as! [UpdateAggregateCompliancePackRequest.ConfigRules]
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class UpdateAggregateCompliancePackShrinkRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var compliancePackId: String?

    public var compliancePackName: String?

    public var configRulesShrink: String?

    public var description_: String?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.compliancePackName != nil {
            map["CompliancePackName"] = self.compliancePackName!
        }
        if self.configRulesShrink != nil {
            map["ConfigRules"] = self.configRulesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("CompliancePackName") {
            self.compliancePackName = dict["CompliancePackName"] as! String
        }
        if dict.keys.contains("ConfigRules") {
            self.configRulesShrink = dict["ConfigRules"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class UpdateAggregateCompliancePackResponseBody : Tea.TeaModel {
    public var compliancePackId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAggregateCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAggregateCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAggregateCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAggregateConfigDeliveryChannelRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var configurationItemChangeNotification: Bool?

    public var configurationSnapshot: Bool?

    public var deliveryChannelCondition: String?

    public var deliveryChannelId: String?

    public var deliveryChannelName: String?

    public var deliveryChannelTargetArn: String?

    public var deliverySnapshotTime: String?

    public var description_: String?

    public var nonCompliantNotification: Bool?

    public var oversizedDataOSSTargetArn: String?

    public var status: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configurationItemChangeNotification != nil {
            map["ConfigurationItemChangeNotification"] = self.configurationItemChangeNotification!
        }
        if self.configurationSnapshot != nil {
            map["ConfigurationSnapshot"] = self.configurationSnapshot!
        }
        if self.deliveryChannelCondition != nil {
            map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
        }
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.deliveryChannelTargetArn != nil {
            map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
        }
        if self.deliverySnapshotTime != nil {
            map["DeliverySnapshotTime"] = self.deliverySnapshotTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.nonCompliantNotification != nil {
            map["NonCompliantNotification"] = self.nonCompliantNotification!
        }
        if self.oversizedDataOSSTargetArn != nil {
            map["OversizedDataOSSTargetArn"] = self.oversizedDataOSSTargetArn!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigurationItemChangeNotification") {
            self.configurationItemChangeNotification = dict["ConfigurationItemChangeNotification"] as! Bool
        }
        if dict.keys.contains("ConfigurationSnapshot") {
            self.configurationSnapshot = dict["ConfigurationSnapshot"] as! Bool
        }
        if dict.keys.contains("DeliveryChannelCondition") {
            self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
        }
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
        if dict.keys.contains("DeliveryChannelName") {
            self.deliveryChannelName = dict["DeliveryChannelName"] as! String
        }
        if dict.keys.contains("DeliveryChannelTargetArn") {
            self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
        }
        if dict.keys.contains("DeliverySnapshotTime") {
            self.deliverySnapshotTime = dict["DeliverySnapshotTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("NonCompliantNotification") {
            self.nonCompliantNotification = dict["NonCompliantNotification"] as! Bool
        }
        if dict.keys.contains("OversizedDataOSSTargetArn") {
            self.oversizedDataOSSTargetArn = dict["OversizedDataOSSTargetArn"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int64
        }
    }
}

public class UpdateAggregateConfigDeliveryChannelResponseBody : Tea.TeaModel {
    public var deliveryChannelId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAggregateConfigDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAggregateConfigDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAggregateConfigDeliveryChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAggregateConfigRuleRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var configRuleId: String?

    public var configRuleName: String?

    public var configRuleTriggerTypes: String?

    public var description_: String?

    public var excludeAccountIdsScope: String?

    public var excludeFolderIdsScope: String?

    public var excludeResourceIdsScope: String?

    public var folderIdsScope: String?

    public var inputParameters: [String: Any]?

    public var maximumExecutionFrequency: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceTypesScope: [String]?

    public var riskLevel: Int32?

    public var tagKeyLogicScope: String?

    public var tagKeyScope: String?

    public var tagValueScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleTriggerTypes != nil {
            map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeAccountIdsScope != nil {
            map["ExcludeAccountIdsScope"] = self.excludeAccountIdsScope!
        }
        if self.excludeFolderIdsScope != nil {
            map["ExcludeFolderIdsScope"] = self.excludeFolderIdsScope!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.folderIdsScope != nil {
            map["FolderIdsScope"] = self.folderIdsScope!
        }
        if self.inputParameters != nil {
            map["InputParameters"] = self.inputParameters!
        }
        if self.maximumExecutionFrequency != nil {
            map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceTypesScope != nil {
            map["ResourceTypesScope"] = self.resourceTypesScope!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.tagKeyLogicScope != nil {
            map["TagKeyLogicScope"] = self.tagKeyLogicScope!
        }
        if self.tagKeyScope != nil {
            map["TagKeyScope"] = self.tagKeyScope!
        }
        if self.tagValueScope != nil {
            map["TagValueScope"] = self.tagValueScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleTriggerTypes") {
            self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExcludeAccountIdsScope") {
            self.excludeAccountIdsScope = dict["ExcludeAccountIdsScope"] as! String
        }
        if dict.keys.contains("ExcludeFolderIdsScope") {
            self.excludeFolderIdsScope = dict["ExcludeFolderIdsScope"] as! String
        }
        if dict.keys.contains("ExcludeResourceIdsScope") {
            self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
        }
        if dict.keys.contains("FolderIdsScope") {
            self.folderIdsScope = dict["FolderIdsScope"] as! String
        }
        if dict.keys.contains("InputParameters") {
            self.inputParameters = dict["InputParameters"] as! [String: Any]
        }
        if dict.keys.contains("MaximumExecutionFrequency") {
            self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
        }
        if dict.keys.contains("RegionIdsScope") {
            self.regionIdsScope = dict["RegionIdsScope"] as! String
        }
        if dict.keys.contains("ResourceGroupIdsScope") {
            self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
        }
        if dict.keys.contains("ResourceTypesScope") {
            self.resourceTypesScope = dict["ResourceTypesScope"] as! [String]
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("TagKeyLogicScope") {
            self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
        }
        if dict.keys.contains("TagKeyScope") {
            self.tagKeyScope = dict["TagKeyScope"] as! String
        }
        if dict.keys.contains("TagValueScope") {
            self.tagValueScope = dict["TagValueScope"] as! String
        }
    }
}

public class UpdateAggregateConfigRuleShrinkRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var clientToken: String?

    public var configRuleId: String?

    public var configRuleName: String?

    public var configRuleTriggerTypes: String?

    public var description_: String?

    public var excludeAccountIdsScope: String?

    public var excludeFolderIdsScope: String?

    public var excludeResourceIdsScope: String?

    public var folderIdsScope: String?

    public var inputParametersShrink: String?

    public var maximumExecutionFrequency: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceTypesScopeShrink: String?

    public var riskLevel: Int32?

    public var tagKeyLogicScope: String?

    public var tagKeyScope: String?

    public var tagValueScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleTriggerTypes != nil {
            map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeAccountIdsScope != nil {
            map["ExcludeAccountIdsScope"] = self.excludeAccountIdsScope!
        }
        if self.excludeFolderIdsScope != nil {
            map["ExcludeFolderIdsScope"] = self.excludeFolderIdsScope!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.folderIdsScope != nil {
            map["FolderIdsScope"] = self.folderIdsScope!
        }
        if self.inputParametersShrink != nil {
            map["InputParameters"] = self.inputParametersShrink!
        }
        if self.maximumExecutionFrequency != nil {
            map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceTypesScopeShrink != nil {
            map["ResourceTypesScope"] = self.resourceTypesScopeShrink!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.tagKeyLogicScope != nil {
            map["TagKeyLogicScope"] = self.tagKeyLogicScope!
        }
        if self.tagKeyScope != nil {
            map["TagKeyScope"] = self.tagKeyScope!
        }
        if self.tagValueScope != nil {
            map["TagValueScope"] = self.tagValueScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleTriggerTypes") {
            self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExcludeAccountIdsScope") {
            self.excludeAccountIdsScope = dict["ExcludeAccountIdsScope"] as! String
        }
        if dict.keys.contains("ExcludeFolderIdsScope") {
            self.excludeFolderIdsScope = dict["ExcludeFolderIdsScope"] as! String
        }
        if dict.keys.contains("ExcludeResourceIdsScope") {
            self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
        }
        if dict.keys.contains("FolderIdsScope") {
            self.folderIdsScope = dict["FolderIdsScope"] as! String
        }
        if dict.keys.contains("InputParameters") {
            self.inputParametersShrink = dict["InputParameters"] as! String
        }
        if dict.keys.contains("MaximumExecutionFrequency") {
            self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
        }
        if dict.keys.contains("RegionIdsScope") {
            self.regionIdsScope = dict["RegionIdsScope"] as! String
        }
        if dict.keys.contains("ResourceGroupIdsScope") {
            self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
        }
        if dict.keys.contains("ResourceTypesScope") {
            self.resourceTypesScopeShrink = dict["ResourceTypesScope"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("TagKeyLogicScope") {
            self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
        }
        if dict.keys.contains("TagKeyScope") {
            self.tagKeyScope = dict["TagKeyScope"] as! String
        }
        if dict.keys.contains("TagValueScope") {
            self.tagValueScope = dict["TagValueScope"] as! String
        }
    }
}

public class UpdateAggregateConfigRuleResponseBody : Tea.TeaModel {
    public var configRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAggregateConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAggregateConfigRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAggregateConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAggregateRemediationRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var invokeType: String?

    public var params: String?

    public var remediationId: String?

    public var remediationTemplateId: String?

    public var remediationType: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.invokeType != nil {
            map["InvokeType"] = self.invokeType!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.remediationId != nil {
            map["RemediationId"] = self.remediationId!
        }
        if self.remediationTemplateId != nil {
            map["RemediationTemplateId"] = self.remediationTemplateId!
        }
        if self.remediationType != nil {
            map["RemediationType"] = self.remediationType!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("InvokeType") {
            self.invokeType = dict["InvokeType"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("RemediationId") {
            self.remediationId = dict["RemediationId"] as! String
        }
        if dict.keys.contains("RemediationTemplateId") {
            self.remediationTemplateId = dict["RemediationTemplateId"] as! String
        }
        if dict.keys.contains("RemediationType") {
            self.remediationType = dict["RemediationType"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class UpdateAggregateRemediationResponseBody : Tea.TeaModel {
    public var remediationId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remediationId != nil {
            map["RemediationId"] = self.remediationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemediationId") {
            self.remediationId = dict["RemediationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAggregateRemediationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAggregateRemediationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAggregateRemediationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAggregatorRequest : Tea.TeaModel {
    public class AggregatorAccounts : Tea.TeaModel {
        public var accountId: Int64?

        public var accountName: String?

        public var accountType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
        }
    }
    public var aggregatorAccounts: [UpdateAggregatorRequest.AggregatorAccounts]?

    public var aggregatorId: String?

    public var aggregatorName: String?

    public var clientToken: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorAccounts != nil {
            var tmp : [Any] = []
            for k in self.aggregatorAccounts! {
                tmp.append(k.toMap())
            }
            map["AggregatorAccounts"] = tmp
        }
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.aggregatorName != nil {
            map["AggregatorName"] = self.aggregatorName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorAccounts") {
            self.aggregatorAccounts = dict["AggregatorAccounts"] as! [UpdateAggregatorRequest.AggregatorAccounts]
        }
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("AggregatorName") {
            self.aggregatorName = dict["AggregatorName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class UpdateAggregatorShrinkRequest : Tea.TeaModel {
    public var aggregatorAccountsShrink: String?

    public var aggregatorId: String?

    public var aggregatorName: String?

    public var clientToken: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorAccountsShrink != nil {
            map["AggregatorAccounts"] = self.aggregatorAccountsShrink!
        }
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.aggregatorName != nil {
            map["AggregatorName"] = self.aggregatorName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorAccounts") {
            self.aggregatorAccountsShrink = dict["AggregatorAccounts"] as! String
        }
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("AggregatorName") {
            self.aggregatorName = dict["AggregatorName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class UpdateAggregatorResponseBody : Tea.TeaModel {
    public var aggregatorId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAggregatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAggregatorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAggregatorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCompliancePackRequest : Tea.TeaModel {
    public class ConfigRules : Tea.TeaModel {
        public class ConfigRuleParameters : Tea.TeaModel {
            public var parameterName: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterName") {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public var configRuleId: String?

        public var configRuleName: String?

        public var configRuleParameters: [UpdateCompliancePackRequest.ConfigRules.ConfigRuleParameters]?

        public var description_: String?

        public var managedRuleIdentifier: String?

        public var riskLevel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configRuleId != nil {
                map["ConfigRuleId"] = self.configRuleId!
            }
            if self.configRuleName != nil {
                map["ConfigRuleName"] = self.configRuleName!
            }
            if self.configRuleParameters != nil {
                var tmp : [Any] = []
                for k in self.configRuleParameters! {
                    tmp.append(k.toMap())
                }
                map["ConfigRuleParameters"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.managedRuleIdentifier != nil {
                map["ManagedRuleIdentifier"] = self.managedRuleIdentifier!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigRuleId") {
                self.configRuleId = dict["ConfigRuleId"] as! String
            }
            if dict.keys.contains("ConfigRuleName") {
                self.configRuleName = dict["ConfigRuleName"] as! String
            }
            if dict.keys.contains("ConfigRuleParameters") {
                self.configRuleParameters = dict["ConfigRuleParameters"] as! [UpdateCompliancePackRequest.ConfigRules.ConfigRuleParameters]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ManagedRuleIdentifier") {
                self.managedRuleIdentifier = dict["ManagedRuleIdentifier"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
        }
    }
    public var clientToken: String?

    public var compliancePackId: String?

    public var compliancePackName: String?

    public var configRules: [UpdateCompliancePackRequest.ConfigRules]?

    public var description_: String?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.compliancePackName != nil {
            map["CompliancePackName"] = self.compliancePackName!
        }
        if self.configRules != nil {
            var tmp : [Any] = []
            for k in self.configRules! {
                tmp.append(k.toMap())
            }
            map["ConfigRules"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("CompliancePackName") {
            self.compliancePackName = dict["CompliancePackName"] as! String
        }
        if dict.keys.contains("ConfigRules") {
            self.configRules = dict["ConfigRules"] as! [UpdateCompliancePackRequest.ConfigRules]
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class UpdateCompliancePackShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var compliancePackId: String?

    public var compliancePackName: String?

    public var configRulesShrink: String?

    public var description_: String?

    public var riskLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.compliancePackName != nil {
            map["CompliancePackName"] = self.compliancePackName!
        }
        if self.configRulesShrink != nil {
            map["ConfigRules"] = self.configRulesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("CompliancePackName") {
            self.compliancePackName = dict["CompliancePackName"] as! String
        }
        if dict.keys.contains("ConfigRules") {
            self.configRulesShrink = dict["ConfigRules"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class UpdateCompliancePackResponseBody : Tea.TeaModel {
    public var compliancePackId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateCompliancePackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCompliancePackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateCompliancePackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConfigDeliveryChannelRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configurationItemChangeNotification: Bool?

    public var configurationSnapshot: Bool?

    public var deliveryChannelCondition: String?

    public var deliveryChannelId: String?

    public var deliveryChannelName: String?

    public var deliveryChannelTargetArn: String?

    public var deliverySnapshotTime: String?

    public var description_: String?

    public var nonCompliantNotification: Bool?

    public var oversizedDataOSSTargetArn: String?

    public var status: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configurationItemChangeNotification != nil {
            map["ConfigurationItemChangeNotification"] = self.configurationItemChangeNotification!
        }
        if self.configurationSnapshot != nil {
            map["ConfigurationSnapshot"] = self.configurationSnapshot!
        }
        if self.deliveryChannelCondition != nil {
            map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
        }
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.deliveryChannelTargetArn != nil {
            map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
        }
        if self.deliverySnapshotTime != nil {
            map["DeliverySnapshotTime"] = self.deliverySnapshotTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.nonCompliantNotification != nil {
            map["NonCompliantNotification"] = self.nonCompliantNotification!
        }
        if self.oversizedDataOSSTargetArn != nil {
            map["OversizedDataOSSTargetArn"] = self.oversizedDataOSSTargetArn!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigurationItemChangeNotification") {
            self.configurationItemChangeNotification = dict["ConfigurationItemChangeNotification"] as! Bool
        }
        if dict.keys.contains("ConfigurationSnapshot") {
            self.configurationSnapshot = dict["ConfigurationSnapshot"] as! Bool
        }
        if dict.keys.contains("DeliveryChannelCondition") {
            self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
        }
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
        if dict.keys.contains("DeliveryChannelName") {
            self.deliveryChannelName = dict["DeliveryChannelName"] as! String
        }
        if dict.keys.contains("DeliveryChannelTargetArn") {
            self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
        }
        if dict.keys.contains("DeliverySnapshotTime") {
            self.deliverySnapshotTime = dict["DeliverySnapshotTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("NonCompliantNotification") {
            self.nonCompliantNotification = dict["NonCompliantNotification"] as! Bool
        }
        if dict.keys.contains("OversizedDataOSSTargetArn") {
            self.oversizedDataOSSTargetArn = dict["OversizedDataOSSTargetArn"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int64
        }
    }
}

public class UpdateConfigDeliveryChannelResponseBody : Tea.TeaModel {
    public var deliveryChannelId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateConfigDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConfigDeliveryChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateConfigDeliveryChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConfigRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configRuleId: String?

    public var configRuleName: String?

    public var configRuleTriggerTypes: String?

    public var description_: String?

    public var excludeResourceIdsScope: String?

    public var inputParameters: [String: Any]?

    public var maximumExecutionFrequency: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceTypesScope: [String]?

    public var riskLevel: Int32?

    public var tagKeyLogicScope: String?

    public var tagKeyScope: String?

    public var tagValueScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleTriggerTypes != nil {
            map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.inputParameters != nil {
            map["InputParameters"] = self.inputParameters!
        }
        if self.maximumExecutionFrequency != nil {
            map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceTypesScope != nil {
            map["ResourceTypesScope"] = self.resourceTypesScope!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.tagKeyLogicScope != nil {
            map["TagKeyLogicScope"] = self.tagKeyLogicScope!
        }
        if self.tagKeyScope != nil {
            map["TagKeyScope"] = self.tagKeyScope!
        }
        if self.tagValueScope != nil {
            map["TagValueScope"] = self.tagValueScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleTriggerTypes") {
            self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExcludeResourceIdsScope") {
            self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
        }
        if dict.keys.contains("InputParameters") {
            self.inputParameters = dict["InputParameters"] as! [String: Any]
        }
        if dict.keys.contains("MaximumExecutionFrequency") {
            self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
        }
        if dict.keys.contains("RegionIdsScope") {
            self.regionIdsScope = dict["RegionIdsScope"] as! String
        }
        if dict.keys.contains("ResourceGroupIdsScope") {
            self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
        }
        if dict.keys.contains("ResourceTypesScope") {
            self.resourceTypesScope = dict["ResourceTypesScope"] as! [String]
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("TagKeyLogicScope") {
            self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
        }
        if dict.keys.contains("TagKeyScope") {
            self.tagKeyScope = dict["TagKeyScope"] as! String
        }
        if dict.keys.contains("TagValueScope") {
            self.tagValueScope = dict["TagValueScope"] as! String
        }
    }
}

public class UpdateConfigRuleShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configRuleId: String?

    public var configRuleName: String?

    public var configRuleTriggerTypes: String?

    public var description_: String?

    public var excludeResourceIdsScope: String?

    public var inputParametersShrink: String?

    public var maximumExecutionFrequency: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceTypesScopeShrink: String?

    public var riskLevel: Int32?

    public var tagKeyLogicScope: String?

    public var tagKeyScope: String?

    public var tagValueScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleTriggerTypes != nil {
            map["ConfigRuleTriggerTypes"] = self.configRuleTriggerTypes!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.inputParametersShrink != nil {
            map["InputParameters"] = self.inputParametersShrink!
        }
        if self.maximumExecutionFrequency != nil {
            map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceTypesScopeShrink != nil {
            map["ResourceTypesScope"] = self.resourceTypesScopeShrink!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.tagKeyLogicScope != nil {
            map["TagKeyLogicScope"] = self.tagKeyLogicScope!
        }
        if self.tagKeyScope != nil {
            map["TagKeyScope"] = self.tagKeyScope!
        }
        if self.tagValueScope != nil {
            map["TagValueScope"] = self.tagValueScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleTriggerTypes") {
            self.configRuleTriggerTypes = dict["ConfigRuleTriggerTypes"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExcludeResourceIdsScope") {
            self.excludeResourceIdsScope = dict["ExcludeResourceIdsScope"] as! String
        }
        if dict.keys.contains("InputParameters") {
            self.inputParametersShrink = dict["InputParameters"] as! String
        }
        if dict.keys.contains("MaximumExecutionFrequency") {
            self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
        }
        if dict.keys.contains("RegionIdsScope") {
            self.regionIdsScope = dict["RegionIdsScope"] as! String
        }
        if dict.keys.contains("ResourceGroupIdsScope") {
            self.resourceGroupIdsScope = dict["ResourceGroupIdsScope"] as! String
        }
        if dict.keys.contains("ResourceTypesScope") {
            self.resourceTypesScopeShrink = dict["ResourceTypesScope"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("TagKeyLogicScope") {
            self.tagKeyLogicScope = dict["TagKeyLogicScope"] as! String
        }
        if dict.keys.contains("TagKeyScope") {
            self.tagKeyScope = dict["TagKeyScope"] as! String
        }
        if dict.keys.contains("TagValueScope") {
            self.tagValueScope = dict["TagValueScope"] as! String
        }
    }
}

public class UpdateConfigRuleResponseBody : Tea.TeaModel {
    public var configRuleId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConfigRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

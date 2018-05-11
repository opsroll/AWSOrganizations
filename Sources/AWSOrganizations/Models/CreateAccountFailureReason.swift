//
// CreateAccountFailureReason.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public enum CreateAccountFailureReason: String, Codable {
    case accountLimitExceeded = "ACCOUNT_LIMIT_EXCEEDED"
    case emailAlreadyExists = "EMAIL_ALREADY_EXISTS"
    case invalidAddress = "INVALID_ADDRESS"
    case invalidEmail = "INVALID_EMAIL"
    case concurrentAccountModification = "CONCURRENT_ACCOUNT_MODIFICATION"
    case internalFailure = "INTERNAL_FAILURE"

}
//
//  Response.swift
//  VimeoNetworkingExample-iOS
//
//  Created by Huebner, Rob on 4/5/16.
//  Copyright © 2016 Vimeo. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

/**
 *  `Response` represents a successful result returned by `VimeoClient` in fulfillment of a `Request`.
 */
 public struct Response<ModelType>
{
        /// The parsed model object or array of model objects returned by the response
    public let model: ModelType
    
        /// The raw JSON dictionary returned by the response
    public let json: VimeoClient.ResponseDictionary
    
        /// Whether this `Response` was generated by a cache query
    public var isCachedResponse: Bool
    
        /// Whether this `Response` will be the final one received for it's associated `Request`
    public var isFinalResponse: Bool
    
        /// Total amount of items in the collection associated with this response
    public let totalCount: Int?
    
        /// The page number for this response, relevant if associated with a collection
    public let page: Int?
    
        /// The maximum number of items on a page of this response, if associated with a collection
    public let itemsPerPage: Int?
    
        /// The request for the next page associated with this collection response, if one exists
    public let nextPageRequest: Request<ModelType>?
    
        /// The request for the previous page associated with this collection response, if one exists
    public let previousPageRequest: Request<ModelType>?
    
        /// The request for the first page associated with this collection response, if one exists
    public let firstPageRequest: Request<ModelType>?
    
        /// The request for the last page associated with this collection response, if one exists
    public let lastPageRequest: Request<ModelType>?
    
    // MARK: - 
    
    /**
     Creates a new `Response`
     
     - parameter model:            The parsed model object returned by the response
     - parameter json:             The raw JSON dictionary returned by the response
     - parameter isCachedResponse: Whether this `Response` was generated by a cache query, defaults to false
     - parameter isFinalResponse:  Whether this `Response` will be the final one received for it's associated `Request`, defaults to true
     - parameter totalCount:          Total amount of items in the collection associated with this response
     - parameter page:                The page number for this response, relevant if associated with a collection
     - parameter itemsPerPage:        The maximum number of items on a page of this response, if associated with a collection
     - parameter nextPageRequest:     The request for the next page associated with this collection response, if one exists
     - parameter previousPageRequest: The request for the previous page associated with this collection response, if one exists
     - parameter firstPageRequest:    The request for the first page associated with this collection response, if one exists
     - parameter lastPageRequest:     The request for the last page associated with this collection response, if one exists
     
     - returns: an initialized `Response`
     */
    init(model: ModelType,
         json: VimeoClient.ResponseDictionary,
         isCachedResponse: Bool = false,
         isFinalResponse: Bool = true,
         totalCount: Int? = nil,
         page: Int? = nil,
         itemsPerPage: Int? = nil,
         nextPageRequest: Request<ModelType>? = nil,
         previousPageRequest: Request<ModelType>? = nil,
         firstPageRequest: Request<ModelType>? = nil,
         lastPageRequest: Request<ModelType>? = nil)
    {
        self.model = model
        self.json = json
        self.isCachedResponse = isCachedResponse
        self.isFinalResponse = isFinalResponse
        self.totalCount = totalCount
        self.page = page
        self.itemsPerPage = itemsPerPage
        self.nextPageRequest = nextPageRequest
        self.previousPageRequest = previousPageRequest
        self.firstPageRequest = firstPageRequest
        self.lastPageRequest = lastPageRequest
    }
}

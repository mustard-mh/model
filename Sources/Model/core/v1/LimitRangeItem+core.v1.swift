//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

public extension core.v1 {

	///
	/// LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
	///
	struct LimitRangeItem: KubernetesResource {
		///
		/// Default resource requirement limit value by resource name if resource limit is omitted.
		///
		public var `default`: [String: Quantity]?
		///
		/// DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
		///
		public var defaultRequest: [String: Quantity]?
		///
		/// Max usage constraints on this kind by resource name.
		///
		public var max: [String: Quantity]?
		///
		/// MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
		///
		public var maxLimitRequestRatio: [String: Quantity]?
		///
		/// Min usage constraints on this kind by resource name.
		///
		public var min: [String: Quantity]?
		///
		/// Type of resource that this limit applies to.
		///
		public var type: String?
		///
		/// Default memberwise initializer
		///
		public init(
			`default`: [String: Quantity]? = nil,
			defaultRequest: [String: Quantity]? = nil,
			max: [String: Quantity]? = nil,
			maxLimitRequestRatio: [String: Quantity]? = nil,
			min: [String: Quantity]? = nil,
			type: String? = nil
		) {
			self.`default` = `default`
			self.defaultRequest = defaultRequest
			self.max = max
			self.maxLimitRequestRatio = maxLimitRequestRatio
			self.min = min
			self.type = type
		}
	}
}

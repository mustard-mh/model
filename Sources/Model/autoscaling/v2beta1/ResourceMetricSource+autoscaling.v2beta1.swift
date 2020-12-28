//
// Copyright 2020 Swiftkube Project
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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.13
/// autoscaling.v2beta1.ResourceMetricSource
///

import Foundation

public extension autoscaling.v2beta1 {

	///
	/// ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
	///
	struct ResourceMetricSource: KubernetesResource {
		///
		/// name is the name of the resource in question.
		///
		public var name: String
		///
		/// targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
		///
		public var targetAverageUtilization: Int32?
		///
		/// targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type.
		///
		public var targetAverageValue: Quantity?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String,
			targetAverageUtilization: Int32? = nil,
			targetAverageValue: Quantity? = nil
		) {
			self.name = name
			self.targetAverageUtilization = targetAverageUtilization
			self.targetAverageValue = targetAverageValue
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta1.ResourceMetricSource {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case targetAverageUtilization = "targetAverageUtilization"
		case targetAverageValue = "targetAverageValue"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decode(String.self, forKey: .name)
		self.targetAverageUtilization = try container.decodeIfPresent(Int32.self, forKey: .targetAverageUtilization)
		self.targetAverageValue = try container.decodeIfPresent(Quantity.self, forKey: .targetAverageValue)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.name, forKey: .name)
		try container.encode(self.targetAverageUtilization, forKey: .targetAverageUtilization)
		try container.encode(self.targetAverageValue, forKey: .targetAverageValue)
	}

}


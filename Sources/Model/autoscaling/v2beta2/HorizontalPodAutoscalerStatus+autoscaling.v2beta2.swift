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
/// autoscaling.v2beta2.HorizontalPodAutoscalerStatus
///

import Foundation

public extension autoscaling.v2beta2 {

	///
	/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
	///
	struct HorizontalPodAutoscalerStatus: KubernetesResource {
		///
		/// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
		///
		public var conditions: [autoscaling.v2beta2.HorizontalPodAutoscalerCondition]
		///
		/// currentMetrics is the last read state of the metrics used by this autoscaler.
		///
		public var currentMetrics: [autoscaling.v2beta2.MetricStatus]?
		///
		/// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
		///
		public var currentReplicas: Int32
		///
		/// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
		///
		public var desiredReplicas: Int32
		///
		/// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
		///
		public var lastScaleTime: Date?
		///
		/// observedGeneration is the most recent generation observed by this autoscaler.
		///
		public var observedGeneration: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			conditions: [autoscaling.v2beta2.HorizontalPodAutoscalerCondition],
			currentMetrics: [autoscaling.v2beta2.MetricStatus]? = nil,
			currentReplicas: Int32,
			desiredReplicas: Int32,
			lastScaleTime: Date? = nil,
			observedGeneration: Int64? = nil
		) {
			self.conditions = conditions
			self.currentMetrics = currentMetrics
			self.currentReplicas = currentReplicas
			self.desiredReplicas = desiredReplicas
			self.lastScaleTime = lastScaleTime
			self.observedGeneration = observedGeneration
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta2.HorizontalPodAutoscalerStatus {

	private enum CodingKeys: String, CodingKey {

		case conditions = "conditions"
		case currentMetrics = "currentMetrics"
		case currentReplicas = "currentReplicas"
		case desiredReplicas = "desiredReplicas"
		case lastScaleTime = "lastScaleTime"
		case observedGeneration = "observedGeneration"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.conditions = try container.decode([autoscaling.v2beta2.HorizontalPodAutoscalerCondition].self, forKey: .conditions)
		self.currentMetrics = try container.decodeIfPresent([autoscaling.v2beta2.MetricStatus].self, forKey: .currentMetrics)
		self.currentReplicas = try container.decode(Int32.self, forKey: .currentReplicas)
		self.desiredReplicas = try container.decode(Int32.self, forKey: .desiredReplicas)
		self.lastScaleTime = try container.decodeIfPresent(Date.self, forKey: .lastScaleTime)
		self.observedGeneration = try container.decodeIfPresent(Int64.self, forKey: .observedGeneration)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.conditions, forKey: .conditions)
		try container.encode(self.currentMetrics, forKey: .currentMetrics)
		try container.encode(self.currentReplicas, forKey: .currentReplicas)
		try container.encode(self.desiredReplicas, forKey: .desiredReplicas)
		try container.encode(self.lastScaleTime, forKey: .lastScaleTime)
		try container.encode(self.observedGeneration, forKey: .observedGeneration)
	}

}


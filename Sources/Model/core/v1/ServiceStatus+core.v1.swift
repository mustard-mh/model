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
/// core.v1.ServiceStatus
///

import Foundation

public extension core.v1 {

	///
	/// ServiceStatus represents the current status of a service.
	///
	struct ServiceStatus: KubernetesResource {
		///
		/// LoadBalancer contains the current status of the load-balancer, if one is present.
		///
		public var loadBalancer: core.v1.LoadBalancerStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			loadBalancer: core.v1.LoadBalancerStatus? = nil
		) {
			self.loadBalancer = loadBalancer
		}
	}
}

///
/// Codable conformance
///
extension core.v1.ServiceStatus {

	private enum CodingKeys: String, CodingKey {

		case loadBalancer = "loadBalancer"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.loadBalancer = try container.decodeIfPresent(core.v1.LoadBalancerStatus.self, forKey: .loadBalancer)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.loadBalancer, forKey: .loadBalancer)
	}

}


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
/// apps.v1.DaemonSetSpec
///

import Foundation

public extension apps.v1 {

	///
	/// DaemonSetSpec is the specification of a daemon set.
	///
	struct DaemonSetSpec: KubernetesResource {
		///
		/// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
		///
		public var minReadySeconds: Int32?
		///
		/// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
		///
		public var revisionHistoryLimit: Int32?
		///
		/// A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
		///
		public var selector: meta.v1.LabelSelector
		///
		/// An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
		///
		public var template: core.v1.PodTemplateSpec
		///
		/// An update strategy to replace existing DaemonSet pods with new pods.
		///
		public var updateStrategy: apps.v1.DaemonSetUpdateStrategy?
		///
		/// Default memberwise initializer
		///
		public init(
			minReadySeconds: Int32? = nil,
			revisionHistoryLimit: Int32? = nil,
			selector: meta.v1.LabelSelector,
			template: core.v1.PodTemplateSpec,
			updateStrategy: apps.v1.DaemonSetUpdateStrategy? = nil
		) {
			self.minReadySeconds = minReadySeconds
			self.revisionHistoryLimit = revisionHistoryLimit
			self.selector = selector
			self.template = template
			self.updateStrategy = updateStrategy
		}
	}
}

///
/// Codable conformance
///
extension apps.v1.DaemonSetSpec {

	private enum CodingKeys: String, CodingKey {

		case minReadySeconds = "minReadySeconds"
		case revisionHistoryLimit = "revisionHistoryLimit"
		case selector = "selector"
		case template = "template"
		case updateStrategy = "updateStrategy"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.minReadySeconds = try container.decodeIfPresent(Int32.self, forKey: .minReadySeconds)
		self.revisionHistoryLimit = try container.decodeIfPresent(Int32.self, forKey: .revisionHistoryLimit)
		self.selector = try container.decode(meta.v1.LabelSelector.self, forKey: .selector)
		self.template = try container.decode(core.v1.PodTemplateSpec.self, forKey: .template)
		self.updateStrategy = try container.decodeIfPresent(apps.v1.DaemonSetUpdateStrategy.self, forKey: .updateStrategy)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.minReadySeconds, forKey: .minReadySeconds)
		try container.encode(self.revisionHistoryLimit, forKey: .revisionHistoryLimit)
		try container.encode(self.selector, forKey: .selector)
		try container.encode(self.template, forKey: .template)
		try container.encode(self.updateStrategy, forKey: .updateStrategy)
	}

}


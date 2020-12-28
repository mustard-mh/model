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
/// batch.v1.JobSpec
///

import Foundation

public extension batch.v1 {

	///
	/// JobSpec describes how the job execution will look like.
	///
	struct JobSpec: KubernetesResource {
		///
		/// Specifies the duration in seconds relative to the startTime that the job may be active before the system tries to terminate it; value must be positive integer
		///
		public var activeDeadlineSeconds: Int64?
		///
		/// Specifies the number of retries before marking this job failed. Defaults to 6
		///
		public var backoffLimit: Int32?
		///
		/// Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
		///
		public var completions: Int32?
		///
		/// manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old `extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector
		///
		public var manualSelector: Bool?
		///
		/// Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
		///
		public var parallelism: Int32?
		///
		/// A label query over pods that should match the pod count. Normally, the system sets this field for you. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// Describes the pod that will be created when executing a job. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
		///
		public var template: core.v1.PodTemplateSpec
		///
		/// ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes. This field is alpha-level and is only honored by servers that enable the TTLAfterFinished feature.
		///
		public var ttlSecondsAfterFinished: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			activeDeadlineSeconds: Int64? = nil,
			backoffLimit: Int32? = nil,
			completions: Int32? = nil,
			manualSelector: Bool? = nil,
			parallelism: Int32? = nil,
			selector: meta.v1.LabelSelector? = nil,
			template: core.v1.PodTemplateSpec,
			ttlSecondsAfterFinished: Int32? = nil
		) {
			self.activeDeadlineSeconds = activeDeadlineSeconds
			self.backoffLimit = backoffLimit
			self.completions = completions
			self.manualSelector = manualSelector
			self.parallelism = parallelism
			self.selector = selector
			self.template = template
			self.ttlSecondsAfterFinished = ttlSecondsAfterFinished
		}
	}
}

///
/// Codable conformance
///
extension batch.v1.JobSpec {

	private enum CodingKeys: String, CodingKey {

		case activeDeadlineSeconds = "activeDeadlineSeconds"
		case backoffLimit = "backoffLimit"
		case completions = "completions"
		case manualSelector = "manualSelector"
		case parallelism = "parallelism"
		case selector = "selector"
		case template = "template"
		case ttlSecondsAfterFinished = "ttlSecondsAfterFinished"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.activeDeadlineSeconds = try container.decodeIfPresent(Int64.self, forKey: .activeDeadlineSeconds)
		self.backoffLimit = try container.decodeIfPresent(Int32.self, forKey: .backoffLimit)
		self.completions = try container.decodeIfPresent(Int32.self, forKey: .completions)
		self.manualSelector = try container.decodeIfPresent(Bool.self, forKey: .manualSelector)
		self.parallelism = try container.decodeIfPresent(Int32.self, forKey: .parallelism)
		self.selector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .selector)
		self.template = try container.decode(core.v1.PodTemplateSpec.self, forKey: .template)
		self.ttlSecondsAfterFinished = try container.decodeIfPresent(Int32.self, forKey: .ttlSecondsAfterFinished)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.activeDeadlineSeconds, forKey: .activeDeadlineSeconds)
		try container.encode(self.backoffLimit, forKey: .backoffLimit)
		try container.encode(self.completions, forKey: .completions)
		try container.encode(self.manualSelector, forKey: .manualSelector)
		try container.encode(self.parallelism, forKey: .parallelism)
		try container.encode(self.selector, forKey: .selector)
		try container.encode(self.template, forKey: .template)
		try container.encode(self.ttlSecondsAfterFinished, forKey: .ttlSecondsAfterFinished)
	}

}


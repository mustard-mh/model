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

public extension flowcontrol.v1alpha1 {

	///
	/// QueuingConfiguration holds the configuration parameters for queuing
	///
	struct QueuingConfiguration: KubernetesResource {
		///
		/// `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
		///
		public var handSize: Int32?
		///
		/// `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
		///
		public var queueLengthLimit: Int32?
		///
		/// `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
		///
		public var queues: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			handSize: Int32? = nil,
			queueLengthLimit: Int32? = nil,
			queues: Int32? = nil
		) {
			self.handSize = handSize
			self.queueLengthLimit = queueLengthLimit
			self.queues = queues
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.QueuingConfiguration {

	private enum CodingKeys: String, CodingKey {
		case handSize = "handSize"
		case queueLengthLimit = "queueLengthLimit"
		case queues = "queues"
	}

}

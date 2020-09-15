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
	/// EndpointPort is a tuple that describes a single port.
	///
	struct EndpointPort: KubernetesResource {
		///
		/// The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
		///
		public var name: String?
		///
		/// The port number of the endpoint.
		///
		public var port: Int32
		///
		/// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
		///
		public var `protocol`: String?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String? = nil,
			port: Int32,
			`protocol`: String? = nil
		) {
			self.name = name
			self.port = port
			self.`protocol` = `protocol`
		}
	}
}

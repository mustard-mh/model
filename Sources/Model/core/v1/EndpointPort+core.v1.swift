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
/// Kubernetes v1.20.9
/// core.v1.EndpointPort
///

import Foundation

public extension core.v1 {

	///
	/// EndpointPort is a tuple that describes a single port.
	///
	struct EndpointPort: KubernetesResource {
		///
		/// The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. This is a beta field that is guarded by the ServiceAppProtocol feature gate and enabled by default.
		///
		public var appProtocol: String?
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
			appProtocol: String? = nil,
			name: String? = nil,
			port: Int32,
			`protocol`: String? = nil
		) {
			self.appProtocol = appProtocol
			self.name = name
			self.port = port
			self.`protocol` = `protocol`
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.EndpointPort {

	private enum CodingKeys: String, CodingKey {

		case appProtocol = "appProtocol"
		case name = "name"
		case port = "port"
		case `protocol` = "protocol"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.appProtocol = try container.decodeIfPresent(String.self, forKey: .appProtocol)
		self.name = try container.decodeIfPresent(String.self, forKey: .name)
		self.port = try container.decode(Int32.self, forKey: .port)
		self.`protocol` = try container.decodeIfPresent(String.self, forKey: .`protocol`)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(appProtocol, forKey: .appProtocol)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(port, forKey: .port)
		try encodingContainer.encode(`protocol`, forKey: .`protocol`)
	}
}

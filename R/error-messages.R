mssgs <- list(
  HTTPContinue = "\n The client SHOULD continue with its request. This interim response
  is used to inform the client that the initial part of the request has been
  received and has not yet been rejected by the server. The client SHOULD continue
  by sending the remainder of the request or, if the request has already been
  completed, ignore this response. The server MUST send a final response after the
  request has been completed. See section 8.2.3 for detailed discussion of the
  use and handling of this status code.",
  HTTPSwitchProtocol = "\n The server understands and is willing to comply with the
  client's request, via the Upgrade message header field (section 14.42), for a
  change in the application protocol being used on this connection. The server will
  switch protocols to those defined by the response's Upgrade header field immediately
  after the empty line which terminates the 101 response.

  The protocol SHOULD be switched only when it is advantageous to do so. For example,
  switching to a newer version of HTTP is advantageous over older versions, and
  switching to a real-time, synchronous protocol might be advantageous when
  delivering resources that use such features.",
  HTTPOK = "\n The request has succeeded. The information returned with the response
  is dependent on the method used in the request, for example:
  GET an entity corresponding to the requested resource is sent in the response;
  HEAD the entity-header fields corresponding to the requested resource are sent
    in the response without any message-body;
  POST an entity describing or containing the result of the action;
  TRACE an entity containing the request message as received by the end server.",
  HTTPCreated = "\n The request has been fulfilled and resulted in a new resource
  being created. The newly created resource can be referenced by the URI(s) returned
  in the entity of the response, with the most specific URI for the resource given
  by a Location header field. The response SHOULD include an entity containing a
  list of resource characteristics and location(s) from which the user or user
  agent can choose the one most appropriate. The entity format is specified by the
  media type given in the Content-Type header field. The origin server MUST create
  the resource before returning the 201 status code. If the action cannot be
  carried out immediately, the server SHOULD respond with 202 (Accepted) response
  instead.

  A 201 response MAY contain an ETag response header field indicating the current
  value of the entity tag for the requested variant just created, see section 14.19.",
  HTTPAccepted = "\n The request has been accepted for processing, but the processing
  has not been completed. The request might or might not eventually be acted upon,
  as it might be disallowed when processing actually takes place. There is no
  facility for re-sending a status code from an asynchronous operation such as this.

  The 202 response is intentionally non-committal. Its purpose is to allow a server
  to accept a request for some other process (perhaps a batch-oriented process that
  is only run once per day) without requiring that the user agent's connection to
  the server persist until the process is completed. The entity returned with this
  response SHOULD include an indication of the request's current status and either
  a pointer to a status monitor or some estimate of when the user can expect the
  request to be fulfilled.",
  HTTPNonAuthoritativeInformation = "\n The returned metainformation in the entity-header
  is not the definitive set as available from the origin server, but is gathered from
  a local or a third-party copy. The set presented MAY be a subset or superset of the
  original version. For example, including local annotation information about the
  resource might result in a superset of the metainformation known by the origin
  server. Use of this response code is not required and is only appropriate when the
  response would otherwise be 200 (OK).",
  HTTPNoContent = "\n The server has fulfilled the request but does not need to return
  an entity-body, and might want to return updated metainformation. The response MAY
  include new or updated metainformation in the form of entity-headers, which if
  present SHOULD be associated with the requested variant.

  If the client is a user agent, it SHOULD NOT change its document view from that
  which caused the request to be sent. This response is primarily intended to allow
  input for actions to take place without causing a change to the user agent's active
  document view, although any new or updated metainformation SHOULD be applied to
  the document currently in the user agent's active view.

  The 204 response MUST NOT include a message-body, and thus is always terminated by
  the first empty line after the header fields.",
  HTTPResetContent = "\n The server has fulfilled the request and the user agent SHOULD
  reset the document view which caused the request to be sent. This response is
  primarily intended to allow input for actions to take place via user input,
  followed by a clearing of the form in which the input is given so that the user
  can easily initiate another input action. The response MUST NOT include an entity.",
  HTTPPartialContent = "\n The server has fulfilled the partial GET request for the resource.
  The request MUST have included a Range header field (section 14.35) indicating the
  desired range, and MAY have included an If-Range header field (section 14.27) to make
  the request conditional.

  The response MUST include the following header fields:

      - Either a Content-Range header field (section 14.16) indicating
        the range included with this response, or a multipart/byteranges
        Content-Type including Content-Range fields for each part. If a
        Content-Length header field is present in the response, its
        value MUST match the actual number of OCTETs transmitted in the
        message-body.
      - Date
      - ETag and/or Content-Location, if the header would have been sent
        in a 200 response to the same request
      - Expires, Cache-Control, and/or Vary, if the field-value might
        differ from that sent in any previous response for the same
        variant

  If the 206 response is the result of an If-Range request that used a strong cache
  validator (see section 13.3.3), the response SHOULD NOT include other entity-headers.
  If the response is the result of an If-Range request that used a weak validator,
  the response MUST NOT include other entity-headers; this prevents inconsistencies
  between cached entity-bodies and updated headers. Otherwise, the response MUST include
  all of the entity-headers that would have been returned with a 200 (OK) response
  to the same request.

  A cache MUST NOT combine a 206 response with other previously cached content if the
  ETag or Last-Modified headers do not match exactly, see 13.5.4.

  A cache that does not support the Range and Content-Range headers MUST NOT cache 206
  (Partial) responses.",
  HTTPMultipleChoices = "\n The requested resource corresponds to any one of a set of
  representations, each with its own specific location, and agent- driven negotiation
  information (section 12) is being provided so that the user (or user agent) can
  select a preferred representation and redirect its request to that location.

  Unless it was a HEAD request, the response SHOULD include an entity containing a list
  of resource characteristics and location(s) from which the user or user agent can
  choose the one most appropriate. The entity format is specified by the media type
  given in the Content- Type header field. Depending upon the format and the capabilities
  of the user agent, selection of the most appropriate choice MAY be performed automatically.
  However, this specification does not define any standard for such automatic selection.

  If the server has a preferred choice of representation, it SHOULD include the specific
  URI for that representation in the Location field; user agents MAY use the Location
  field value for automatic redirection. This response is cacheable unless indicated
  otherwise.",
  HTTPMovedPermanently = "\n The requested resource has been assigned a new permanent URI and
  any future references to this resource SHOULD use one of the returned URIs. Clients with
  link editing capabilities ought to automatically re-link references to the Request-URI
  to one or more of the new references returned by the server, where possible. This
  response is cacheable unless indicated otherwise.

  The new permanent URI SHOULD be given by the Location field in the response. Unless the
  request method was HEAD, the entity of the response SHOULD contain a short hypertext
  note with a hyperlink to the new URI(s).

  If the 301 status code is received in response to a request other than GET or HEAD,
  the user agent MUST NOT automatically redirect the request unless it can be confirmed
  by the user, since this might change the conditions under which the request was issued.",
  HTTPFound = "\n The requested resource resides temporarily under a different URI. Since the
  redirection might be altered on occasion, the client SHOULD continue to use the
  Request-URI for future requests. This response is only cacheable if indicated by a
  Cache-Control or Expires header field.

  The temporary URI SHOULD be given by the Location field in the response. Unless the
  request method was HEAD, the entity of the response SHOULD contain a short hypertext
  note with a hyperlink to the new URI(s).

  If the 302 status code is received in response to a request other than GET or HEAD,
  the user agent MUST NOT automatically redirect the request unless it can be confirmed
  by the user, since this might change the conditions under which the request was issued.",
  HTTPSeeOther = "\n The response to the request can be found under a different URI and
  SHOULD be retrieved using a GET method on that resource. This method exists primarily to
  allow the output of a POST-activated script to redirect the user agent to a selected
  resource. The new URI is not a substitute reference for the originally requested
  resource. The 303 response MUST NOT be cached, but the response to the second (redirected)
  request might be cacheable.

  The different URI SHOULD be given by the Location field in the response. Unless the request
  method was HEAD, the entity of the response SHOULD contain a short hypertext note with a
  hyperlink to the new URI(s).",
  HTTPNotModified = "\n If the client has performed a conditional GET request and access is allowed,
  but the document has not been modified, the server SHOULD respond with this status code.
  The 304 response MUST NOT contain a message-body, and thus is always terminated by the first
  empty line after the header fields.

  The response MUST include the following header fields:

      - Date, unless its omission is required by section 14.18.1

  If a clockless origin server obeys these rules, and proxies and clients add their own Date
  to any response received without one (as already specified by [RFC 2068], section 14.19),
  caches will operate correctly.

      - ETag and/or Content-Location, if the header would have been sent
        in a 200 response to the same request
      - Expires, Cache-Control, and/or Vary, if the field-value might
        differ from that sent in any previous response for the same
        variant

  If the conditional GET used a strong cache validator (see section 13.3.3), the response
  SHOULD NOT include other entity-headers. Otherwise (i.e., the conditional GET used a weak
  validator), the response MUST NOT include other entity-headers; this prevents
  inconsistencies between cached entity-bodies and updated headers.

  If a 304 response indicates an entity not currently cached, then the cache MUST disregard
  the response and repeat the request without the conditional.

  If a cache uses a received 304 response to update a cache entry, the cache MUST update the
  entry to reflect any new field values given in the response.",
  HTTPUseProxy = "\n The requested resource MUST be accessed through the proxy given by the
  Location field. The Location field gives the URI of the proxy. The recipient is expected to
  repeat this single request via the proxy. 305 responses MUST only be generated by origin servers.",
  HTTPRequestURITooLong = "\n The server is refusing to service the request because the Request-URI is
  longer than the server is willing to interpret. This rare condition is only likely
  to occur when a client has improperly converted a POST request to a GET request
  with long query information, when the client has descended into a URI black hole
  of redirection (e.g., a redirected URI prefix that points to a suffix of itself),
  or when the server is under attack by a client attempting to exploit security
  holes present in some servers using fixed-length buffers for reading or
  manipulating the Request-URI.",
  HTTPRequestNotFound = "\n The server has not found anything matching the Request-URI. No
  indication is given of whether the condition is temporary or permanent. The
  410 (Gone) status code SHOULD be used if the server knows, through some
  internally configurable mechanism, that an old resource is permanently
  unavailable and has no forwarding address. This status code is commonly
  used when the server does not wish to reveal exactly why the request has
  been refused, or when no other response is applicable.",
  HTTPTeaPot = "\n not a real HTTP status code, but often used for demonstration purposes"
)

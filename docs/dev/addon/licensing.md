Licensing is an important topic to decide if an add-on is accessible or whether its offered functionalities
should be hidden because the license does not own specific characteristics.

In general each add-on is a micro-service implementing a specific interface and exposing different capabilities to
integrate into docupike's ecosystem. That said one can say that add-ons are encapsulated, responsible and
self-sufficient software. The API-based communication is the only way docupike and add-ons can communicate
and exchange data.

Because of this perspective docupike shifts as much responsibility to add-ons as possible to transfer control about
add-on related aspects.
Licensing is also considered as add-on related why the decision maker should be the add-on itself.

## Technical workflow

docupike licenses allow to include add-on specific information and should therefore serve as main resource in
the decision process. This is the preferred way.
To expose the license to registered add-ons docupike will embedded these information into each request sent to the
add-on.
The add-on can access the license beside of other information from the HTTP-Header `data`.
The content is JSON encoded and should be decoded before accessing it:

```json
{
  "settings": [],
  "docu": {
      "url": "http://url-to-docupike.cloud/api",
      "apikey": "ey...."
  }, 
  "license": [
      {
          "title": "Prod 1",
          "objects": 100,
          "attributes": {
              "prop1": "value1",
              "prop2": "value2",
              [...]
          }
      },
      {
          "title": "Prod 2",
          "objects": 100,
          "attributes": {
              "prop1": "value1",
              "prop2": "value2",
              [...]
          }
      },
      [...]
  ]
}
```

## License checks

License checks should be an essential part of each request processed by the add-on which is described above.
Because license information can change over time the license checking should be done on each request the add-on receives.
These guarantees that the add-on can react on changes in the license.

Another case is the add-on registration procedure which is the first interaction between add-on and docupike.
docupike's add-on infrastructure allows add-ons to decide whether a registration is possible or not.
The main use-case here is again license related but could be something else also.
In general the registration process should be prevented if license requirements are not met at all from add-on perspective.
If the add-on decides to permit the registration process because of unmet dependencies it should return HTTP-Code `403 Forbidden`.
Optionally the add-on can add a short problem description to its response:

```
HTTP/1.1 403 Forbidden
Content-Type: text/plain

Unsufficient license to register add-on.
```

The same flow also applies to `enable` hook:

![Register/Enable add-ons](licensing-1.png)

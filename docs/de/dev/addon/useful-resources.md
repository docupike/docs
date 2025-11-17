The following document includes useful resources to extend your knowledge about add-on development and everything which could help you on this journey.

## Add-on: Link Checker

If you want to know how a simple add-on can look like to get a general understanding how things are linked together
or play around with the code you can use our [Link Checker add-on](https://bitbucket.org/synetics/addon-link-health-checker/src/main/).

This add-on allows you to simply check the URLs documented in the `Access` category for their availability.
Therefore, it implements several features and makes use of a wide variety of possibilities. It can perfectly serve you as starting point
to get in touch with a working example of a i-doit up add-on.

All you need to do to install it is described in the [`README.md`](https://bitbucket.org/synetics/addon-link-health-checker/src/main/README.md).

## API Documentation

In case you read this documentation carefully you know that the only way to interact with i-doit up is its API. Because of this you should have
a general idea of the API and its functionalities especially if you plan to implement complex use cases.

For this purpose you can refer to the API documentation on your own instance which is accessible under `https://<your-instance>.docupike.cloud/api/v2/docs.html`.
It is strongly advised to read the "General Section" which will give you an overall understanding of the API and its capabilities.


## PHP API Client

You might have noticed that our [Link Checker add-on](https://bitbucket.org/synetics/addon-link-health-checker/src/main/README.md)
relies primarily on our [PHP based API-Client](https://packagist.org/packages/docupike/api-client).
This package is hosted on [packagist](https://packagist.org/packages/docupike/api-client) and can be simply integrated into your add-on or other projects over composer:

```
composer require i-doit up/api-client
```

Please refer to the description on [packagist](https://packagist.org/packages/docupike/api-client) to get a general understanding how to integrate and use
this library.

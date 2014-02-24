---
layout: page
title: Cart Endpoint
categories: API Documentation
resource: true
version: v2
order: 3
---

# Cart Endpoint
**URL:** https://event.jirafe.com/v2/{site-id}/cart [POST]

**Schema:** https://github.com/jirafe/docs/blob/master/jsonschema/v2/cart.json

Cart events are sent whenever a user adds, removes or alters their cart. *Note:* this event is distinct from and order event, which is the event that happens when a cart is purchased.

#### Example
```json
{
    "id": "8797436543019",
    "create_date": "2013-06-17T15:16:10.000Z",
    "change_date": "2013-06-17T15:16:15.000Z",
    "subtotal": 99.85,
    "total": 99.85,
    "total_tax": 4.75,
    "total_shipping": 0.0,
    "total_payment_cost": 0.0,
    "total_discounts": 0.0,
    "currency": "USD",
    "cookies": {},
    "items": [
        {
            "id": "8797371007020",
            "create_date": "2013-06-17T15:16:11.000Z",
            "change_date": "2013-06-17T15:16:11.000Z",
            "cart_item_number": "1",
            "quantity": 1,
            "price": 99.85,
            "discount_price": 0.0,
            "product": {
                "id": "8796107014145",
                "create_date": "2013-03-28T19:46:39.000Z",
                "change_date": "2013-03-28T19:50:58.000Z",
                "is_product": true,
                "is_sku": true,
                "catalog": {
                    "id": "electronicsProductCatalog",
                    "name": "Electronics Product Catalog"
                },
                "name": "PowerShot A480",
                "code": "1934793",
                "brand": "Canon",
                "categories": [
                    {
                        "id": "8796098461838",
                        "name": "Digital Compacts"
                    },
                    {
                        "id": "8796099248270",
                        "name": "Canon"
                    }
                ],
                "images": [
                    {
                        "url": "http://yourstore.com/images/the_photo.jpg"
                    }
                ]
            }
        }
    ],
    "previous_items": [
    ],
    "customer": {
        "id": "abc123",
        "create_date": "2013-06-17T15:16:11.000Z",
        "change_date": "2013-06-17T15:16:11.000Z",
        "email": "foo@example.com",
        "first_name": "Jane",
        "last_name": "Doe"
    },
    "visit": {
        "visit_id": "1234",
        "visitor_id": "4321",
        "pageview_id": "5678",
        "last_pageview_id": "8765"
    }
}
```
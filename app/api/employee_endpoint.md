---

layout: page
title: Employee Endpoint
categories: API Documentation
resource: true
description: Sending employee data to Jirafe API
version: v2
order: 7

---

# Employee Endpoint
**URL:** https://event.jirafe.com/v2/{site-id}/employee [POST]

**Schema:** https://github.com/jirafe/docs/blob/master/jsonschema/v2/employee.json

#### Example
```json
{
    "id": "532sdfg",
    "active_flag": true,
    "change_date": "2013-03-28T19:38:03.000Z",
    "create_date": "2013-03-28T19:38:03.000Z",
    "first_name": "Product",
    "last_name": "Manager",
    "email": "product_manager@example.com"
}
```

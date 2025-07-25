# AWS CDN (Content Delivery Network) Overview

A **CDN (Content Delivery Network)** is a globally distributed network of servers designed to deliver web content (such as images, videos, or HTML files) to users with high availability and low latency.

In **AWS**, the CDN service is primarily powered by **Amazon CloudFront**. It enhances the user experience by caching and delivering content from locations closer to the end user — known as **edge locations**.

---

## Why Use a CDN in AWS?

* Faster content delivery
* Low latency for global users
* Reduced load on origin servers
* High availability and fault tolerance

---

## Types of Content Delivered via CDN

* **Static Content**: Images, videos, CSS, JavaScript files, fonts, documents.
* **Dynamic Content**: Server-generated data like API responses or personalized content.

---

## HTTP Methods & Caching

| HTTP Method | CDN Cache Behavior |
| ----------- | ------------------ |
| `GET`       |  Typically cached |
| `POST`      |  Not cached       |
| `PUT`       |  Not cached       |
| `DELETE`    |  Not cached       |

> Only `GET` and `HEAD` requests are cached by default in CloudFront.

---

## How CDN Works in AWS

### Step-by-Step:

1. **Choose the Region (Origin)**

   * Identify where your original content is stored (e.g., S3 bucket, EC2, Load Balancer, etc.).

2. **Configure Cache Behaviors**

   * Define which paths and content types should be cached.
     **Examples:**

     * `dev.royalreddy.site/products`
     * `dev.royalreddy.site/images`
     * `dev.royalreddy.site/static/*`

3. **Edge Locations**

   * AWS caches the content at **edge locations** spread across the globe, closer to users.

---

## Cache Invalidation

When content is updated (e.g., during a new deployment), outdated cached content must be removed.

* Use **Invalidation Requests** to remove or update cache for specific paths.
* Example:

  ```
  /static/*
  /images/logo.png
  ```

> This ensures users receive the **latest version** of your site after changes.

/**
 * Cloudflare Worker for serving fonts from R2 bucket
 * Handles requests to cdn.hixbe.com/s/*
 * Structure: /s/{family}/v{version}/{filename}
 */

export default {
  async fetch(request, env) {
    const url = new URL(request.url);

    // Only handle /s/* paths
    if (!url.pathname.startsWith('/s/')) {
      return new Response('Not Found', { status: 404 });
    }

    // Remove leading /s/ to get the R2 key
    const key = url.pathname.substring(3);

    // If no key, return 404
    if (!key) {
      return new Response('Not Found', { status: 404 });
    }

    try {
      // Get the object from R2
      const object = await env.public_cdn.get(key);

      if (object === null) {
        return new Response('Not Found', { status: 404 });
      }

      // Create response with the object body
      const response = new Response(object.body, {
        headers: {
          'Content-Type': object.httpMetadata?.contentType || 'application/octet-stream',
          'Cache-Control': 'public, max-age=31536000, immutable', // Cache for 1 year
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET',
          'Access-Control-Allow-Headers': '*',
        },
      });

      return response;
    } catch (error) {
      console.error('Error fetching from R2:', error);
      return new Response('Internal Server Error', { status: 500 });
    }
  },
};

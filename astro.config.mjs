import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  integrations: [
    tailwind(),
    sitemap({
      // Ensure sitemap is generated for all pages
      filter: (page) => !page.includes('/404'),
      customPages: [
        'https://signaturetreeservices.com/',
        'https://signaturetreeservices.com/services/',
        'https://signaturetreeservices.com/contact/'
      ]
    })
  ],
  site: 'https://signaturetreeservices.com',
  compressHTML: true,
  build: {
    assets: 'assets'
  }
});

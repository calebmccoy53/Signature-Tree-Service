import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  integrations: [tailwind()],
  site: 'https://signaturetreeservices.com',
  compressHTML: true,
  build: {
    assets: 'assets'
  }
});

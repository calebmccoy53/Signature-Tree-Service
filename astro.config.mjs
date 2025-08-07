import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  integrations: [tailwind()],
  site: 'https://signature-tree-service.com',
  compressHTML: true,
  build: {
    assets: 'assets'
  }
});

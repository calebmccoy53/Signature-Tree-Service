#!/bin/bash

echo "🌳 Setting up Signature Tree Service website..."

# Create directory structure
mkdir -p src/components
mkdir -p src/layouts
mkdir -p src/pages
mkdir -p public

echo "📁 Created directory structure"

# Create package.json
cat > package.json << 'PACKAGE'
{
  "name": "signature-tree-service",
  "type": "module",
  "version": "0.0.1",
  "scripts": {
    "dev": "astro dev",
    "start": "astro dev",
    "build": "astro check && astro build",
    "preview": "astro preview",
    "astro": "astro"
  },
  "dependencies": {
    "@astrojs/check": "^0.9.3",
    "@astrojs/tailwind": "^5.1.0",
    "astro": "^4.15.9",
    "tailwindcss": "^3.4.10",
    "typescript": "^5.6.2"
  },
  "devDependencies": {
    "@types/node": "^22.5.4"
  }
}
PACKAGE

echo "✅ Created package.json"

# Create .gitignore
cat > .gitignore << 'GITIGNORE'
node_modules/
dist/
.env
.DS_Store
.astro/
*.log
GITIGNORE

echo "✅ Created .gitignore"

echo "🚀 Basic setup complete!"
echo "Next: Run './setup.sh' then manually create the remaining files"

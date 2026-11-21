import { defineConfig } from 'vite';

export default defineConfig({
  base: './',
  build: { target: ['chrome89', 'edge89', 'firefox89', 'safari15'] },
});

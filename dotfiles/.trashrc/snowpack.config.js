module.exports = {
  extends: '@sveltejs/snowpack-config',
  plugins: [
    [
      '@snowpack/plugin-build-script',
      {
        cmd: 'postcss',
        input: ['.css', '.pcss'],
        output: ['.css'],
      },
    ],
    [
      '@snowpack/plugin-svelte',
      {
        compilerOptions: {
          hydratable: true,
        },
      },
    ],
    '@snowpack/plugin-typescript',
  ],
  mount: {
    'src/components': '/_components',
  },
  alias: {
    $components: './src/components',
  },
};

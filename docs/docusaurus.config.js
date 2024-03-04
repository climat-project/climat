// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

const CLIMAT = 'CLiMAT';

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: CLIMAT,
  tagline: '',
  url: 'https://climat-project.github.io',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/logo.svg',

  // GitHub pages deployment config.
  organizationName: 'climat-project',
  projectName: 'climat-project.github.io',
  deploymentBranch: "master",

  // Even if you don't use internalization, you can use this field to set useful
  // metadata like html lang. For example, if your site is Chinese, you may want
  // to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
        },
        blog: {
          showReadingTime: true,
          // Please change this to your repo.
          // Remove this to remove the "edit this page" links.
          editUrl:
            'https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      announcementBar: {
        id: 'prerelease',
        content:
          '<strong> ⚠️ PRE-RELEASE: Everything is subject to change ⚠️</strong>',
        backgroundColor: '#fff28c',
        textColor: 'red',
        isCloseable: false,
      },
      navbar: {
        title: CLIMAT,
        logo: {
          alt: 'Climat project Logo',
          src: 'img/logo.svg'
        },
        items: [
          {to: 'docs/getting-started/introduction', label: 'Getting started', position: 'left' },
          {to: 'docs/cli-dsl-reference/overview', label: 'Cli DSL reference', position: 'left' },

          // TODO: write
          //{to: 'docs/coming-soon', label: 'Lib docs', position: 'left' },
          
          {
            href: 'https://github.com/climat-project',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        copyright: `Copyright © ${new Date().getFullYear()} ${CLIMAT}. Built with <a href="https://docusaurus.io/"><img alt="Docusaurus logo" height="13px" src="img/docusaurus.ico" /> Docusaurus</a>.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),

    plugins: [require.resolve("@cmfcmf/docusaurus-search-local")]
};

module.exports = config;

const syntaxHighlight = require("@11ty/eleventy-plugin-syntaxhighlight");

module.exports = function (eleventyConfig) {
  // Reload browser when CSS changes
  eleventyConfig.addWatchTarget("_site/*.css");
  eleventyConfig.addPlugin(syntaxHighlight);
  eleventyConfig.setBrowserSyncConfig({
    files: ["_site/*.css"],
  });

  return {
    htmlTemplateEngine: "njk",
    dir: {
      includes: "docs/_includes",
    },
  };
};

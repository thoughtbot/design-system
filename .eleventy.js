module.exports = function (eleventyConfig) {
  // Reload browser when CSS changes
  eleventyConfig.addWatchTarget("_site/*.css");
  eleventyConfig.setBrowserSyncConfig({
    files: ["_site/*.css"],
  });

  return {
    dir: {
      includes: "docs/_includes",
    },
  };
};

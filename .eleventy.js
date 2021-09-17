module.exports = function (eleventyConfig) {
  // Reload borwser when CSS changes
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

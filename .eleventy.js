const sass = require("sass");
const fs = require("fs").promises;

module.exports = function (eleventyConfig) {
  eleventyConfig.addWatchTarget("./**/*.scss");
  eleventyConfig.addShortcode("stylesheet", (input) => {
    const outputFilename = input.split("/")[1].split(".")[0];
    sass.render(
      {
        file: input,
      },
      (error, result) => {
        fs.writeFile(`_site/${outputFilename}.css`, result.css, function (err) {
          if (err) {
            throw new Error(error);
          }
        });
      }
    );
    return `<link rel='stylesheet' type='text/css' href='/${outputFilename}.css' />`;
  });

  return {
    dir: {
      includes: "docs/_includes",
    },
  };
};

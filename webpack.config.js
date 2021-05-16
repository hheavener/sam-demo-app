const path = require("path");

module.exports = {
    // Minifies and uglifies code
    mode: "production",
    // Determines used exports for each module
    optimization: {
        usedExports: true,
    },
    // The environment the code will run in
    target: "node",
    /* Each Lambda is treated as an entry. The name
     * of the entry will be the filepath in the output.
     * In this example, "echo/index" will be used to
     * generate the output during the build process.
     */
    entry: {
        "echo/index": "/src/lambdas/echo/index.js",
        "ping/index": "/src/lambdas/ping/index.js",
    },
    /* Specifies how to output the entry points.
     * The path will place a "build" folder in the main
     * directory of the project. The filename uses the
     * name in each entry. For example, "echo/index"
     * becomes "echo/index.js", which provides an echo
     * folder with an index.js file. The libraryTarget
     * I'm not 100% sure about but it does something to
     * make sure that undefined globals aren't referenced
     * in the bundled package.
     */
    output: {
        path: path.resolve(__dirname, "build"),
        filename: "[name].js",
        libraryTarget: "umd",
    },
};

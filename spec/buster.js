var config = module.exports;

config["HDO javascript tests"] = {
    rootPath: "../",
    environment: "browser",
    sources: [
        "spec/javascript/lib/*.js",
        "app/assets/javascripts/lib/*.js",
        "app/assets/javascripts/lazyLoadCarouselImages.js"
    ],
    tests: [
        "spec/javascript/*Test.js"
    ]
};
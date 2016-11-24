var exec = require('cordova/exec');

module.exports = {
  version: '0.0.1',

  start: function (publisherId, publisherSecred) {
    exec(null, null, "RComScorePlugin", "initializeComScore", [publisherId, publisherSecred]);
  }
};

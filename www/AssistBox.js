cordova.define("cordova-plugin-assistbox.AssistBox", function(
  require,
  exports,
  module
) {
  var exec = require("cordova/exec");

  var AssistBox = {
    goToAssistBox: function(successCallback, errorCallback, args) {
      alert("inside AssistBox.js");
      exec(successCallback, errorCallback, "AssistBox", "goToAssistBox", args);
    }
  };

  module.exports = AssistBox;
});

var exec = require("cordova/exec");
function AssistBox() {}

AssistBox.prototype.goToAssistBox = function(
  successCallback,
  errorCallback,
  token,
  mobileServiceEndpoint,
  mobileStorageEndpoint
) {
  exec(successCallback, errorCallback, "AssistBox", "goToAssistBox", [token, mobileServiceEndpoint, mobileStorageEndpoint]);
};
module.exports = new AssistBox();

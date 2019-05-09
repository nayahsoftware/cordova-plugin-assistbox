var exec = require("cordova/exec");
function AssistBox() {};
  
AssistBox.prototype.goToAssistBox = function(successCallback, errorCallback,args) {
	exec(successCallback, errorCallback, "AssistBox", "goToAssistBox", args);
};
module.exports = new AssistBox();


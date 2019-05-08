function AssistBox() {
}

AssistBox.prototype.goToAssistBox = function (successCallback, errorCallback, args) {
  cordova.exec(successCallback, errorCallback, "AssistBox", "goToAssistBox", args?args:[]);
};

AssistBox.install = function () {
  if (!window.plugins) {
    window.plugins = {};
  }
  window.plugins.assistBox = new AssistBox();
  return window.plugins.assistBox;
};

cordova.addConstructor(AssistBox.install);

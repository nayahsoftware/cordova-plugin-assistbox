'use strict';

function LocalStorageUtil() {
  return {
    store: function (storageKey,data) {
      return localStorage.setItem(storageKey, data);
    },
    retrieve: function (storageKey) {
      return localStorage.getItem(storageKey);
    },
    remove: function (storageKey){
      return  localStorage.removeItem(storageKey);
    },
    getAndRemove: function (storageKey) {
      var data = localStorage.getItem(storageKey);
      localStorage.removeItem(storageKey);
      return data;
    }
  };
}

module.exports=LocalStorageUtil;



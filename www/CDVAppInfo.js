(function() {
  
  CDVAppInfo = (function(){

    function CDVAppInfo() {}

    var cordovaRef = window.PhoneGap || window.Cordova || window.cordova;
    var serviceName = "AppInfo";
  
    function cordovaExec(action, successCallback, errorCallback, args) {
      cordovaRef.exec(successCallback, errorCallback, serviceName, action, args);    
    }

    CDVAppInfo.prototype.version = function(successCallback, errorCallback) {
      cordovaExec("version", successCallback, errorCallback, []);
    }

    CDVAppInfo.prototype.build = function(successCallback, errorCallback) {
      cordovaExec("build", successCallback, errorCallback, []);
    }

    CDVAppInfo.prototype.customKey = function(key, successCallback, errorCallback) {
      cordovaExec("customKey", successCallback, errorCallback, [key]);
    }
    
    return CDVAppInfo;
    
  })();
    
  window.plugins = window.plugins || {};
  window.plugins.appInfo = window.plugins.appInfo || new CDVAppInfo();
  
})();
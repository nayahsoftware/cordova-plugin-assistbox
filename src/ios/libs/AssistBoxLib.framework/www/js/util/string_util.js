
function StringUtil() {
  this.isEmpty = function(str) {
    return (!str || 0 === str.length);
  }

}
module.exports=StringUtil;


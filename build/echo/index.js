!function(e,o){if("object"==typeof exports&&"object"==typeof module)module.exports=o();else if("function"==typeof define&&define.amd)define([],o);else{var t=o();for(var f in t)("object"==typeof exports?exports:e)[f]=t[f]}}(global,(function(){return{handler:async e=>({statusCode:200,body:JSON.stringify(e)})}}));
// #PACKAGE: clazz
// #MODULE: clazz
// 
/**
 * Copyright (c) 2016 CT1905
 * Created by Nguyen Ba Chi Cong<nbchicong@gmail.com>
 *         on 25/03/2016.
 * -------------------------------------------
 * @project infashion-website
 * @file clazz
 * @author nbchicong
 */
(function () {
  UI.Clazz = function () {
    this.id = this.id || null;
  };
  UI.Clazz.prototype = {
    setId: function (id) {
      this.id = id;
    },
    getId: function () {
      return this.id;
    }
  }
})();
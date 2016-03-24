// #PACKAGE: entity
// #MODULE: Entity
// 
/**
 * Copyright (c) 2016 CT1905
 * Created by Nguyen Ba Chi Cong<nbchicong@gmail.com>
 *         on 25/03/2016.
 * -------------------------------------------
 * @project infashion-website
 * @file Entity
 * @author nbchicong
 */
(function () {
  InFashion.Entity = function (options) {
    BaseUI.apply(this, options || {});
    this.idProperties = this.idProperties || 'id';
    this.entityId = this.entityId || null;
    this.store = new Hashtable();
    InFashion.Entity.superclass.constructor.call(this, options || {});
  };
  BaseUI.extend(InFashion.Entity, UI.Clazz, {
    setEntityId: function (id) {
      this.entityId = id;
    },
    getEntityId: function () {
      return this.entityId;
    },
    getIdProperties: function () {
      return this.idProperties;
    },
    pushAll: function (data) {
      var __data = data || [];
      for (var i = 0; i < __data.length; i++) {
        this.store.put(__data[i][this.getIdProperties()], __data[i]);
      }
    },
    getEntityById: function (id) {
      return this.getStore().get(id);
    },
    getStore: function () {
      return this.store;
    },
    clearStore: function () {
      this.store.clear();
    },
    create: function () {},
    update: function () {},
    remove: function () {}
  });
})();
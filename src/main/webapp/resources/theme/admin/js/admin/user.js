// #PACKAGE: user
// #MODULE: user
// 
/**
 * Copyright (c) 2016 CT1905
 * Created by Nguyen Ba Chi Cong<nbchicong@gmail.com>
 *         on 05/03/2016.
 * -------------------------------------------
 * @project infashion-ui
 * @file user
 * @author nbchicong
 */
$(function () {
  InFashion.UserEntity = function () {
    var _this = this;
    this.id = '';
    this.$toolbar = {
      BACK: $('#btn-back'),
      CREATE: $('#btn-create'),
      SAVE: $('#btn-save')
    };
    this.$listUser = $('#list-user');
    this.$listUserBox = $('#list-user-box');
    this.$formCreateUser = $('#form-create-user');
    this.$formModel = {
      userName: $('#txt-username'),
      fullName: $('#txt-fullname'),
      email: $('#txt-email'),
      phone: $('#txt-phone')
    };
    this.$listUser.bootgrid({columnSelection:false, rowCount: 20}).on('click.rs.jquery.bootgrid', function (e, columns, row) {
      console.log('Edit row: ', row, 'with timeStamp: ', e.timeStamp);
      _this.setFormData(row);
      _this.next();
    });
    this.$toolbar.BACK.on('click', function () {
      _this.prev();
      _this.clear();
    });
    this.$toolbar.CREATE.on('click', function () {
      _this.clear();
      _this.next();
    });
    this.$toolbar.SAVE.on('click', function () {
      _this[$(this).data('action')].call(_this);
    });
  };
  InFashion.UserEntity.prototype = {
    setItemId: function (id) {
      this.itemId = id;
    },
    getItemId: function () {
      return this.itemId || null;
    },
    setContent: function (content) {
      this.formContent = content;
    },
    getContent: function () {
      return this.formContent || '';
    },
    clear: function () {
      this.setItemId(null);
      this.$formModel.userName.val('');
      this.$formModel.fullName.val('');
      this.$formModel.email.val('');
      this.$formModel.phone.val('');
    },
    setFormData: function (data) {
      this.$formModel.userName.val(data.userName);
      this.$formModel.fullName.val(data.fullName);
      this.$formModel.email.val(data.email);
      this.$formModel.phone.val(data.phone);
    },
    getFormData: function () {
      return {
        userName: this.$formModel.userName.val(),
        fullName: this.$formModel.fullName.val(),
        email: this.$formModel.email.val(),
        phone: this.$formModel.phone.val()
      };
    },
    update: function () {
      // TODO: Update item
      console.log('call update function');
    },
    create: function () {
      // TODO: Create item
      console.log('call create function');
    },
    save: function () {
      console.log('call save function');
      (this.getItemId() != null) ? this.update() : this.create();
    },
    prev: function () {
      this.$toolbar.BACK.hide();
      this.$toolbar.SAVE.hide();
      this.$toolbar.CREATE.show();
      this.$formCreateUser.hide();
      this.$listUserBox.show();
    },
    next: function () {
      this.$toolbar.BACK.show();
      this.$toolbar.SAVE.show();
      this.$toolbar.CREATE.hide();
      this.$listUserBox.hide();
      this.$formCreateUser.show();
    }
  };
  new InFashion.UserEntity();
});
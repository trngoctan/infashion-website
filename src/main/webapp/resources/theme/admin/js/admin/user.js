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
      password: $('#txt-password'),
      fullName: $('#txt-fullname'),
      email: $('#txt-email'),
      phone: $('#txt-phone'),
      roles: $('#txt-roles')
    };
    this.grid = this.$listUser.bootgrid({
      url: InFashion.utils.getUrl('admin/user/list'),
      ajax: true,
      rowCount: 10,
      columnSelection: false,
      ajaxSettings: {
        method: 'GET'
      },
      responseHandler: this.convertData.createDelegate(this),
      formatters: {
        commands: function(column, row) {
          $('[data-column-id="'+column.id+'"]').addClass('cmd-2');
          return '<button type="button" class="btn btn-xs btn-primary command-edit" data-action="edit" data-row-id="' + row[_this.getIdProperties()] + '"><span class="fa fa-pencil"></span></button> ' +
              '<button type="button" class="btn btn-xs btn-danger command-delete" data-action="remove" data-row-id="' + row[_this.getIdProperties()] + '"><span class="fa fa-trash-o"></span></button>';
        }
      }
    }).on('loaded.rs.jquery.bootgrid', function (e, columns, row) {
      _this.grid.find('[data-action]').on('click', function (e) {
        var __action = $(this).data('action') + 'Row';
        var __record = _this.getEntityById($(this).data('row-id'));
        _this[__action].call(_this, __record);
      });
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
    InFashion.UserEntity.superclass.constructor.call(this);
  };
  BaseUI.extend(InFashion.UserEntity, InFashion.Entity, {
    clear: function () {
      this.setEntityId(null);
      this.clearStore();
      this.$formModel.userName.val('');
      this.$formModel.password.val('');
      this.$formModel.fullName.val('');
      this.$formModel.email.val('');
      this.$formModel.phone.val('');
      this.$formModel.roles.val('');
    },
    setFormData: function (data) {
      this.$formModel.userName.val(data.userName);
      this.$formModel.password.val('******');
      this.$formModel.fullName.val(data.fullName);
      this.$formModel.email.val(data.email);
      this.$formModel.phone.val(data.phone);
      this.$formModel.roles.val(data.roles);
    },
    getFormData: function () {
      return {
        userName: this.$formModel.userName.val(),
        fullName: this.$formModel.fullName.val(),
        email: this.$formModel.email.val(),
        phone: this.$formModel.phone.val(),
        roles: this.$formModel.roles.val()
      };
    },
    editRow: function (row) {
      this.setEntityId(row[this.getIdProperties()]);
      this.setFormData(row);
      this.next();
    },
    removeRow: function (row) {
      this.setEntityId(row[this.getIdProperties()]);
      this.remove();
    },
    update: function () {
      var _this = this;
      var __data = this.getFormData();
      __data.id = this.getEntityId();
      console.log('call update function');
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/user/update'),
        method: 'POST',
        data: JSON.stringify(__data),
        dataType: 'JSON',
        contentType: 'application/json'
      });
      request.done(function (data) {
        console.log('create data response ', data);
        _this.grid.bootgrid('reload');
        // _this.prev();
      });
    },
    create: function () {
      var _this = this;
      var __data = this.getFormData();
      __data.password = this.$formModel.password.val();
      console.log('call create function');
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/user/save'),
        method: 'POST',
        data: JSON.stringify(__data),
        dataType: 'JSON',
        contentType: 'application/json'
      });
      request.done(function (data) {
        console.log('create data response ', data);
        _this.grid.bootgrid('reload');
        // _this.prev();
      });
    },
    save: function () {
      console.log('call save function');
      (this.getEntityId() != null) ? this.update() : this.create();
    },
    remove: function () {
      var _this = this;
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/user/delete'),
        method: 'POST',
        data: JSON.stringify(this.getEntityById(this.getEntityId())),
        dataType: 'JSON',
        contentType: 'application/json'
      });
      request.done(function (data) {
        console.log('create data response ', data);
        _this.grid.bootgrid('reload');
      });
    },
    prev: function () {
      this.$toolbar.BACK.hide();
      this.$toolbar.SAVE.hide();
      // this.$toolbar.CREATE.show();
      this.$formCreateUser.hide();
      this.$listUserBox.show();
    },
    next: function () {
      this.$toolbar.BACK.show();
      this.$toolbar.SAVE.show();
      // this.$toolbar.CREATE.hide();
      this.$listUserBox.hide();
      this.$formCreateUser.show();
    }
  });
  new InFashion.UserEntity();
});
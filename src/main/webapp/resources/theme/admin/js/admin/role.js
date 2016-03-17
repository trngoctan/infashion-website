// #PACKAGE: role
// #MODULE: role
//
/**
 * Copyright (c) CT1905
 * Created by Nguyen Ba Chi Cong<nbchicong@gmail.com>
 *         on 05/03/2016.
 * -------------------------------------------
 * @project infashion-ui
 * @file role
 * @author nbchicong
 */
$(function () {
  InFashion.RoleEntity = function () {
    var _this = this;
    this.id = '';
    this.$toolbar = {
      CREATE: $('#btn-create')
    };
    this.$listRole = $("#list-role");
    this.$modalCreate = $('#modal-create-role');
    this.$inputRoleName = $('#role-name');
    this.$listRole.bootgrid().on('click.rs.jquery.bootgrid', function (e, columns, row) {
      console.log('Edit row: ', row, 'with timeStamp: ', e.timeStamp);
      _this.setRoleId(row.id);
      _this.$inputRoleName.val(row.name);
      _this.$modalCreate.modal('show');
    });
    this.$modalCreate.on('click', 'button[data-action]', function () {
      var action = $(this).data('action');
      _this[action].call(_this);
    });
    this.$toolbar.CREATE.on('click', function () {
      _this.clear();
    });
  };
  InFashion.RoleEntity.prototype = {
    setRoleId: function (cateId) {
      this.cateId = cateId;
    },
    getRoleId: function () {
      return this.cateId || null;
    },
    clear: function () {
      this.setRoleId(null);
      this.$inputRoleName.val('');
    },
    update: function () {
      // TODO: Update role
      console.log('call update function');
    },
    create: function () {
      // TODO: Create role
      console.log('call create function');
    },
    save: function () {
      console.log('call save function');
      (this.getRoleId() != null) ? this.update() : this.create();
    }
  };
  new InFashion.RoleEntity();
});
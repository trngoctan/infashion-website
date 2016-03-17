// #PACKAGE: category-item
// #MODULE: category
//
/**
 * Copyright (c) CT1905
 * Created by Nguyen Ba Chi Cong<nbchicong@gmail.com>
 *         on 05/03/2016.
 * -------------------------------------------
 * @project infashion-ui
 * @file category
 * @author nbchicong
 */
$(function () {
  InFashion.CategoryItem = function () {
    var _this = this;
    this.id = '';
    this.$toolbar = {
      CREATE: $('#btn-create')
    };
    this.$listRole = $("#list-category");
    this.$modalCreate = $('#modal-create-category');
    this.$inputRoleName = $('#category-name');
    var convertData = function (json) {
      return {
        rows: json.items,
        total: json.total,
        current: json.currentPage
      }
    };
    this.$listRole.bootgrid({
      ajax: true,
      url: 'https://dl.dropboxusercontent.com/u/8182319/data.json',
      responseHandler: convertData
    }).on('click.rs.jquery.bootgrid', function (e, columns, row) {
      console.log('Edit row: ', row, 'with timeStamp: ', e.timeStamp);
      _this.setCateId(row.id);
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


    var a = 'w3schools.com';
    try {
      adddlert("Welcome guest!");
      console.log("Noi dung trong try");
    } catch (errors) {

    } finally {

    }

    console.log('Noi dung duoi try catch');

  };
  InFashion.CategoryItem.prototype = {
    setCateId: function (cateId) {
      this.cateId = cateId;
    },
    getCateId: function () {
      return this.cateId || null;
    },
    clear: function () {
      this.setCateId(null);
      this.$inputRoleName.val('');
    },
    update: function () {
      // TODO: Update category
      console.log('call update function');
    },
    create: function () {
      // TODO: Create category
      console.log('call create function');
    },
    save: function () {
      console.log('call save function');
      (this.getCateId() != null) ? this.update() : this.create();
    }
  };
  new InFashion.CategoryItem();
});
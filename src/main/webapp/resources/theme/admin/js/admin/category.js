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
    this.$inputCategoryName = $('#category-name');
    this.$inputCategoryUrl = $('#category-url');
    var convertData = function (json) {
      return {
        rows: json.list,
        total: json.total
      }
    };
    this.$listRole.bootgrid({
      url: InFashion.utils.getUrl('admin/categoryitem/list'),
      ajax: true,
      ajaxSettings: {
        method: 'GET'
      },
      responseHandler: convertData
    }).on('click.rs.jquery.bootgrid', function (e, columns, row) {
      _this.setCateId(row.id);
      _this.$inputCategoryName.val(row.name);
      _this.$inputCategoryUrl.val(row.url);
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
  InFashion.CategoryItem.prototype = {
    setCateId: function (cateId) {
      this.cateId = cateId;
    },
    getCateId: function () {
      return this.cateId || null;
    },
    clear: function () {
      this.setCateId(null);
      this.$inputCategoryName.val('');
      this.$inputCategoryUrl.val('');
    },
    update: function () {
      // TODO: Update category
      $.post(InFashion.utils.getUrl('admin/categoryitem/update'), {
        id: this.getCateId(),
        name: this.$inputCategoryName.val(),
        url: this.$inputCategoryUrl.val()
      }, function (data) {
        console.log('create data response ', data);
      }, 'POST');
    },
    create: function () {
      // TODO: Create category
      $.post(InFashion.utils.getUrl('admin/categoryitem/save'), {
        name: this.$inputCategoryName.val(),
        url: this.$inputCategoryUrl.val()
      }, function (data) {
        console.log('create data response ', data);
      }, 'POST');
    },
    save: function () {
      (this.getCateId() != null) ? this.update() : this.create();
    }
  };
  new InFashion.CategoryItem();
});
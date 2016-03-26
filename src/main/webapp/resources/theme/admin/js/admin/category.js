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
    this.idProperties = 'id';
    this.store = new Hashtable();
    this.$toolbar = {
      CREATE: $('#btn-create')
    };
    this.$listCategory = $("#list-category");
    this.$modalCreate = $('#modal-create-category');
    this.$inputCategoryName = $('#category-name');
    this.$inputCategoryUrl = $('#category-url');
    this.grid = this.$listCategory.bootgrid({
      url: InFashion.utils.getUrl('admin/categoryitem/list'),
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
    }).on('loaded.rs.jquery.bootgrid', function () {
      _this.grid.find('[data-action]').on('click', function (e) {
        var __action = $(this).data('action') + 'Row';
        var __record = _this.getEntityById($(this).data('row-id'));
        _this[__action].call(_this, __record);
      });
    });
    this.$modalCreate.on('click', 'button[data-action]', function () {
      _this[$(this).data('action')].call(_this);
    });
    this.$toolbar.CREATE.on('click', function () {
      _this.clear();
    });
    InFashion.CategoryItem.superclass.constructor.call(this);
  };
  BaseUI.extend(InFashion.CategoryItem, InFashion.Entity, {
    clear: function () {
      this.setEntityId(null);
      this.clearStore();
      this.$inputCategoryName.val('');
      this.$inputCategoryUrl.val('');
    },
    editRow: function (row) {
      this.setEntityId(row[this.getIdProperties()]);
      this.$inputCategoryName.val(row.name);
      this.$inputCategoryUrl.val(row.url);
      this.$modalCreate.modal('show');
    },
    removeRow: function (row) {
      this.setEntityId(row[this.getIdProperties()]);
      this.remove();
    },
    update: function () {
      var _this = this;
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/categoryitem/update'),
        method: 'POST',
        data: JSON.stringify({
          id: this.getEntityId(),
          name: this.$inputCategoryName.val(),
          url: this.$inputCategoryUrl.val()
        }),
        dataType: 'JSON',
        contentType: 'application/json'
      });
      request.done(function (data) {
        console.log('create data response ', data);
        _this.grid.bootgrid('reload');
      });
    },
    create: function () {
      var _this = this;
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/categoryitem/save'),
        method: 'POST',
        data: JSON.stringify({
          name: this.$inputCategoryName.val(),
          url: this.$inputCategoryUrl.val()
        }),
        dataType: 'JSON',
        contentType: 'application/json'
      });
      request.done(function (data) {
        console.log('create data response ', data);
        _this.$modalCreate.modal('hide');
        _this.grid.bootgrid('reload');
      });
    },
    save: function () {
      (this.getEntityId() != null) ? this.update() : this.create();
    },
    remove: function () {
      var _this = this;
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/categoryitem/delete'),
        method: 'POST',
        data: JSON.stringify({
          id: this.getEntityId()
        }),
        dataType: 'JSON',
        contentType: 'application/json'
      });
      request.done(function (data) {
        console.log('remove data response ', data);
        _this.grid.bootgrid('reload');
      });
    }
  });
  new InFashion.CategoryItem();
});
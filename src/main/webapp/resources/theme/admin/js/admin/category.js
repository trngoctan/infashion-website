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
    this.$listRole = $("#list-category");
    this.$modalCreate = $('#modal-create-category');
    this.$inputCategoryName = $('#category-name');
    this.$inputCategoryUrl = $('#category-url');
    var convertData = function (json) {
      _this.pushAll(json.list || []);
      return {
        rows: json.list,
        total: json.total
      }
    };
    this.grid = this.$listRole.bootgrid({
      url: InFashion.utils.getUrl('admin/categoryitem/list'),
      ajax: true,
      ajaxSettings: {
        method: 'GET'
      },
      responseHandler: convertData,
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
        var __record = _this.getById($(this).data('row-id'));
        _this[__action].call(_this, __record);
      });
    });
    this.$modalCreate.on('click', 'button[data-action]', function () {
      _this[$(this).data('action')].call(_this);
    });
    this.$toolbar.CREATE.on('click', function () {
      _this.clear();
    });
    console.log(this.grid);
  };
  InFashion.CategoryItem.prototype = {
    setCateId: function (cateId) {
      this.cateId = cateId;
    },
    getCateId: function () {
      return this.cateId || null;
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
    getById: function (id) {
      return this.getStore().get(id);
    },
    getStore: function () {
      return this.store;
    },
    clear: function () {
      this.setCateId(null);
      this.$inputCategoryName.val('');
      this.$inputCategoryUrl.val('');
    },
    editRow: function (row) {
      this.setCateId(row[this.getIdProperties()]);
      this.$inputCategoryName.val(row.name);
      this.$inputCategoryUrl.val(row.url);
      this.$modalCreate.modal('show');
    },
    removeRow: function (row) {
      this.setCateId(row[this.getIdProperties()]);
      this.remove();
    },
    update: function () {
      // TODO: Update category
      this.grid.bootgrid('reload');
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
      this.grid.bootgrid('reload');
      $.post(InFashion.utils.getUrl('admin/categoryitem/save'), {
        name: this.$inputCategoryName.val(),
        url: this.$inputCategoryUrl.val()
      }, function (data) {
        console.log('create data response ', data);
      }, 'POST');
    },
    save: function () {
      (this.getCateId() != null) ? this.update() : this.create();
    },
    remove: function () {
      var _this = this;
      this.grid.bootgrid('remove', _this.getCateId());
      $.post(InFashion.utils.getUrl('admin/categoryitem/delete'), {
        id: this.getCateId()
      }, function (data) {
        console.log('create data response ', data);
        _this.grid.bootgrid('remove', _this.getCateId());
      }, 'POST');
    }
  };
  new InFashion.CategoryItem();
});
// #PACKAGE: item
// #MODULE: item
// 
/**
 * Copyright (c) 2016 CT1905
 * Created by Nguyen Ba Chi Cong<nbchicong@gmail.com>
 *         on 05/03/2016.
 * -------------------------------------------
 * @project infashion-ui
 * @file item
 * @author nbchicong
 */
$(function () {
  InFashion.ItemEntity = function () {
    var _this = this;
    this.id = '';
    this.idProperties = 'id';
    this.store = new Hashtable();
    this.$toolbar = {
      BACK: $('#btn-back'),
      CREATE: $('#btn-create'),
      SAVE: $('#btn-save')
    };
    this.$listItem = $('#list-item');
    this.$listItemBox = $('#list-item-box');
    this.$formCreateItem = $('#form-create-item');
    this.$formModel = {
      subject: $('#txt-item-subject'),
      brief: $('#txt-item-brief'),
      image: $('#txt-item-image'),
      viewed: $('#txt-item-viewed'),
      category: $('#cbb-item-category'),
      content: $('#txt-item-content')
    };
    var convertData = function (json) {
      _this.pushAll(json.list || []);
      return {
        rows: json.list,
        total: json.total
      }
    };
    this.grid = this.$listItem.bootgrid({
      url: InFashion.utils.getUrl('admin/item/list'),
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
    }).on('loaded.rs.jquery.bootgrid', function (e, columns, row) {
      _this.grid.find('[data-action]').on('click', function (e) {
        var __action = $(this).data('action') + 'Row';
        var __record = _this.getById($(this).data('row-id'));
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
    this.editor = CKEDITOR.replace(this.$formModel.content.prop('id'), {language: 'vi'});
    this.editor.on('change', function (e) {
      _this.setContent(e.editor.getData());
    });
  };
  InFashion.ItemEntity.prototype = {
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
      this.setItemId(null);
      this.setContent('');
      this.store.clear();
      this.$formModel.subject.val('');
      this.$formModel.brief.val('');
      this.$formModel.image.val('');
      this.$formModel.viewed.val(0);
      CKEDITOR.instances[this.$formModel.content.prop('id')].setData('');
    },
    setFormData: function (data) {
      this.$formModel.subject.val(data.subject);
      this.$formModel.brief.val(data.brief);
      this.$formModel.image.val(data.image);
      this.$formModel.viewed.val(data.viewed);
      this.$formModel.category.val(data.category);
      CKEDITOR.instances[this.$formModel.content.prop('id')].setData(data.content);
    },
    getFormData: function () {
      return {
        subject: this.$formModel.subject.val(),
        brief: this.$formModel.brief.val(),
        image: this.$formModel.image.val(),
        category: this.$formModel.category.val(),
        content: this.getContent()
      };
    },
    editRow: function (row) {
      this.setItemId(row[this.getIdProperties()]);
      this.setFormData(row);
      this.next();
    },
    removeRow: function (row) {
      this.setItemId(row[this.getIdProperties()]);
      this.remove();
    },
    update: function () {
      var _this = this;
      var __data = this.getFormData();
      __data.id = this.getItemId();
      // TODO: Update item
      console.log('call update function');
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/item/update'),
        method: 'POST',
        data: JSON.stringify(__data),
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
      // TODO: Create item
      console.log('call create function');
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/item/save'),
        method: 'POST',
        data: JSON.stringify(this.getFormData()),
        dataType: 'JSON',
        contentType: 'application/json'
      });
      request.done(function (data) {
        console.log('create data response ', data);
        _this.grid.bootgrid('reload');
      });
    },
    save: function () {
      console.log('call save function');
      (this.getItemId() != null) ? this.update() : this.create();
    },
    remove: function () {
      var _this = this;
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/item/delete'),
        method: 'POST',
        data: JSON.stringify(this.getById(this.getItemId())),
        dataType: 'JSON',
        contentType: 'application/json'
      });
      request.done(function (data) {
        console.log('create data response ', data);
        _this.grid.bootgrid('remove', {id: _this.getItemId()});
      });
    },
    prev: function () {
      this.$toolbar.BACK.hide();
      this.$toolbar.SAVE.hide();
      this.$toolbar.CREATE.show();
      this.$formCreateItem.hide();
      this.$listItemBox.show();
    },
    next: function () {
      this.$toolbar.BACK.show();
      this.$toolbar.SAVE.show();
      this.$toolbar.CREATE.hide();
      this.$listItemBox.hide();
      this.$formCreateItem.show();
    }
  };
  new InFashion.ItemEntity();
});
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
    this.grid = this.$listItem.bootgrid({
      url: InFashion.utils.getUrl('admin/item/list'),
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
    this.editor = CKEDITOR.replace(this.$formModel.content.prop('id'), {language: 'vi'});
    this.editor.on('change', function (e) {
      _this.setContent(e.editor.getData());
    });
    InFashion.ItemEntity.superclass.constructor.call(this);
  };
  BaseUI.extend(InFashion.ItemEntity, InFashion.Entity, {
    setContent: function (content) {
      this.formContent = content;
    },
    getContent: function () {
      return this.formContent || '';
    },
    clear: function () {
      this.setEntityId(null);
      this.setContent('');
      this.clearStore();
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
        category: {id: this.$formModel.category.val()},
        content: this.getContent()
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
        url: InFashion.utils.getUrl('admin/item/update'),
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
      __data.created = new Date().getTime();
      console.log('call create function');
      var request = $.ajax({
        url: InFashion.utils.getUrl('admin/item/save'),
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
        url: InFashion.utils.getUrl('admin/item/delete'),
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
      this.$formCreateItem.hide();
      this.$listItemBox.show();
    },
    next: function () {
      this.$toolbar.BACK.show();
      this.$toolbar.SAVE.show();
      // this.$toolbar.CREATE.hide();
      this.$listItemBox.hide();
      this.$formCreateItem.show();
    }
  });
  new InFashion.ItemEntity();
});
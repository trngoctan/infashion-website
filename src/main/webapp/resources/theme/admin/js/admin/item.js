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
    this.$listItem.bootgrid().on('click.rs.jquery.bootgrid', function (e, columns, row) {
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
    clear: function () {
      this.setItemId(null);
      this.setContent('');
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
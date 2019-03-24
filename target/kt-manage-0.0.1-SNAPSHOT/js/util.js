$.Message={
    messageBox:$('.message-box__wrapper'),
    show:function(option){
        var messageBox=this.messageBox;
        messageBox.show().next().show();
        messageBox.find('.btn-primary').off();
        messageBox.find('.btn-default,.message-box__headerbtn').off();
        messageBox.find('.message-info').text(option.content||'确定执行此操作, 是否继续?');
        messageBox.find('.message-box__title').text(option.title||'提示');
        if(option.hideClose){
            messageBox.find('.message-box__headerbtn').hide();
        }
        if(option.hideCancel){
            messageBox.find('.btn-default').hide();
        }
        messageBox.find('.btn-primary').on('click',function(){
            messageBox.hide().next().hide();
            if(option.onOk){
                option.onOk();
            }
        });
        messageBox.find('.btn-default,.message-box__headerbtn').on('click',function(){
            messageBox.hide().next().hide();
            if(option.onCancel){
                option.onCancel();
            }
        });
    },
    confirm:function(option){
        var messageBox=this.messageBox;
        option=option||{};
        this.show(option);

        messageBox.find('.glyphicon-info-sign').addClass('hidden').prev().removeClass('hidden');

    },
    info:function(option){
        option=option||{};
        var messageBox=this.messageBox;
        option.hideClose=true;
        option.hideCancel=true;
        this.show(option);
        messageBox.find('.glyphicon-info-sign').removeClass('hidden').prev().addClass('hidden');

    },
};
$.loading={
    loadingBox:$('.loading-box'),
    show:function(option){
        var loadingBox=this.loadingBox;
        option=option||{
            duration:0,
        };
        this.loadingBox.show();
        if(option.duration){
            var t=setTimeout(function(){
                loadingBox.hide();
                clearTimeout(t)
            },option.duration)
        }


    },
    hide:function(){
        this.loadingBox.hide();
    }
};
$.alert={
    alertEle:$('.alert-box .alert'),
    show:function(option){
        if(typeof option==='string'){
            option={content:option};
        }else{
            option=option||{};
        }

        option.duration=option.duration==undefined?3000:option.duration;
        var self=this;
        this.alertEle.parent().fadeIn();
        if(option.close){

            this.alertEle.addClass('alert-dismissible').find('button').show().off().on('click',function(){
                self.hide();
            });
        }else{
            this.alertEle.removeClass('alert-dismissible').find('button').hide();
        }
        if(option.duration){
            var t=setTimeout(function(){
                self.hide();
                clearTimeout(t)
            },option.duration)
        };

        this.alertEle.find('.alert-content').html(option.content||'')
    },
    hide:function(){
        this.alertEle.attr('class','alert').parent().fadeOut();
    },
    success:function(option){
        this.show(option);
        this.alertEle.addClass('alert-success');
    },
    warning:function(option){
        this.show(option);
        this.alertEle.addClass('alert-warning');
    },
    error:function(option){
        this.show(option);
        this.alertEle.addClass('alert-danger');
    },
    info:function(option){
        this.show(option);
        this.alertEle.addClass('alert-info');
    }
};

$.upload=function(data,callback){
    var $form=$('<form action="https://upload.intco.cn/upload/image" method="POST" enctype="multipart/form-data"></form>');
    if(data.status){$form.append('<input name="status" value="'+data.status+'">')}
    if(data.imgCategory){$form.append('<input name="imgCategory" value="'+data.imgCategory+'">')}
    if(data.isWatermark){$form.append('<input name="isWatermark" value="'+data.isWatermark+'">')}

    if(window.FormData){
        var formData = new FormData($form[0]);
        formData.append('mFile',data.fileEle.files[0]);
        $.ajax({
            type:'post',
            url:'https://upload.intco.cn/upload/image',
            data:formData,
            processData: false,
            contentType: false,
            dataType:'json',
            success:function(res){
                callback(res);
            }
        })
    }else{
        $form.append($(data.fileEle).clone().attr('name','mFile'));
        $form.ajaxSubmit({
            dataType:'json',
            success:function(res){
                callback(res);
            }
        })
    }

};

$.showImage=function(url){
    var modalEle=$('#imageModal');
    modalEle.find('img').attr('src',url);
    modalEle.modal('show')
};


$.showImage2=function(url){
    var modalEle=$('#imageModal2');
    modalEle.find('img').attr('src',url);
    modalEle.modal('show')
};


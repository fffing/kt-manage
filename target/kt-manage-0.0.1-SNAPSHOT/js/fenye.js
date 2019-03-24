
    var paramLableIds=$('#paramLableIds').val();
    var paramLableIdArr=[];
    //回写标签
    if(paramLableIds.length){
        paramLableIdArr=paramLableIds.split(',');
        var template='';
        $.each(paramLableIdArr,function(i,ids){
            var children=ids.split('@');
            var $optionsEle=$('.rule-options').find('a[data-id='+children[0]+']').parent();
            var index = $optionsEle.parent().index();
            var title = $.trim($optionsEle.prev().html());
            var content = '';
            $.each(children,function(j,id){
                content += $('a[data-id='+id+']').addClass('active').html() + '、';
            });
            content = content.slice(0, -1);
            template+='<a class="filter-select-item" data-id="'+ids+'" type="' + index + '" title="' + content + '"><b>'+title+'：</b><em>' + content + '</em><i>×</i></a>';
        });
        console.log(template);
        $('.filter-select-list').html(template);
    }

    //选中标签
    var selectItem = $('.rule-options').find('a[data-value]');
    selectItem.click(function () {
        $(this).toggleClass('active');
        var html = '';
        $('.rule-options').each(function (i, ele) {
            if ($(ele).children('.active').length) {
                var title = $.trim($(ele).prev().html());

                var index = $(ele).parent().index();
                var content = '';
                var id='';
                $(ele).children('.active').each(function (i, item) {
                    content += $(item).html() + '、';
                    id+=$(item).attr('data-id')+'@';
                });
                content = content.slice(0, -1);
                id = id.slice(0, -1);
                html += '<a class="filter-select-item" data-id="'+id+'" type="' + index + '" title="' + content + '"><b>' + title + '：</b><em>' + content + '</em><i>×</i></a>';
            }
        });
        $('.filter-select-list').html(html);
        getLabelIds()
    });

    //删除标签
    $('.filter-select-list').on('click', '.filter-select-item i', function () {
        var parent = $(this).parent();
        $('.rule-list').eq(parent.attr('type')).find('a').removeClass('active');
        parent.remove();
        getLabelIds()
    });
    //获取标签条件
    function getLabelIds(){
        var lableIds=$('.filter-select-item').map(function(i,item){
            return $(item).attr('data-id');
        }).get();
        $('#paramLableIds').val(lableIds);
        $('#pageNo').val(1);
        submit()
    }

    //排序
    var sortArr = ['upperTime', 'salev', 'price'];
    $('.sort-rule').find('.sort-items').click(function () {

        if ($(this).hasClass('active') && $(this).index() !== 1) {
            $(this).find('i').toggleClass('text-black');
        } else {
            $(this).addClass('active').siblings('.active').removeClass('active');
        }

        var sortOrder = '';
        if ($(this).index() !== 1) {
            if ($(this).find('i.text-black').hasClass('glyphicon-triangle-top')) {
                sortOrder = 'desc'
            } else {
                sortOrder = 'asc'
            }
        } else {
            sortOrder = 'desc'
        }

        $('#sortName').val(sortArr[$(this).index()]);
        $('#sortOrder').val(sortOrder);
        submit();
    });
    $('#stock').change(function(){
        submit();
    });

    //分页
    $('.pagination').find('a[page]').click(function(){
       $('#pageNo').val($(this).attr('page'));
        submit();
    });
    //跳转明细
    $('.product-image').click(function () {
        var proId=$(this).attr("product_id");
        var proName=$(this).attr("product_name");
        //var newWindow = window.open();
        $.ajaxSettings.async = false;
        $.post("/product/category?id="+proId,null,function(data){
            var category = data;
            //location.href="/"+category+"/"+proName+".html";
            window.open("/"+category+"/"+proName+".html");
        });
        $.ajaxSettings.async = true;
    });

    var form=$('#product-list-form');
    form.attr('action',location.pathname);
    //提交表单
    function submit(){
        form.find('input').each(function(i,item){
           if($(item).val()){
               $(item).attr('name',$(item).attr('id'));
           }else{
               $(item).removeAttr('name');
           }
        });

        form.submit();
    }


/**
 * User: menghx
 * Date: 4/7/12
 * Time: 1:13 PM
 */

function addProductType(){
    var type =window.prompt("请输入新产品类型名字！");
    if(type==""){
        alert("产品类型不能为空，请重新添加！");
    }
    $.ajax({
        url: "admin/addProductType.do",
        data: "type="+type+"&random="+Math.random,
        success:function(msg){
            $("#productGroup").append("<option value='"+msg+"' selected>"+type+"</option>");
        },
        fail:function(){
            alert("添加失败，请稍后重试！");
        }
    });
}

function delProductType(){
    $.ajax({
        url: "admin/delProductType.do",
        data: "typeId="+$("#productGroup").val()+"&random="+Math.random,
        success:function(msg){
            if(msg==""){
                $("#productGroup option:selected").remove();
                alert("删除成功！");
            }else{
                alert(msg);
            }
        },
        fail:function(){
            alert("添加失败，请稍后重试！");
        }
    });
}

function delProduct(productId){
    if(window.confirm("确认删除吗？")){
        $.ajax({
            url: "admin/delProduct.do",
            data: "productId="+productId+"&random="+Math.random,
            success:function(msg){
                if(msg==""){
                    $("#productItem_"+productId).remove();
                }else{
                    alert(msg);
                }
            },
            fail:function(){
                alert("添加失败，请稍后重试！");
            }
        });
    }
}


function addNewsType(){
    var type =window.prompt("请输入新产品类型名字！");
    if(type==""){
        alert("产品类型不能为空，请重新添加！");
    }
    $.ajax({
        url: "admin/addNewsType.do",
        data: "type="+type+"&random="+Math.random,
        success:function(msg){
            $("#newsGroup").append("<option value='"+msg+"' selected>"+type+"</option>");
        },
        fail:function(){
            alert("添加失败，请稍后重试！");
        }
    });
}

function delNewsType(){
    $.ajax({
        url: "admin/delNewsType.do",
        data: "typeId="+$("#newsGroup").val()+"&random="+Math.random,
        success:function(msg){
            if(msg==""){
                $("#newsGroup option:selected").remove();
                alert("删除成功！");
            }else{
                alert(msg);
            }
        },
        fail:function(){
            alert("添加失败，请稍后重试！");
        }
    });
}

function delNews(productId){
    if(window.confirm("确认删除吗？")){
        $.ajax({
            url: "admin/delNews.do",
            data: "productId="+productId+"&random="+Math.random,
            success:function(msg){
                if(msg==""){
                    $("#newsItem_"+productId).remove();
                }else{
                    alert(msg);
                }
            },
            fail:function(){
                alert("添加失败，请稍后重试！");
            }
        });
    }
}

function delMessage(productId){
    if(window.confirm("确认删除吗？")){
        $.ajax({
            url: "admin/delMessage.do",
            data: "messageId="+productId+"&random="+Math.random,
            success:function(msg){
                if(msg==""){
                    $("#messageItem_"+productId).remove();
                }else{
                    alert(msg);
                }
            },
            fail:function(){
                alert("添加失败，请稍后重试！");
            }
        });
    }
}

function delWebImage(productId){
    if(window.confirm("确认删除吗？")){
        $.ajax({
            url: "admin/delWebImage.do",
            data: "webImageId="+productId+"&random="+Math.random,
            success:function(msg){
                if(msg==""){
                    $("#webImageItem_"+productId).remove();
                }else{
                    alert(msg);
                }
            },
            fail:function(){
                alert("添加失败，请稍后重试！");
            }
        });
    }
}

function isShowImage(isShow){
   $("#showImage").val($("#showImage").val()==0?1:0);
}

function firstPage(){
    $("#pageIndex").val(0);
    $("#searchItemForm").submit();
}

function forwardPage(){
    $("#pageIndex").val($("#pageIndex").val()==0?0:$("#pageIndex").val()-1);
    $("#searchItemForm").submit();
}

function nextPage(){
    $("#pageIndex").val($("#pageIndex").val()==$("#pageCount").val()-1?$("#pageCount").val()-1:$("#pageIndex").val()-0+1);
    $("#searchItemForm").submit();
}

function lastPage(){
    $("#pageIndex").val($("#pageCount").val()-1);
    $("#searchItemForm").submit();
}
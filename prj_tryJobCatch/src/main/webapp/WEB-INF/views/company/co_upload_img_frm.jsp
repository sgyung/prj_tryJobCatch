<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"><head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
    <title>tryJobCatch</title>
    <meta name="robots" content="noindex;nofollow">

    
    <link rel="stylesheet" href="https://i.jobkorea.kr/content/css/ver_2/common.css?date=202312071400">
    <link rel="stylesheet" href="https://i.jobkorea.kr/content/css/ver_2/text_user/resume/photo.css?date=202312071400">
    <link rel="stylesheet" href="https://www.jobkorea.co.kr/resources/lib/jquery/jquery.Jcrop.min.css" type="text/css">
    




<style>
    .async-hide {
        opacity: 0 !important
    }
    
    img {
	  display: block;
	
	  /* This rule is very important, please don't ignore this */
	  max-width: 100%;
	}
</style>
    
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link  href="/path/to/cropper.css" rel="stylesheet">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.6.1/cropper.min.css" />



</head>
<body class="photoUpload" style="" cz-shortcut-listen="true">
    
    <form name="Form1" id="form1" method="post" action="https://file2.jobkorea.co.kr/Net/UserPhoto/Upload" enctype="multipart/form-data">
        <input type="hidden" name="re_url" value="https://www.jobkorea.co.kr/User/Resume/Write">
        <input type="hidden" name="M_ID" value="average8294">
        <input type="hidden" name="filename" value="2023\11\11\JK_GG_B6kkDQ23111119133920.jpg">
        <input type="hidden" name="nSERVER_NAME" value="www.jobkorea.co.kr">
        <input type="hidden" name="callback" value="photoChangeCallback">
        <div class="wrap">
            <div class="upload">
                <div class="input">
                    <label for="up_file">찾아보기</label>
                    <input type="file" name="up_file" id="up_file">
                    <div class="path"></div>
                </div>
                <div class="text">
                    <p>권장 사진 사이즈는 150X210픽셀이며, gif, jpg, jpeg, png 이미지 파일만 등록 가능합니다.</p>
                    <p>파일 선택 후 마우스를 드래그하여 사진 크기를 편집하세요.</p>
                </div>
            </div>
            <div class="editor">
                <div class="photo original">
                    <div class="header">원본사진</div>
                    <div style="width:280px; height:210px" >
                       <img id="croppedImage" style="display: none; visibility: hidden; width: 312px; height: 400px;">
                    </div>
                </div>
                <i class="icon" aria-hidden="true"></i>
                
                <div class="photo processing">
                    <div class="header">이력서용 사진</div>
                    <div class="frame" style="width:164px; height:224px">
                        <div class="inner" style="width:150px; height:210px">
                                <img  id="previewCroppedImage" alt="../common/images/no_image.png" src="" style="width: 150px; height: 210px; margin-left: 0px; margin-top: 0px;">
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="buttons">
                    <button type="button" class="button buttonRegister" id="btn_modify"><span>등록하기</span></button>
                </div>
            </div>
        </div>
    </form>

    <form name="uploadFrm" method="post">
        <input type="hidden" name="uploadImg" id="uploadImg" value="photoChangeCallback">
    </form>

<script src="https://www.jobkorea.co.kr/resources/lib/jquery/jquery-1.10.2.min.js"></script>
<script src="https://www.jobkorea.co.kr/resources/lib/underscore/underscore.min.js"></script>
<script src="https://www.jobkorea.co.kr/resources/lib/jkmon/dist/jk.pc.min.js?202312071400"></script>
<script src="https://www.jobkorea.co.kr/resources/js/common/dist/jk.common.min.js?202312071400"></script>
    
    <script src="https://www.jobkorea.co.kr/resources/lib/jquery/jquery.Jcrop.min.js"></script>
    


<script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.6.1/cropper.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	
    var imageInput = $('#up_file');
    var croppedImage = $('#croppedImage');
    var previewCroppedImage = $('#previewCroppedImage');
    var cropper;
    
    //이미지 받아오기
    $.ajax({
    	url : "http://211.63.89.133/prj_tryJobCatch/company/refreshImage.do",
    	type : "POST",
    	error : function(xhr){
    		alert(xhr.status)
    	},
    	success : function( img ){
			var imgPath = "http://211.63.89.133/prj_tryJobCatch/common/images/company_logo/" + img;

	        var img = new Image();
	        img.onload = function () {
	            // Cropper 인스턴스 생성
	            cropper = new Cropper(croppedImage[0], {
	                aspectRatio: NaN,
	                viewMode: 1,
	                autoCropArea: NaN,
	                crop: function (event) {
	                    // getCroppedCanvas를 사용하여 잘린 이미지 얻기
	                    var croppedCanvas = cropper.getCroppedCanvas();
	                    // 얻은 이미지를 다른 <img> 태그에 설정
	                    previewCroppedImage.attr('src', croppedCanvas.toDataURL());
	                },
	                ready: function () {
	                    // Cropper가 준비되면 autoCropArea를 실제 크기로 설정
	                    cropper.setCropBoxData({
	                        left: 0,
	                        top: 0,
	                        width: 150,
	                        height: 210
	                    });
	                }
	            });

	            // 이미지 설정
	            cropper.replace(imgPath);
	        };

	        // 이미지 로드
	        img.src = imgPath;
    	}//success
    })//ajax

    imageInput.on('change', function (e) {
        var file = e.target.files[0];
        var reader = new FileReader();

        reader.onload = function (event) {
            var imageUrl = event.target.result;

            // 이미지가 완전히 로드된 후에 Cropper 초기화
            var img = new Image();
            img.onload = function () {
                // 리사이징한 이미지를 얻기 위한 Canvas 생성
                var resizedCanvas = document.createElement('canvas');
                var resizedContext = resizedCanvas.getContext('2d');

                // 이미지 리사이징
                resizedCanvas.width = 150;
                resizedCanvas.height = 210;
                resizedContext.drawImage(img, 0, 0, 150, 210);

                if (cropper) {
                    cropper.destroy(); // 기존의 Cropper 인스턴스 제거
                }

                // Cropper 인스턴스 생성
                cropper = new Cropper(croppedImage[0], {
                    aspectRatio: NaN,
                    viewMode: 1,
                    autoCropArea: NaN,
                    crop: function (event) {
                        // getCroppedCanvas를 사용하여 잘린 이미지 얻기
                        var croppedCanvas = cropper.getCroppedCanvas();
                        // 얻은 이미지를 다른 <img> 태그에 설정
                        previewCroppedImage.attr('src', croppedCanvas.toDataURL());
                    },
                    ready: function () {
                        // Cropper가 준비되면 autoCropArea를 실제 크기로 설정
                        cropper.setCropBoxData({
                            left: 0,
                            top: 0,
                            width: 150,
                            height: 210
                        });
                    }
                });
				
                // 이미지 설정
                cropper.replace(resizedCanvas.toDataURL());
            };
            img.src = imageUrl;
        };

        reader.readAsDataURL(file);
    });//cropper
    
    
    //등록
    $(".buttonRegister").click(function(){
    	var imageData = cropper.getCroppedCanvas().toDataURL("image/png");
    	var blob = dataURItoBlob(imageData);
    	var m_id = "${ M_ID }";
    	var fileName = m_id;
    	
    	// FormData를 사용하여 이미지 데이터를 서버에 전송
        var formData = new FormData();
        formData.append('image', blob, fileName );
        
        // 서버로 전송
        $.ajax({
            url: 'http://211.63.89.133/prj_tryJobCatch/company/fileupload.do',
            method: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            dataType : "json",
            error: function (xhr) {
            	alert(xhr.status)
            },
            success: function (json) {
            	alert(json.msg)
            	window.close();
            },
        });
    	
    });//click  
    
});//ready

//Data URI를 Blob으로 변환하는 함수
function dataURItoBlob(dataURI) {
    var byteString = atob(dataURI.split(',')[1]);
    var ab = new ArrayBuffer(byteString.length);
    var ia = new Uint8Array(ab);
    for (var i = 0; i < byteString.length; i++) {
        ia[i] = byteString.charCodeAt(i);
    }
    return new Blob([ab], { type: 'image/png' });
}
</script>

</body></html>
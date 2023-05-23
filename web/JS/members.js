

function infoConfirm(){
    if (document.reg_frm.id.velue.length == 0) {
        //document객체는 HTML의 요소에 접근 및 내용변경 스타일조작 할때 사용
        //document다음은 form태그에 지정하 name을 위치시킴
        //id의 자리에는 폼안의 요소중 하나를 넣는다. 현재는 input태그의 name="id"를 지정
        //velue는 사용자가 입력한 값!

        alert("아이디는 필수 사항입니다.");
        reg_frm.id.focus();
        return;
    }

    if (document.reg_frm.id.velue.length < 4) {
        alert("아이디는 4글자 이상 이어야 합니다.")
        reg_frm.id.focus();
        return;
    }

    if (document.reg_frm.pw.velue.length == 0){
        alert("비밀번호는 필수 사항입니다.");
        reg_frm.pw.focus();
        return;
    }

    if(document.reg_frm.pw.velue != document.reg_frm.pw_check.value){
        alert("비밀번호가 일치하지 않습니다.")
        reg_frm.pw.focus();
        return;
    }

    if(document.reg_frm.name.value.length ==0){
        alert("이름은 필수 사항입니다.")
        reg_frm.name.focus();
        return;
    }



}

function updateInfoConfirm(){
    if(document.reg_frm.pw.value.length == ""){
        alert("패스워드를 입력하세요.");
        document.reg_frm.pw.focus();
        return;
    }

    if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
        alert("패스워드가 일치하지 않습니다.")
        reg_frm.pw.focus();
        return;
    }

    if(document.reg_frm.email.value.length == 0){
        alert("이메일은 필수 사항입니다.");
        reg_frm.email.focus();
        return;
    }

}


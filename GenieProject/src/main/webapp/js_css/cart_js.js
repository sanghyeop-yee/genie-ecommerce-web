let cart = {
    totalCount: 0, 
    totalPrice: 0,

    //체크한 장바구니 상품 비우기
    delCheckedItem: function(){

        //document.querySelectorAll("input[name=noList]:checked").forEach(function (item) {
           // item.parentElement.remove();    
            //var cart_num= item.getAttribute('value');
            var cart_num = jQuery("#multiChk").serialize();
            console.log(cart_num);
                $.ajax({
                    url:"/delMultiCart",
                    data: cart_num,
                    success:function(result){
                        alert("제품이 삭제되었습니다.1234");
                        location.reload();
                    },error:function(e){
                        console.log(e.responseText);
                    }
                });
            
            //전송 처리 결과가 성공이면
            this.reCalc();
            this.updateUI();
        },
            
    //재계산
    reCalc: function(){
        //console.log("count : 999999");
        this.totalCount = 0;
        this.totalPrice = 0;
        document.querySelectorAll(".p_num").forEach(function (item) {

            if(item.parentElement.parentElement.firstElementChild.checked==true){
                //console.log(item.parentElement.parentElement.firstElementChild.checked==true);
                var count = parseInt(item.getAttribute('value'));
                this.totalCount += count;
                var price = item.parentElement.previousElementSibling.getAttribute('value');
                this.totalPrice += count * price;
            }
        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
    },
    //화면 업데이트
    updateUI: function () {
        document.querySelector('#total').textContent = '총 상품가격 : ' + this.totalPrice.formatNumber() + '원';
    },
    //개별 수량 변경
    changePNum: function (pos) {
        var item = document.querySelector('input[id=p_num'+pos+']');
        var p_num = parseInt(item.getAttribute('value'));
        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
        
        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

        item.setAttribute('value', newval);
        item.value = newval;
        console.log("newval : " + newval);
        var price=item.parentElement.previousElementSibling.getAttribute('value');
        console.log(price);
        item.parentElement.nextElementSibling.nextElementSibling.nextElementSibling.textContent = (newval * price).formatNumber()+"원";

        //전송 처리 결과가 성공이면    
        this.reCalc();
        this.updateUI();
    },
    checkItem: function () {
        this.reCalc();
        this.updateUI();
    }
}

// 숫자 3자리 콤마찍기
Number.prototype.formatNumber = function(){
    if(this==0) return 0;
    let regex = /(^[+-]?\d+)(\d{3})/;
    let nstr = (this + '');
    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
    return nstr;
};
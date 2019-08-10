$(function(){
    $('#js-policy-open').on('click',function(){
        $('#questionPolicyOverlay').fadeIn();
        return false;
    });

    $('#js-policy2-open').on('click',function(){
        $('#questionPolicy2Overlay').fadeIn();
        $('#questionPolicyOverlay').fadeOut();
        return false;
    });

    $('#js-policy-close').on('click',function(){
        $('#questionPolicy2Overlay').fadeOut();
        return false;
    });
});




// function Click_Policy {
//     if (document.all.checkPolicy.checked==true) {document.all.policyBtn2.style.backgroundColor='#0C5601';
//     } else {
//         document.all.policyBtn2.style.backgroundColor='#C9C9C9';
//     }
// }

    // $(function(){
    //   var checkbox = document.questionPolicy2BodyMainCheck('');
    //   var policybtn = document.questionPolicy2BodyMainButton('')
    //   $("#js-policy-check").click(function(){
    //     if(checkbox.checked === true){
    //       policybtn.style.background = "#0C5601";
    //     }else{
    //         policyBtn.style.background = "#C9C9C9";
    //     }
    //   })
    // }

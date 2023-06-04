const id = document.querySelector("main").id;

if(id === 'insert') insert();

function insert() {
	const form = document.form;
	const onSubmit = e => {
		e.preventDefault();
		try {
			if(!form.resv_phone.value.trim()) {
				form.resv_phone.focus();
				throw '예약자 전화번호가 입력되지 않았습니다.';
			} else if(!form.resv_from_ymd.value.trim()) {
				form.resv_from_ymd.focus();
				throw '예약기간(from)이 입력되지 않았습니다.';
			} else if(!form.resv_to_ymd.value.trim()) {
				form.resv_to_ymd.focus();
				throw '예약기간(to)이 입력되지 않았습니다.';
			} else if(!form.resv_rm_number.value) {
				form.resv_rm_number.focus();
				throw '예약객실번호가 입력되지 않았습니다.';
			} else {
				form.submit();
				throw '저장이 완료되었습니다.'
			}
		} catch(e) {
			alert(e);
			return false;
		}		
	}
	form.addEventListener('submit', onSubmit);
}
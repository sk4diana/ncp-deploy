package com.lgdx.web.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MsgMember {
	// Oracle DB에서 msg_member 테이블을 표현할 수 있는 나만의 자료형(entity)
	
	// 필드의 명칭을 지어줄 때는 테이블의 column명과 일치하는 습관을 가지자.
	private String email;
	private String pw;
	private String tel;
	private String address;
}

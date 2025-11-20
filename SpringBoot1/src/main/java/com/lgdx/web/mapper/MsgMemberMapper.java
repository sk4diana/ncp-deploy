package com.lgdx.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.DeleteMapping;

import com.lgdx.web.entity.MsgMember;

@Mapper
public interface MsgMemberMapper {
	
	@Insert("insert into msg_member values(#{email}, #{pw}, #{tel}, #{address})")
	void join(MsgMember mem);
	
	@Select("select * from msg_member where email = #{email} and pw = #{pw}")
	MsgMember login(MsgMember mem);
	
	@Update("update msg_member set pw = #{pw}, tel = #{tel}, address = #{address} where email = #{email}")
	void update(MsgMember mem);
	
	// 한 개의 행을 담기 위한 타입으로는 MsgMember가 필요하고
	// 해당 기능은 전체 회원에 대한 정보를 받아와야 하므로
	// List 자료구조를 활용한다!
	@Select("select * from msg_member")
	List<MsgMember> showMember();
	
	@Delete("delete from msg_member where email = #{email}")
	void delete(String email);
	
	@Select("select * from msg_member where email=#{email}")
	MsgMember selectByEmail(String email);
}

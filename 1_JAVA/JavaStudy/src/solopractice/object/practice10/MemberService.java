package solopractice.object.practice10;

import java.sql.Connection;


public class MemberService {
	public int insertMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().insertMember(conn, m);

		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}

		JDBCTemplate.close(conn);
		return result;
	}


}

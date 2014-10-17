package books;
import java.sql.*;
//import java.util.*;//useless
public class delete {
	public String title;	
	public String execute() throws Exception
	{
		
			Statement state;
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_gouzai","jjmw5llw2n","yizyykx4jhh30zwjx2lh1jwh3lm2x01231jwkm5k");
			
			state = con.createStatement();
			ResultSet reset;
			
			String s1 ="select Title from book where book.Title='"+title+"'";
			reset = state.executeQuery(s1);
			
			
			if(reset.next())
			{
				String s2 ="delete from book where book.Title='"+title+"'";

				state.execute(s2);
				
			}
			else
			{
				state.close();
				con.close();
				return "error";
			}
			
			state.close();
			con.close();
		return "success";
	}
}

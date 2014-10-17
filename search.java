package books;
import java.sql.*;
import java.util.*;
public class search {
	public List<booklist> books =new ArrayList<booklist>();
	public String name;
	public String id;
	public int age;
	public String country;

	public String execute() throws Exception
	{
		
		Statement state;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_gouzai","jjmw5llw2n","yizyykx4jhh30zwjx2lh1jwh3lm2x01231jwkm5k");
		
		state = con.createStatement();
		ResultSet reset1;
	
		ResultSet reset3;
		booklist btemp;
		
			String s1 ="select * from author where author.Name='"+name+"'";
			
			reset1 = state.executeQuery(s1);
		
			if(reset1.next())
			{
				String temp;
				temp=reset1.getString(1);
				id=temp;
				
				age=reset1.getInt(3);
				country=reset1.getString(4);
				String s3="select * from book where book.AuthorID='"+temp+"'";
			    reset3=state.executeQuery(s3);
			
			    while(reset3.next())
			    {
			    	btemp=new booklist(reset3.getString(1),reset3.getString(2),reset3.getString(3),reset3.getString(4),reset3.getString(5),reset3.getFloat(6));
			    	books.add(btemp);
			    }
			    
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

package com.test;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.pdf.GrayColor;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
			
			String fileName = "C:\\Users\\chronin\\Desktop\\mhis-report\\Users_report.pdf";
			Document document = new Document();
			PdfWriter.getInstance(document, new FileOutputStream(fileName));
			document.open();
			
			Font f = new Font(FontFamily.HELVETICA, 20, Font.NORMAL, GrayColor.BLACK);
			Font f1 = new Font(FontFamily.HELVETICA, 13, Font.NORMAL, GrayColor.WHITE);
			float[] columnWidths = {4, 2, 4,3};
	        
			Paragraph para1 = new Paragraph("LIST OF SYSTEM USERS",f);
			document.add(para1);
			
			//spacing
			document.add(new Paragraph("_____________________________________________________________________________") );
			document.add(new Paragraph(" ") );
			
			
			DBConnection db = new DBConnection();
			Connection con = db.createConnection();
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			String query =  "select fullName,position,email,phoneNumber from users";
			ps = con.prepareStatement(query);
			rs= ps.executeQuery();
			
			PdfPTable table = new PdfPTable(columnWidths);
			   table.setWidthPercentage(100);
			  
			PdfPCell c1 = new PdfPCell(new Phrase("NAME",f1));
			 c1.setBackgroundColor(GrayColor.LIGHT_GRAY);
			 c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			 table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("POSITION",f1));
			c1.setBackgroundColor(GrayColor.LIGHT_GRAY);
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("EMAIL",f1));
			c1.setBackgroundColor(GrayColor.LIGHT_GRAY);
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("CELL PHONE",f1));
			c1.setBackgroundColor(GrayColor.LIGHT_GRAY);
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			
			table.setHeaderRows(1);
			
			while(rs.next()) {
				PdfPCell c2 = new PdfPCell(new Phrase(rs.getString("fullName") ));
				table.addCell(c2);
				c2 = new PdfPCell(new Phrase(rs.getString("position") ));
				table.addCell(c2);
				c2 = new PdfPCell(new Phrase(rs.getString("email") ));
				table.addCell(c2);
				c2 = new PdfPCell(new Phrase(rs.getString("phoneNumber") ));
				table.addCell(c2);
				
				 
			}
			document.add(table);
			document.close();
			response.sendRedirect("pages/reports.jsp");
			System.out.println("finished");
			
		}catch(Exception e) {
			
			System.err.println(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

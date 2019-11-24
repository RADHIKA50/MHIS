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
 * Servlet implementation class Mortality
 */
@WebServlet("/Mortality")
public class Mortality extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mortality() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
try {
			
			String fileName = "C:\\Users\\chronin\\Desktop\\mhis-report\\Mortality_report.pdf";
			Document document = new Document();
			PdfWriter.getInstance(document, new FileOutputStream(fileName));
			document.open();
			
			Font f = new Font(FontFamily.HELVETICA, 20, Font.NORMAL, GrayColor.BLACK);
			Font f1 = new Font(FontFamily.HELVETICA, 13, Font.NORMAL, GrayColor.WHITE);
			float[] columnWidths = {3, 4, 4, 4};
	        
			Paragraph para1 = new Paragraph("MORTALITY REPORT",f);
			document.add(para1);
			
			//spacing
			document.add(new Paragraph("_____________________________________________________________________________") );
			document.add(new Paragraph(" ") );
			
			
			DBConnection db = new DBConnection();
			Connection con = db.createConnection();
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			String query =  "select babyGender,laborPain,pregnacyProblem,deliveryDate from landd where reportName='Child Death'";
			ps = con.prepareStatement(query);
			rs= ps.executeQuery();
			
			PdfPTable table = new PdfPTable(columnWidths);
			   table.setWidthPercentage(100);
			  
			PdfPCell c1 = new PdfPCell(new Phrase("GENDER",f1));
			 c1.setBackgroundColor(GrayColor.LIGHT_GRAY);
			 c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			 table.addCell(c1);
			
			
			c1 = new PdfPCell(new Phrase("DELIVERY DATE",f1));
			c1.setBackgroundColor(GrayColor.LIGHT_GRAY);
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("HAD LABOR PAIN",f1));
			c1.setBackgroundColor(GrayColor.LIGHT_GRAY);
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("COMPLICATIONS",f1));
			c1.setBackgroundColor(GrayColor.LIGHT_GRAY);
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			
			
			table.setHeaderRows(1);
			
			while(rs.next()) {
				PdfPCell c2 = new PdfPCell(new Phrase(rs.getString("babyGender") ));
				table.addCell(c2);
				c2 = new PdfPCell(new Phrase(rs.getString("deliveryDate") ));
				table.addCell(c2);
				c2 = new PdfPCell(new Phrase(rs.getString("laborPain") ));
				table.addCell(c2);
				c2 = new PdfPCell(new Phrase(rs.getString("pregnacyProblem") ));
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

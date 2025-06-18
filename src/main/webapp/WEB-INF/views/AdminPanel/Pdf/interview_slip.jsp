<%@page import="com.itextpdf.text.FontFactory"%>
<%@page import="java.awt.Color"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.html.WebColors"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.itextpdf.text.Image"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.Math"%>
<%@page import=" java.lang.Math"%>
<%@page import=" java.time.LocalDate"%>
<%@page import="com.itextpdf.text.ListItem"%>
<%-- <%@page import="com.itextpdf.text.List"%> --%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.BaseColor"%>
<%@page import="com.itextpdf.text.pdf.draw.LineSeparator"%>
<%@page import="com.itextpdf.text.Rectangle"%>
<%@page import="com.itextpdf.text.Chunk"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.DataOutput"%>
<%@page import="org.apache.commons.io.output.ByteArrayOutputStream"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.PageSize"%>
<%-- <%@page import="com.itextpdf.layout.Document;"%> --%>
<%
response.setContentType("application/pdf");
Font fontbold = new Font(Font.FontFamily.TIMES_ROMAN, 9, Font.BOLD);
Font font9normal = new Font(Font.FontFamily.TIMES_ROMAN, 9, Font.NORMAL);
Font fontnormal = new Font(Font.FontFamily.TIMES_ROMAN, 10, Font.NORMAL);
Font fontnormalbold = new Font(Font.FontFamily.TIMES_ROMAN, 10, Font.BOLD);
Font fontnormal2 = new Font(Font.FontFamily.TIMES_ROMAN, 9, Font.NORMAL);
Font fontnormalhead = new Font(Font.FontFamily.TIMES_ROMAN, 15, Font.BOLD);
Font fontnormalhead1 = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
Font fontnormalhead18 = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
Font fontnormalhead6 = new Font(Font.FontFamily.TIMES_ROMAN, 20, Font.NORMAL);
Font fontnormalhead3 = new Font(Font.FontFamily.TIMES_ROMAN, 30, Font.BOLD);
Font fontnormalhead2 = new Font(Font.FontFamily.TIMES_ROMAN, 15, Font.BOLD);
Font fontnormalhead4 = new Font(Font.FontFamily.TIMES_ROMAN, 25, Font.BOLD);
Font fontnormalhead5 = new Font(Font.FontFamily.TIMES_ROMAN, 25, Font.BOLD);
Font fontnormalhead7 = new Font(Font.FontFamily.TIMES_ROMAN, 20, Font.BOLD);
Font fontnormal1 = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
Font fontnormalheadcolor = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
Font fontnormalheadd = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
Font fontnormalheaddd = new Font(Font.FontFamily.TIMES_ROMAN, 10, Font.NORMAL);
Font fontboldheaddd = new Font(Font.FontFamily.TIMES_ROMAN, 10, Font.NORMAL);
fontnormalheadcolor.setColor(BaseColor.BLUE);
fontnormal1.setColor(BaseColor.BLACK);
fontnormalhead1.setColor(BaseColor.BLACK);
fontnormalhead2.setColor(BaseColor.BLACK);
fontnormalhead3.setColor(BaseColor.BLACK);
fontnormalhead4.setColor(BaseColor.BLUE);
fontnormalhead5.setColor(BaseColor.RED);
fontnormalheaddd.setColor(BaseColor.RED);
fontnormalhead6.setColor(BaseColor.WHITE);
fontnormalhead7.setColor(BaseColor.BLUE);
fontboldheaddd.setColor(BaseColor.RED);

BaseColor myColor = WebColors.getRGBColor("#BDD99E");
BaseColor myColor1 = WebColors.getRGBColor("#036aad");
Color color = Color.decode("#036aad");
fontnormalhead18.setColor(myColor1);

Font light_grey = new Font(fontbold);
light_grey.setColor(BaseColor.DARK_GRAY);


try {

	Document document = new Document(PageSize.LETTER, (float) -50, (float) -50, 0, 0);
	
 	document = new Document(PageSize.A4, (float) -50, (float) -50, 0, 0);
	document.setMargins(30, 30, 20, 20);
	document.setMarginMirroring(true);
	document.setMarginMirroringTopBottom(true);

	ByteArrayOutputStream buffer = new ByteArrayOutputStream();
	PdfWriter.getInstance(document, buffer);
	document.open();

	// Creating an ImageData object
	
	
	PdfPTable table = new PdfPTable(1);
	Phrase phrase = new Phrase();
	PdfPCell cell = new PdfPCell(phrase);

	document.add(table);
	
	table = new PdfPTable(14);
	table.setWidthPercentage(100);

	/* Chunk chunk1 = new Chunk("V", fontnormalhead18);
	Chunk chunk2 = new Chunk("K ", fontnormalhead1);
	Chunk chunk3 = new Chunk("TRA", fontnormalhead18);
	Chunk chunk4 = new Chunk("VELS", fontnormalhead1);

	phrase = new Phrase();
	phrase.add(chunk1);
	phrase.add(chunk2);
	phrase.add(chunk3);
	phrase.add(chunk4);

	cell = new PdfPCell(phrase);
	cell.setPaddingTop(2);
	cell.setPaddingBottom(3);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(10);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell); */
	
	Image image = Image.getInstance("C:/Users/shoai/Downloads/vklogo.png"); // Replace with the path to your image file
	image.scaleAbsolute(140, 80);
	phrase = new Phrase();
	phrase.add(new Chunk("", fontnormalhead1));
	phrase.add(new Chunk(image, 0, 0, true)); // Add the image to the phrase
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(-20);
	cell.setPaddingBottom(3);
	cell.setPaddingLeft(-10);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(11);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	Chunk chunk = new Chunk("Mob.: +91-9911575031\n           +91-9250974747", font9normal);
	chunk.setLineHeight(14); // Adjust this value to increase line height
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(15);
	cell.setPaddingBottom(0);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
	table.addCell(cell);

	document.add(table);
	
	
	
	table = new PdfPTable(16);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	 chunk = new Chunk("160, Second floor, Sarai Julaina, New Friends Colony,\nOpp.Escort Hospital New Delhi-110025\nPhone: 011-45536519, 9555633755, 9250974747,\nEmail: vijay19792004@gmail.com", font9normal);
	chunk.setLineHeight(14); // Adjust this value to increase line height
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(-15);
	cell.setPaddingBottom(12);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(12);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("PHOTOGRAPH",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(60);
	cell.setPaddingBottom(20);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormalheadd));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(0);
	cell.setPaddingBottom(12);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(1);
	
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(16);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	 chunk = new Chunk("VK TRAVELS\nMANPOWER CONSULTANTS\n\n\n", fontnormal1);
	chunk.setLineHeight(14); // Adjust this value to increase line height
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(-15);
	cell.setPaddingBottom(0);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(12);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(30);
	cell.setPaddingBottom(0);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthLeft(1.0f);
	//cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormalheadd));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(0);
	cell.setPaddingBottom(0);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(1);
	
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(14);
	table.setWidthPercentage(100);
	
	
	phrase = new Phrase();
	phrase.add(new Chunk("Ref.",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(0);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthTop(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("No./Date",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(0);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthTop(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Post Applied For",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(0);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(5);
	cell.setBorderWidthTop(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Country of Employmemnt",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(0);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(4);
	cell.setBorderWidthTop(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.setSpacingBefore(10);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(14);
	table.setWidthPercentage(100);
	
	
	phrase = new Phrase();
	phrase.add(new Chunk("Shoaib",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(5);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(4);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.setSpacingBefore(10);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(16);
	table.setWidthPercentage(100);
	
	
	phrase = new Phrase();
	phrase.add(new Chunk("Name as per passport",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(13);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.setSpacingBefore(10);
	table.addCell(cell);

	document.add(table);
	
	
	table = new PdfPTable(14);
	table.setWidthPercentage(100);
	
	
	phrase = new Phrase();
	phrase.add(new Chunk("Father Name",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(12);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(14);
	table.setWidthPercentage(100);
	
	
	phrase = new Phrase();
	phrase.add(new Chunk("Mother Name",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(12);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(16);
	table.setWidthPercentage(100);
	
	
	phrase = new Phrase();
	phrase.add(new Chunk("Permanent Address",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(13);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);

	document.add(table);

	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(12);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.setSpacingBefore(22);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(16);
	table.setWidthPercentage(100);
	
	
	phrase = new Phrase();
	phrase.add(new Chunk("Contact Address",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(13);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);

	document.add(table);

	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(9);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Tel",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(3);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(22);
	table.addCell(cell);

	document.add(table);
	
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Age & Date of Birth",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Place of birth",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Religion",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Children",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("21",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Passport No.",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Date of Issue",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Place of Issue",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Validity",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("21",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);

	document.add(table);
	
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	 chunk = new Chunk("EDUCATIONAL/TECHNICAL QUALIFICATION", fontnormal1);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(0);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(12);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	

	document.add(table);
	
	table = new PdfPTable(14);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	 chunk = new Chunk("Certification", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("Board/University Institute", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(4);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("From", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("To", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("Percent", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	

	document.add(table);
	
	
	table = new PdfPTable(14);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	 chunk = new Chunk("", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(4);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("10", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	

	document.add(table);
	
	
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	 chunk = new Chunk("PREVIOUS EMPLOYMENT RECORD", fontnormal1);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(0);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(12);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	

	document.add(table);
	
	table = new PdfPTable(14);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	 chunk = new Chunk("Name of the Employer", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(4);
	cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("Designation", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("Nature of Work", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("From", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("To", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("Total Years", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	

	document.add(table);
	
	
	table = new PdfPTable(14);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	 chunk = new Chunk("", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(4);
	cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("10", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	phrase = new Phrase();
	 chunk = new Chunk("10", fontbold);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(5);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	

	document.add(table);
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(8);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Signature of the Applicant",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(10);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(4);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_RIGHT);
	//table.setSpacingBefore(22);
	table.addCell(cell);

	document.add(table);
	
	
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	 chunk = new Chunk("FOR OFFICE USE ONLY", fontnormal1);
	phrase.add(chunk);
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(0);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(12);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	table.addCell(cell);
	
	

	document.add(table);
	
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Nature of Test",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Grade",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Result",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Medical",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
	//table.setSpacingBefore(22);
	table.addCell(cell);

	document.add(table);
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("21",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	//cell.setBorderWidthLeft(1.0f);
	cell.setBorderWidthTop(1.0f);
	cell.setBorderWidthRight(1.0f);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);

	document.add(table);
	
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Date",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(1);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(5);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("Signature",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(1);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_RIGHT);
	table.addCell(cell);

	phrase = new Phrase();
	phrase.add(new Chunk("",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(3);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	document.add(table);
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	
	
	phrase = new Phrase();
	phrase.add(new Chunk("Flight Details",fontbold));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(2);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);
	
	phrase = new Phrase();
	phrase.add(new Chunk("",fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(4);
	cell.setPaddingBottom(7);
	cell.setPaddingLeft(5);
	cell.setBorder(PdfPCell.NO_BORDER);
	cell.setColspan(10);
	cell.setBorderWidthBottom(1.0f);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	//table.setSpacingBefore(10);
	table.addCell(cell);

	document.add(table);
	
	
	
	table = new PdfPTable(12);
	table.setWidthPercentage(100);
	phrase = new Phrase();

	phrase.add(new Chunk("", fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(10);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);

	//LocalDate newDate = date.plusMonths(1);
	// emidate = newDate + "";
	//phrase.add(new Chunk(newDate + "", fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(10);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);

	phrase = new Phrase();

	phrase.add(new Chunk("", fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(10);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);

	phrase.add(new Chunk("", fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(10);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);

	phrase = new Phrase();
	phrase.add(new Chunk("", fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(10);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	phrase = new Phrase();

	phrase.add(new Chunk("", fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(10);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);

	phrase = new Phrase();
	phrase.add(new Chunk("", fontnormal));
	cell = new PdfPCell(phrase);
	cell.setPaddingTop(10);
	cell.setColspan(3);
	cell.setHorizontalAlignment(PdfPCell.ALIGN_LEFT);
	table.addCell(cell);
	
	document.close();
	

	DataOutputStream dataOutput = new DataOutputStream(response.getOutputStream());
	byte[] bytes = buffer.toByteArray();
	response.setContentLength(bytes.length);
	for (int i = 0; i < bytes.length; i++) {
		dataOutput.writeByte(bytes[i]);
	}
	dataOutput.flush();
	dataOutput.close();
	return;

} catch (DocumentException e) {

	e.printStackTrace();
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Result Of Digital Calculator</title>
</head>
<body>

	<%!public int hexadecimalToDecimal(String hexVal) {
		int len = hexVal.length();
		int base = 1;
		int dec_val = 0;
		for (int i = len - 1; i >= 0; i--) {
			if (hexVal.charAt(i) >= '0' && hexVal.charAt(i) <= '9') {
				dec_val += (hexVal.charAt(i) - 48) * base;
				base = base * 16;
			} else if (hexVal.charAt(i) >= 'A' && hexVal.charAt(i) <= 'F') {
				dec_val += (hexVal.charAt(i) - 55) * base;
				base = base * 16;
			}
		}
		return dec_val;
	}%>


	<%!public List<Integer> decimalToOctal(int d) {
		List<Integer> l = new ArrayList<Integer>();
		int decimal = d;
		while (decimal != 0) {
			int re = decimal % 8;
			l.add(re);
			decimal = decimal / 8;
		}

		return l;

	}%>


	<%!public int octalToDecimal(int b) {
		int k = 0;
		int bin1 = b;
		int deci1 = 0;
		while (bin1 != 0) {
			// System.out.println("Start...");
			int re = bin1 % 10;
			Double d = new Double(Math.pow(8, k++));
			int i = d.intValue();
			deci1 = deci1 + re * (i);
			bin1 = bin1 / 10;

		}
		//System.out.println(deci1);
		return deci1;
	}%>


	<%!public int binToInt(int b) {
		int k = 0;
		int bin1 = b;
		int deci1 = 0;
		while (bin1 != 0) {
			// System.out.println("Start...");
			int re = bin1 % 10;
			Double d = new Double(Math.pow(2, k++));
			int i = d.intValue();
			deci1 = deci1 + re * (i);
			bin1 = bin1 / 10;

		}
		//System.out.println(deci1);
		return deci1;
	}%>




	<%!public List<Integer> decimalToBinary(int d) {
		List<Integer> l = new ArrayList<Integer>();
		int decimal = d;
		while (decimal != 0) {
			int re = decimal % 2;
			l.add(re);
			decimal = decimal / 2;
		}

		return l;

	}%>

	<div class="container my-5">
		<h1 class="text-center alert-success">Result-Digital Calculator</h1>


		<table class="table">
			<thead>
				<tr>
					<th>First Number</th>
					<th>Add/Sub</th>
					<th>Operation</th>
					<th>Second Number</th>
					<th>Result</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=request.getParameter("fn")%></td>
					<td><%=request.getParameter("as")%></td>
					<td><%=request.getParameter("op")%></td>
					<td><%=request.getParameter("sn")%></td>
					<td>
						<%
						String fn = request.getParameter("fn");
						String sn = request.getParameter("sn");
						String op = request.getParameter("op");
						if (op.equals("decimal")) {
							try {
								int a = Integer.parseInt(fn);
								int b = Integer.parseInt(sn);

								if (request.getParameter("as").equals("add"))
							out.print(a + b);
								else
							out.print(a - b);
							} catch (Exception e) {
								out.print("Decimal Operation Could Not perform.");
							}
						} else if (op.equals("binary")) {

							try {
								int a = binToInt(Integer.parseInt(request.getParameter("fn")));
								int b = binToInt(Integer.parseInt(request.getParameter("sn")));

								int res = 0;
								if (request.getParameter("as").equals("add"))
							res = a + b;
								else
							res = a - b;
								String finalres = "";
								List<Integer> l = decimalToBinary(res);
								for (int i = l.size() - 1; i >= 0; i--) {
							finalres += l.get(i);
								}
								out.print(finalres);
							} catch (Exception e) {
								out.print("Binary Operation Could Not perform.");
							}
						} else if (op.equals("octal")) {
							try {
								int a = octalToDecimal(Integer.parseInt(request.getParameter("fn")));
								int b = octalToDecimal(Integer.parseInt(request.getParameter("sn")));

								int res = 0;

								if (request.getParameter("as").equals("add"))
							res = a + b;
								else
							res = a - b;

								List<Integer> l = decimalToOctal(res);
								String finalres = "";
								for (int i = l.size() - 1; i >= 0; i--) {
							finalres += l.get(i);
								}
								out.print(finalres);
							} catch (Exception e) {
								out.print("Octal Operation Could Not perform.");
							}
						} else if (op.equals("hexadecimal")) {
							int a = hexadecimalToDecimal(request.getParameter("fn"));
							int b = hexadecimalToDecimal(request.getParameter("sn"));

							int res = 0;
							if (request.getParameter("as").equals("add"))
								res = a + b;
							else
								res = a - b;

							char[] hexaDeciNum = new char[100];
							int n = res;
							int i = 0;
							while (n != 0) {
								int temp = 0;
								temp = n % 16;
								if (temp < 10) {
							hexaDeciNum[i] = (char) (temp + 48);
							i++;
								} else {
							hexaDeciNum[i] = (char) (temp + 55);
							i++;
								}
								n = n / 16;
							}
							for (int j = i - 1; j >= 0; j--)
								out.print(hexaDeciNum[j] + "");
						}
						%>
					</td>
				</tr>

			</tbody>
		</table>
		<a href="index.jsp" class="btn btn-primary">Go to Home Page</a>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>


</html>
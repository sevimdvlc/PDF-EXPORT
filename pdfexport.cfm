<html>
	<head> 
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/html2pdf.js/0.9.1/html2pdf.bundle.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.1/html2pdf.bundle.min.js"></script>
	</head>  
	<button class="btn btn-primary" class="html2PdfConverter" onclick="createPDF()" id="pdfbtn" type="button"><span id="pdftext">PDF</span></button>
	<body class="container">	
		<div id="element-to-print"> 
			PDF CONTENT
		</div> 
	</body>
</html>    

<script>
	function createPDF() { 
	var element = document.getElementById('element-to-print');
	html2pdf(element, {
		margin:1,
		padding:0,
		filename: 'deneme.pdf',
		image: { type: 'jpeg', quality: 1 },
		html2canvas: { scale: 2,  logging: true },
		jsPDF: { unit: 'in', format: 'A2', orientation: 'P' },
		class: createPDF
	}); 	
}; 
</script> 

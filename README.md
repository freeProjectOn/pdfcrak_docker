# pdfcrak_docker
$git clone https://github.com/freeProjectOn/pdfcrak_docker.git </BR>
$docker build -t my_pdfcrack .</BR>
<b>create folder pdf_files</b></BR>
$mkdir pdf_files</BR>
<b>copy encrypted pdf file into folder "pdf_files"
and start decrypt process by following</b></BR>
$docker run -v $(pwd)/pdf_files:/pdf -it my_pdfcrack</BR>
inside container run</BR>
$start</BR>


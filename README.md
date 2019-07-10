# pdfcrak_docker
<code>$git clone https://github.com/freeProjectOn/pdfcrak_docker.git</code></BR>
<code>$docker build -t my_pdfcrack .</code></BR>
<b>create folder pdf_files</b></BR>
<code>$mkdir pdf_files</code></BR>
<b>copy encrypted pdf file into folder "pdf_files"
and start decrypt process by following</b></BR>
<code>$docker run -v $(pwd)/pdf_files:/pdf -it my_pdfcrack</code></BR>
inside container run</BR>
<code>$start</BR>
<HR></HR>
<b>When you stop a run container again you can use</b></BR>
<code>$docker run -v $(pwd)/pdf_files:/pdf -it my_pdfcrack</code></BR>
<code>$$start -l /pdf/savedstate.sav</code>

# ------------------------------------------------------------------------------
#  Parameters
# ------------------------------------------------------------------------------
dname=image
n=2340373
qn=200
D=150
K=10
info_index=./data/${dname}/index/vector.txt
HWS_index=./data/${dname}/index/index.bin
base_index=./data/${dname}/index/outgraph.hnsw
dPath=./data/${dname}/${dname}


   ./HWS/build/main ${dPath}.ds ${n} ${D} ${qn} ipnswplus ${info_index} ${HWS_index} ${base_index} ${dPath}.mip -1

   ./ipplus/build/main --mode database --database ${dPath}.ds --databaseSize ${n} --dimension ${D} --outputGraph ${base_index}
  
   ./HWS/build/main ${dPath}.q ${n} ${D} ${qn} ipnswplus ${info_index} ${HWS_index} ${base_index} ${dPath}.mip ${K}

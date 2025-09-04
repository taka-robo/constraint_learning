# ホスト側で実行
docker run --rm -it \
  -v "$PWD":/workspace/constraint_learning \
  -e MOSEKLM_LICENSE_FILE=/workspace/constraint_learning/license/mosek.lic \
  constraint-learning:conda \
  bash -lc 'export PYTHONPATH="/workspace/constraint_learning/_scripts:/workspace/constraint_learning/poly_matrix:/workspace/constraint_learning"; \
            ls -l /workspace/constraint_learning/license; \
            head -n2 /workspace/constraint_learning/license/mosek.lic; \
            make results_test'

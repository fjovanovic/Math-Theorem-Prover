theory IMO_Problem3
  imports Complex_Main
begin 


text \<open>Problem formulation\<close>
lemma problem_formulation:
  assumes "\<forall> x y z. x \<ge> 0 \<and> y \<ge> 0 \<and> z \<ge> 0 \<and> x + y + z = 1"
  shows "x*y + y*z + 2*z*x \<le> 1/2"
  sorry


text \<open>Problem proof\<close>
lemma problem_proof:
  assumes "\<forall> x y z :: real. x \<ge> 0 \<and> y \<ge> 0 \<and> z \<ge> 0 \<and> x + y + z = 1"
  shows "x*y + y*z + 2*z*x \<le> 1/2"
proof-
  fix x y z :: real
  have "x^2 + y^2 + z^2 + 2*x*y + 2*y*z + 2*z*x = 1" using assms by blast
  then have "2*(x*y + y*z + 2*z*x) = 1 - (x^2 + y^2 + z^2 - 2*z*x)" by (smt (verit, ccfv_threshold) assms)
  then have "2*(x*y + y*z + 2*z*x) = 1 - (x - z)^2 - y^2" by (smt (verit, best) assms)
  then have "x = z \<and> y = 0" by (smt (verit, ccfv_threshold) assms)
  then have "x = 1/2 \<and> z = 1/2 \<and> y = 0"  by (smt (verit, del_insts) assms)
  then show ?thesis using assms by (smt (verit, ccfv_SIG))
qed


end
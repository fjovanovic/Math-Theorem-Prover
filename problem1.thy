theory IMO_Problem1
  imports Complex_Main
begin 


text \<open>Problem formulation\<close>
lemma problem_formulation: 
  assumes "\<forall> x y z :: real. 0 \<le> x \<and> x \<le> 1 \<and> 0 \<le> y \<and> y \<le> 1 \<and> 0 \<le> z \<and> z \<le> 1"
  shows "x*y + y*z + z*x \<ge> 2*x*y*z"
  sorry


text \<open>Problem proof\<close>
lemma problem_proof: 
  assumes "\<forall> x y z :: real. 0 \<le> x \<and> x \<le> 1 \<and> 0 \<le> y \<and> y \<le> 1 \<and> 0 \<le> z \<and> z \<le> 1"
  shows "x*y + y*z + z*x \<ge> 2*x*y*z" 
proof-
  fix x y z :: real
  have "0 \<le> x*y  \<and>  x*y \<le> 1" by (simp add: assms)
  then have "0 \<le> y*z  \<and>  y*z \<le> 1" by (simp add: assms)
  then have "0 \<le> x*z  \<and>  x*z \<le> 1" by (simp add: assms)
  then have "x*y + y*z + x*z \<le> 3" by (smt (verit, del_insts) assms)
  then have "0 \<le> 2*x*y*z  \<and>  2*x*y*z \<le> 1" by (simp add: assms)
  then show ?thesis using assms by (smt (verit, del_insts))
qed


end
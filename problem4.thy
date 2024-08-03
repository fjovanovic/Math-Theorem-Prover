theory IMO_Problem4
  imports Complex_Main
begin


text \<open>Problem formulation\<close>
lemma problem_formulation:
  assumes "\<forall> x y. x \<ge> y \<and> y \<ge> 1 \<and> 2*x^2 - x*y - 5*x + y + 4 = 0"
  shows "x = 2 \<and> y = 2"
  sorry


text \<open>Problem proof\<close>
lemma problem_proof:
  assumes "\<forall> x y :: real. x \<ge> y \<and> y \<ge> 1 \<and> 2*x^2 - x*y - 5*x + y + 4 = 0"
  shows "x = 2 \<and> y = 2"
proof-
  fix x y :: real
  have "x \<ge> 0 \<and> x - y \<ge> 0" using assms by auto
  then have "x^2 - x*y = x*(x-y)" by (simp add: power2_eq_square right_diff_distrib')
  then have "0 = 2*x^2 - x*y - 5*x + y + 4" using assms by auto
  then have "2*x^2 - x*y - 5*x + y + 4 \<ge> x^2 - 4*x + 4" by (simp add: assms)
  then have "x^2 - 4*x + 4 = (x - 2)^2" by (smt (verit, best) assms)
  then show ?thesis by (smt (verit, best) assms)
qed


end
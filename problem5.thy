theory IMO_Problem5
  imports Complex_Main
begin


text \<open>Problem formulation\<close>
lemma problem_formulation:
  assumes "\<forall> x :: real. (x-7)^3 + (x+3)^3 = 278*(x-2)"
  shows "x = 2 \<or> x = -6 \<or> x = 10"
  sorry


text \<open>Problem proof\<close>
lemma problem_proof:
  assumes "\<forall> x :: real. (x-7)^3 + (x+3)^3 = 278*(x-2)"
  shows "x = 2 \<or> x = -6 \<or> x = 10"
proof-
  fix x :: real
  have "(2*x - 4) * ((x - 7)^2 - (x - 7) * (x + 3) + (x + 3)^2) = 278 * (x - 2)" by (smt (z3) assms problem_formulation) (* x1 = 2 *)
  then have "(x^2 - 14*x + 49) - (x^2 - 4*x - 21) + (x^2 + 6*x + 9) = 139" by (smt (verit, ccfv_threshold) assms problem_formulation)
  then have "x^2 - 4*x + 79 = 139" using assms by auto
  then have "x^2 - 4*x - 60 = 0" by (smt (z3) assms problem_formulation) (* x2 = -6, x3 = 10 *)
  then show ?thesis by (simp add: assms problem_formulation)
qed


end
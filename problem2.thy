theory IMO_Problem2
  imports Complex_Main
begin 


text \<open>Problem formulation\<close>
lemma problem_formulation: 
  assumes "\<forall> x y z :: real. x + y + z = 1"
  shows "x*y + y*z + z*x \<ge> 9*x*y*z"
  sorry


text \<open>Problem proof\<close>
lemma problem_proof: 
  assumes "\<forall> x y z :: real. x + y + z = 1"
  shows "x*y + y*z + z*x \<ge> 9*x*y*z"
proof-
  fix x y z :: real
  have "x*y + y*z + z*x = (x*y + y*z + z*x) * 1" using assms by auto
  then have "(x*y + y*z + z*x) * 1 = (x*y + y*z + z*x) * (x + y + z)" using assms by auto
  then have "(x*y + y*z + z*x) * (x + y + z) = x^2*y + y*z^2 + z^2*x + x*y^2 + y^2*z + z*x^2 + 3*x*y*z" using assms by auto
  then have "x^2*y + y*z^2 + z^2*x + x*y^2 + y^2*z + z*x^2 + 3*x*y*z \<ge> 2*x*y*z + 2*x*y*z + 2*x*y*z + 3*x*y*z" by (metis assms le_numeral_extra(4))
  then have "2*x*y*z + 2*x*y*z + 2*x*y*z + 3*x*y*z = 9*x*y*z" by auto
  then show ?thesis using assms by (smt (verit, best))
qed


end
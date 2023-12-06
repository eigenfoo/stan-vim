" Syntax file for the Stan probabilistic programming language
" Language: Stan (http://mc-stan.org)
" Maintainer: George Ho (https://eigenfoo.xyz)
" Last Change: November 10, 2019
" Filenames: *.stan
" License: MIT License
" URL: https://github.com/eigenfoo/stan-vim

if exists("b:current_syntax")
  finish
endif

" Case sensitivity
syntax case match

" Blocks
syntax keyword stanBlock functions data parameters model
syntax match stanBlock "\vgenerated quantities"
syntax match stanBlock "\vtransformed parameters"
syntax match stanBlock "\vtransformed data"

syntax keyword stanType int real vector simplex unit_vector ordered positive_ordered
syntax keyword stanType row_vector matrix cholesky_factor_corr cholesky_factor_cov
syntax keyword stanType corr_matrix cov_matrix
syntax keyword stanType array
syntax keyword stanType complex complex_matrix complex_vector complex_row_vector

" Distributions
syntax keyword stanFunction bernoulli
syntax keyword stanFunction bernoulli_lpmf bernoulli_lupmf bernoulli_cdf bernoulli_lcdf bernoulli_lccdf bernoulli_rng

syntax keyword stanFunction bernoulli_logit
syntax keyword stanFunction bernoulli_logit_lpmf bernoulli_logit_lupmf bernoulli_logit_rng

syntax keyword stanFunction bernoulli_logit_glm
syntax keyword stanFunction bernoulli_logit_glm_lpmf bernoulli_logit_glm_lupmf bernoulli_logit_glm_rand

syntax keyword stanFunction binomial
syntax keyword stanFunction binomial_lpmf binomial_lupmf binomial_cdf binomial_lcdf binomial_lccdf binomial_rng

syntax keyword stanFunction binomial_logit
syntax keyword stanFunction binomial_logit_lpmf binomial_logit_lupmf

syntax keyword stanFunction beta_binomial
syntax keyword stanFunction beta_binomial_lpmf beta_binomial_lupmf beta_binomial_cdf beta_binomial_lcdf beta_binomial_lccdf beta_binomial_rng

syntax keyword stanFunction hypergeometric
syntax keyword stanFunction hypergeometric_lpmf hypergeometric_lupmf hypergeometric_rng

syntax keyword stanFunction categorical categorical_logit categorical_logit_glm
syntax keyword stanFunction categorical_lpmf categorical_lupmf categorical_logit_lpmf categorical_logit_lupmf categorical_rng categorical_logit_rng
syntax keyword stanFunction categorical_logit_glm_lpmf categorical_logit_glm_lupmf

syntax keyword stanFunction discrete_range
syntax keyword stanFunction discrete_range_lpmf discrete_range_lupmf discrete_range_cdf discrete_range_lcdf discrete_range_lccdf discrete_range_rng

syntax keyword stanFunction ordered_logistic ordered_logistic_glm
syntax keyword stanFunction ordered_logistic_lpmf ordered_logistic_lupmf ordered_logistic_rng ordered_logistic_glm_lpmf ordered_logistic_glm_lupmf

syntax keyword stanFunction ordered_probit
syntax keyword stanFunction ordered_probit_lpmf ordered_probit_lupmf ordered_probit_rng

syntax keyword stanFunction neg_binomial
syntax keyword stanFunction neg_binomial_lpmf neg_binomial_lupmf neg_binomial_cdf neg_binomial_lcdf neg_binomial_lccdf neg_binomial_rng

syntax keyword stanFunction neg_binomial_2
syntax keyword stanFunction neg_binomial_2_lpmf neg_binomial_2_lupmf neg_binomial_2_cdf neg_binomial_2_lcdf neg_binomial_2_lccdf neg_binomial_2_rng

syntax keyword stanFunction neg_binomial_2_log
syntax keyword stanFunction neg_binomial_2_log_lpmf neg_binomial_2_log_lupmf neg_binomial_2_log_rng

syntax keyword stanFunction neg_binomial_2_log_glm
syntax keyword stanFunction neg_binomial_2_log_glm_lpmf neg_binomial_2_log_glm_lupmf

syntax keyword stanFunction poisson
syntax keyword stanFunction poisson_lpmf poisson_lupmf poisson_cdf poisson_lcdf poisson_lccdf poisson_rng

syntax keyword stanFunction poisson_log
syntax keyword stanFunction poisson_log_lpmf poisson_log_lupmf poisson_log_rng

syntax keyword stanFunction poisson_log_glm
syntax keyword stanFunction poisson_log_glm_lpmf poisson_log_glm_lupmf

syntax keyword stanFunction multinomial
syntax keyword stanFunction multinomial_lpmf multinomial_lupmf multinomial_rng

syntax keyword stanFunction multinomial_logit
syntax keyword stanFunction multinomial_logit_lpmf multinomial_logit_lupmf multinomial_logit_rng

syntax keyword stanFunction normal
syntax keyword stanFunction normal_lpdf normal_lupdf normal_cdf normal_lcdf normal_lccdf normal_rng

syntax keyword stanFunction std_normal
syntax keyword stanFunction std_normal_lpdf std_normal_lupdf std_normal_cdf std_normal_lcdf std_normal_lccdf std_normal_rng

syntax keyword stanFunction normal_id_glm
syntax keyword stanFunction normal_id_glm_lpdf normal_id_glm_lupdf

syntax keyword stanFunction exp_mod_normal
syntax keyword stanFunction exp_mod_normal_lpdf exp_mod_normal_lupdf exp_mod_normal_cdf exp_mod_normal_lcdf exp_mod_normal_lccdf exp_mod_normal_rng

syntax keyword stanFunction skew_normal
syntax keyword stanFunction skew_normal_lpdf skew_normal_lupdf skew_normal_cdf skew_normal_lcdf skew_normal_lccdf skew_normal_rng

syntax keyword stanFunction student_t
syntax keyword stanFunction student_t_lpdf student_t_lupdf student_t_cdf student_t_lcdf student_t_lccdf student_t_rng

syntax keyword stanFunction cauchy
syntax keyword stanFunction cauchy_lpdf cauchy_lupdf cauchy_cdf cauchy_lcdf cauchy_lccdf cauchy_rng

syntax keyword stanFunction double_exponential
syntax keyword stanFunction double_exponential_lpdf double_exponential_lupdf double_exponential_cdf double_exponential_lcdf double_exponential_lccdf double_exponential_rng

syntax keyword stanFunction logistic
syntax keyword stanFunction logistic_lpdf logistic_lupdf logistic_cdf logistic_lcdf logistic_lccdf logistic_rng

syntax keyword stanFunction gumbel
syntax keyword stanFunction gumbel_lpdf gumbel_lupdf gumbel_cdf gumbel_lcdf gumbel_lccdf gumbel_rng

syntax keyword stanFunction skew_double_exponential
syntax keyword stanFunction skew_double_exponential_lpdf skew_double_exponential_lupdf skew_double_exponential_cdf skew_double_exponential_lcdf skew_double_exponential_lccdf skew_double_exponential_rng

syntax keyword stanFunction lognormal
syntax keyword stanFunction lognormal_lpdf lognormal_lupdf lognormal_cdf lognormal_lcdf lognormal_lccdf lognormal_rng

syntax keyword stanFunction chi_square
syntax keyword stanFunction chi_square_lpdf chi_square_lupdf chi_square_cdf chi_square_lcdf chi_square_lccdf chi_square_rng

syntax keyword stanFunction inv_chi_square
syntax keyword stanFunction inv_chi_square_lpdf inv_chi_square_lupdf inv_chi_square_cdf inv_chi_square_lcdf inv_chi_square_lccdf inv_chi_square_rng

syntax keyword stanFunction scaled_inv_chi_square
syntax keyword stanFunction scaled_inv_chi_square_lpdf scaled_inv_chi_square_lupdf scaled_inv_chi_square_cdf scaled_inv_chi_square_lcdf scaled_inv_chi_square_lccdf scaled_inv_chi_square_rng

syntax keyword stanFunction exponential
syntax keyword stanFunction exponential_lpdf exponential_lupdf exponential_cdf exponential_lcdf exponential_lccdf exponential_rng

syntax keyword stanFunction gamma
syntax keyword stanFunction gamma_lpdf gamma_lupdf gamma_cdf gamma_lcdf gamma_lccdf gamma_rng

syntax keyword stanFunction inv_gamma
syntax keyword stanFunction inv_gamma_lpdf inv_gamma_lupdf inv_gamma_cdf inv_gamma_lcdf inv_gamma_lccdf inv_gamma_rng

syntax keyword stanFunction weibull
syntax keyword stanFunction weibull_lpdf weibull_lupdf weibull_cdf weibull_lcdf weibull_lccdf weibull_rng

syntax keyword stanFunction frechet
syntax keyword stanFunction frechet_lpdf frechet_lupdf frechet_cdf frechet_lcdf frechet_lccdf frechet_rng

syntax keyword stanFunction rayleigh
syntax keyword stanFunction rayleigh_lpdf rayleigh_lupdf rayleigh_cdf rayleigh_lcdf rayleigh_lccdf rayleigh_rng

syntax keyword stanFunction loglogistic
syntax keyword stanFunction loglogistic_lpdf loglogistic_cdf loglogistic_rng loglogistic_log

syntax keyword stanFunction wiener
syntax keyword stanFunction wiener_lpdf wiener_lupdf

syntax keyword stanFunction pareto
syntax keyword stanFunction pareto_lpdf pareto_lupdf pareto_cdf pareto_lcdf pareto_lccdf pareto_rng

syntax keyword stanFunction pareto_type_2
syntax keyword stanFunction pareto_type_2_lpdf pareto_type_2_lupdf pareto_type_2_cdf pareto_type_2_lcdf pareto_type_2_lccdf pareto_type_2_rng

syntax keyword stanFunction beta
syntax keyword stanFunction beta_lpdf beta_lupdf beta_cdf beta_lcdf beta_lccdf beta_rng

syntax keyword stanFunction beta_proportion
syntax keyword stanFunction beta_proportion_lpdf beta_proportion_lupdf beta_proportion_lcdf beta_proportion_lccdf beta_proportion_rng

syntax keyword stanFunction von_mises
syntax keyword stanFunction von_mises_lpdf von_mises_lupdf von_mises_lcdf von_mises_lccdf von_mises_rng

syntax keyword stanFunction uniform
syntax keyword stanFunction uniform_lpdf uniform_lupdf uniform_cdf uniform_lcdf uniform_lccdf uniform_rng

syntax keyword stanFunction multi_normal
syntax keyword stanFunction multi_normal_lpdf multi_normal_lupdf multi_normal_rng

syntax keyword stanFunction multi_normal_prec
syntax keyword stanFunction multi_normal_prec_lpdf multi_normal_prec_lupdf

syntax keyword stanFunction multi_normal_cholesky
syntax keyword stanFunction multi_normal_cholesky_lpdf multi_normal_cholesky_lupdf multi_normal_cholesky_rng

syntax keyword stanFunction multi_gp
syntax keyword stanFunction multi_gp_lpdf multi_gp_lupdf

syntax keyword stanFunction multi_gp_cholesky
syntax keyword stanFunction multi_gp_cholesky_lpdf multi_gp_cholesky_lupdf

syntax keyword stanFunction multi_student_t
syntax keyword stanFunction multi_student_t_lpdf multi_student_t_lupdf multi_student_t_rng

syntax keyword stanFunction multi_student_t_cholesky
syntax keyword stanFunction multi_student_t_cholesky_lpdf multi_student_t_cholesky_lupdf multi_student_t_cholesky_rng

syntax keyword stanFunction gaussian_dlm_obs
syntax keyword stanFunction gaussian_dlm_obs_lpdf gaussian_dlm_obs_lupdf

syntax keyword stanFunction dirichlet
syntax keyword stanFunction dirichlet_lpdf dirichlet_lupdf dirichlet_rng

syntax keyword stanFunction lkj_corr
syntax keyword stanFunction lkj_corr_lpdf lkj_corr_lupdf lkj_corr_rng

syntax keyword stanFunction lkj_corr_cholesky
syntax keyword stanFunction lkj_corr_cholesky_lpdf lkj_corr_cholesky_lupdf lkj_corr_cholesky_rng

syntax keyword stanFunction wishart
syntax keyword stanFunction wishart_lpdf wishart_lupdf wishart_rng

syntax keyword stanFunction wishart_cholesky
syntax keyword stanFunction wishart_cholesky_lpdf wishart_cholesky_lupdf wishart_cholesky_rng

syntax keyword stanFunction inv_wishart
syntax keyword stanFunction inv_wishart_lpdf inv_wishart_lupdf inv_wishart_rng

syntax keyword stanFunction inv_wishart_cholesky
syntax keyword stanFunction inv_wishart_cholesky_lpdf inv_wishart_cholesky_lupdf inv_wishart_cholesky_rng

" Constants
syntax keyword stanConstant pi e sqrt2 log2 log10
syntax keyword stanConstant not_a_number positive_infinity negative_infinity machine_precision

" Built in functions
syntax keyword stanFunction print
syntax keyword stanFunction abs int_step min max
syntax keyword stanFunction get_real get_imag
syntax keyword stanFunction step is_inf is_nan fdim fmin fmax fmod floor ceil round trunc
syntax keyword stanFunction sqrt cbrt square exp exp2 log log2 log10 pow inv inv_sqrt inv_square
syntax keyword stanFunction hypot cos sin tan acos asin atan atan2
syntax keyword stanFunction cosh sinh tanh acosh asinh atanh
syntax keyword stanFunction logit inv_logit inv_cloglog
syntax keyword stanFunction erf erfc inv_erfc Phi inv_Phi Phi_approx binary_log_loss owens_t
syntax keyword stanFunction inc_beta inv_inc_beta lbeta tgamma lgamma digamma trigamma lmgamma gamma_p gamma_q binomial_coefficient_log choose
syntax keyword stanFunction bessel_first_kind bessel_second_kind modified_bessel_first_kind log_modified_bessel_first_kind modified_bessel_second_kind
syntax keyword stanFunction falling_factorial lchoose log_falling_factorial rising_factorial log_rising_factorial
syntax keyword stanFunction expm1 fma multiply_log ldexp lmultiply log1p log1m log1p_exp log1m_exp log_diff_exp log_mix log_sum_exp log_inv_logit log1m_inv_logit
syntax keyword stanFunction lambert_w0 lambert_wm1
syntax keyword stanFunction min max sum prod log_sum_exp mean variance sd distance squared_distance
syntax keyword stanFunction dims num_elements size
syntax keyword stanFunction rep_array
syntax keyword stanFunction append_array
syntax keyword stanFunction sort_asc sort_desc sort_indices_asc sort_indices_desc rank
syntax keyword stanFunction reverse
syntax keyword stanFunction num_elements rows cols
syntax keyword stanFunction dot_product columns_dot_product rows_dot_product dot_self columns_dot_self rows_dot_self
syntax keyword stanFunction tcrossprod crossprod quad_form quad_form_diag quad_form_sym trace_quad_form trace_gen_quad_form
syntax keyword stanFunction multiply_lower_tri_self_transpose diag_pre_multiply diag_post_multiply
syntax keyword stanFunction rep_vector rep_row_vector rep_matrix symmetrize_from_lower_tri
syntax keyword stanFunction add_diag diagonal diag_matrix identity_matrix
syntax keyword stanFunction linspaced_array linspaced_int_array linspaced_vector linspaced_row_vector one_hot_int_array one_hot_array one_hot_vector one_hot_row_vector ones_int_array ones_array ones_vector ones_row_vector zeros_int_array zeros_array zeros_vector zeros_row_vector uniform_simplex
syntax keyword stanFunction col row block sub_col sub_row head tail segment
syntax keyword stanFunction append_col append_row
syntax keyword stanFunction softmax log_softmax cumulative_sum
syntax keyword stanFunction cov_exp_quad
syntax keyword stanFunction mdivide_left_tri_low mdivide_right_tri_low mdivide_left_spd mdivide_right_spd
syntax keyword stanFunction matrix_exp matrix_exp_multiply scale_matrix_exp_multiply matrix_power trace determinant log_determinant log_determinant_spd
syntax keyword stanFunction inverse inverse_spd chol2inv generalized_inverse eigenvalues_sym eigenvectors_sym qr_thin_Q qr_thin_R qr_Q qr_R cholesky_decompose singular_values svd_U svd_V
syntax keyword stanFunction eigenvectors eigenvalues
syntax keyword stanFunction sort_asc sort_desc sort_indices_asc sort_indices_desc rank
syntax keyword stanFunction csr_extract_w csr_extract_v csr_extract_u csr_to_dense_matrix csr_matrix_times_vector
syntax keyword stanFunction to_matrix to_vector to_row_vector to_array_2d to_array_1d to_complex
syntax keyword stanFunction algebra_solver algebra_solver_newton
syntax keyword stanFunction ode_rk45 ode_rk45_tol ode_adams ode_adams_tol ode_bdf ode_bdf_tol ode_adjoint_tol_ctl ode_ckrk ode_ckrk_tol
syntax keyword stanFunction dae dae_tol
syntax keyword stanFunction reduce_sum reduce_sum_static
syntax keyword stanFunction map_rect
syntax keyword stanFunction fft inv_fft fft2 inv_fft2
syntax keyword stanFunction L1 L2

" Deprecations
syntax keyword stanFunction integrate_ode_rk45 integrate_ode integrate_ode_bdf integrate_ode_adams
syntax keyword stanFunction integrate_1d
syntax keyword stanFunction fabs
syntax match stanOperator "\v\<\-"

" Control flow
syntax keyword stanConditional if then else
syntax keyword stanRepeat for in while break continue

" Operators
syntax match stanOperator "\v\+"
syntax match stanOperator "\v\+\="
syntax match stanOperator "\v\-"
syntax match stanOperator "\v\*"
syntax match stanOperator "\v\^"
syntax match stanOperator "\v\~"
syntax match stanOperator "\v\?"
syntax match stanOperator "\v\:"
syntax match stanOperator "\v\'"
syntax match stanOperator "\v\/"
syntax match stanOperator "\v\.[*/]"
syntax match stanOperator "\v\\"

" Removed some, since they're highlighted in other places
syntax keyword stanCppConflict var auto break continue export extern static struct true typedef void
syntax keyword stanOperator return
syntax keyword stanSpecial lower upper offset multiplier
syntax keyword stanKeyword target get_lp

" To do
syntax keyword stanTodo TODO FIXME
syntax match stanFuncDoc "@param"
syntax match stanFuncDoc "@return"
syntax cluster stanCommentGroup contains=stanTodo,stanFuncDoc

" Comments
syntax match stanComment contains=@stanCommentGroup,@Spell "//.*"
syntax match stanComment contains=@stanCommentGroup,@Spell "\#.*"
syntax region stanComment start="/\*" end="\*/" contains=@stanCommentGroup,@Spell

syntax match stanInclude "\v^\s*\#include"

" Literals
"" Numbers and floats - only match if it is its own word
"" Do not escape \< and \> in \v 'very magic' mode... See :help /ordinary-atom
syntax match stanNumber "\v(<|-)\d+>"
syntax match stanFloat "\v(<|-)\d+(\.\d*)?([eE][+\-]?\d+)?>"

"" Booleans
syntax keyword stanBoolean true false

"" Strings - any ASCII character except \ and "
syntax region stanString start="\v\"" end="\v\""

" Exceptions
syntax keyword stanException reject

" Link
highlight link stanComment Comment
highlight link stanConstant Constant
highlight link stanString String
highlight link stanNumber Number
highlight link stanFloat Float
highlight link stanBoolean Boolean
highlight link stanSpecial Special
highlight link stanFunction Function
highlight link stanConditional Conditional
highlight link stanRepeat Repeat
highlight link stanOperator Operator
highlight link stanBlock Keyword
highlight link stanKeyword Keyword
highlight link stanCppConflict Error
highlight link stanException Exception
highlight link stanInclude Include
highlight link stanType Type
highlight link stanTodo Todo
highlight link stanFuncDoc Keyword

let b:current_syntax = "stan"

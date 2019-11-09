" Vim syntax file for the Stan probabilistic programming language
" Language:	Stan (http://mc-stan.org)
" Maintainer: George Ho (https://eigenfoo.xyz)
" Last Change: November 8, 2019
" Filenames: *.stan,*.STAN

if exists("b:current_syntax")
  finish
endif

syntax case match

" Comments
syntax match stanComment contains=@Spell '//.*'
syntax match stanComment contains=@Spell '\#.*'
syntax region stanComment start="/\*" end="\*/" contains=@Spell

" Numbers and values
"" Integer with + - or nothing in front
syntax match stanNumber '\d\+'
syntax match stanNumber '[+-]\d\+'

"" Floating point number with decimal no E or e (+, -)
syntax match stanFloat '\d\+\.\d*'
syntax match stanFloat '[-+]\d\+\.\d*'

"" Floating point like number with E and no decimal point (+, -)
syntax match stanFloat '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syntax match stanFloat '\d[[:digit:]]*[eE][\-+]\=\d\+'

"" Floating point like number with E and decimal point (+, -)
syntax match stanFloat '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syntax match stanFloat '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

" Booleans
syntax keyword stanBoolean true false

" Blocks
syntax keyword stanBlock functions data parameters model
syntax match stanBlock 'generated quantities'
syntax match stanBlock 'transformed parameters'
syntax match stanBlock 'transformed data'

syntax keyword stanType int real vector simplex unit_vector ordered positive_ordered
syntax keyword stanType row_vector matrix cholesky_factor_corr cholesky_factor_cov
syntax keyword stanType corr_matrix cov_matrix

" Distributions
syntax keyword stanFunction bernoulli bernoulli_logit
syntax keyword stanFunction bernoulli_lpmf bernoulli_cdf bernoulli_lcdf bernoulli_lccdf bernoulli_rng
syntax keyword stanFunction bernoulli_logit_lpmf bernoulli_logit_rng

syntax keyword stanFunction binomial binomial_logit
syntax keyword stanFunction binomial_lpmf binomial_cdf binomial_lcdf binomial_lccdf binomial_rng
syntax keyword stanFunction binomial_logit_lpmf

syntax keyword stanFunction beta_binomial
syntax keyword stanFunction beta_binomial_lpmf beta_binomial_cdf beta_binomial_lcdf beta_binomial_lccdf beta_binomial_rng

syntax keyword stanFunction hypergeometric
syntax keyword stanFunction hypergeometric_lpmf hypergeometric_rng

syntax keyword stanFunction categorical categorical_logit
syntax keyword stanFunction categorical_lpmf categorical_logit_lpmf categorical_rng categorical_logit_rng

syntax keyword stanFunction ordered_logistic
syntax keyword stanFunction ordered_logistic_lpmf ordered_logistic_rng

syntax keyword stanFunction ordered_probit
syntax keyword stanFunction ordered_probit_lpmf ordered_probit_rng

syntax keyword stanFunction neg_binomial
syntax keyword stanFunction neg_binomial_lpmf neg_binomial_cdf neg_binomial_lcdf neg_binomial_lccdf neg_binomial_rng

syntax keyword stanFunction neg_binomial_2
syntax keyword stanFunction neg_binomial_2_lpmf neg_binomial_2_cdf neg_binomial_2_lcdf neg_binomial_2_lccdf neg_binomial_2_rng

syntax keyword stanFunction neg_binomial_2_log
syntax keyword stanFunction neg_binomial_2_log_lpmf neg_binomial_2_log_rng

syntax keyword stanFunction poisson
syntax keyword stanFunction poisson_lpmf poisson_cdf poisson_lcdf poisson_lccdf poisson_rng

syntax keyword stanFunction poisson_log
syntax keyword stanFunction poisson_log_lpmf poisson_log_rng

syntax keyword stanFunction multinomial
syntax keyword stanFunction multinomial_lpmf multinomial_rng

syntax keyword stanFunction normal
syntax keyword stanFunction normal_lpdf normal_cdf normal_lcdf normal_lccdf normal_rng

syntax keyword stanFunction std_normal
syntax keyword stanFunction std_normal_lpdf

syntax keyword stanFunction normal_id_glm
syntax keyword stanFunction normal_id_glm_lpdf

syntax keyword stanFunction exp_mod_normal
syntax keyword stanFunction exp_mod_normal_lpdf exp_mod_normal_cdf exp_mod_normal_lcdf exp_mod_normal_lccdf exp_mod_normal_rng

syntax keyword stanFunction skew_normal
syntax keyword stanFunction skew_normal_lpdf skew_normal_cdf skew_normal_lcdf skew_normal_lccdf skew_normal_rng

syntax keyword stanFunction student_t
syntax keyword stanFunction student_t_lpdf student_t_cdf student_t_lcdf student_t_lccdf student_t_rng

syntax keyword stanFunction cauchy
syntax keyword stanFunction cauchy_lpdf cauchy_cdf cauchy_lcdf cauchy_lccdf cauchy_rng

syntax keyword stanFunction double_exponential
syntax keyword stanFunction double_exponential_lpdf double_exponential_cdf double_exponential_lcdf double_exponential_lccdf double_exponential_rng

syntax keyword stanFunction logistic
syntax keyword stanFunction logistic_lpdf logistic_cdf logistic_lcdf logistic_lccdf logistic_rng

syntax keyword stanFunction gumbel
syntax keyword stanFunction gumbel_lpdf gumbel_cdf gumbel_lcdf gumbel_lccdf gumbel_rng

syntax keyword stanFunction lognormal
syntax keyword stanFunction lognormal_lpdf lognormal_cdf lognormal_lcdf lognormal_lccdf lognormal_rng

syntax keyword stanFunction chi_square
syntax keyword stanFunction chi_square_lpdf chi_square_cdf chi_square_lcdf chi_square_lccdf chi_square_rng

syntax keyword stanFunction inv_chi_square
syntax keyword stanFunction inv_chi_square_lpdf inv_chi_square_cdf inv_chi_square_lcdf inv_chi_square_lccdf inv_chi_square_rng

syntax keyword stanFunction scaled_inv_chi_square
syntax keyword stanFunction scaled_inv_chi_square_lpdf scaled_inv_chi_square_cdf scaled_inv_chi_square_lcdf scaled_inv_chi_square_lccdf scaled_inv_chi_square_rng

syntax keyword stanFunction exponential
syntax keyword stanFunction exponential_lpdf exponential_cdf exponential_lcdf exponential_lccdf exponential_rng

syntax keyword stanFunction gamma
syntax keyword stanFunction gamma_lpdf gamma_cdf gamma_lcdf gamma_lccdf gamma_rng

syntax keyword stanFunction inv_gamma
syntax keyword stanFunction inv_gamma_lpdf inv_gamma_cdf inv_gamma_lcdf inv_gamma_lccdf inv_gamma_rng

syntax keyword stanFunction weibull
syntax keyword stanFunction weibull_lpdf weibull_cdf weibull_lcdf weibull_lccdf weibull_rng

syntax keyword stanFunction frechet
syntax keyword stanFunction frechet_lpdf frechet_cdf frechet_lcdf frechet_lccdf frechet_rng

syntax keyword stanFunction rayleigh
syntax keyword stanFunction rayleigh_lpdf rayleigh_cdf rayleigh_lcdf rayleigh_lccdf rayleigh_rng

syntax keyword stanFunction wiener
syntax keyword stanFunction wiener_lpdf

syntax keyword stanFunction pareto
syntax keyword stanFunction pareto_lpdf pareto_cdf pareto_lcdf pareto_lccdf pareto_rng

syntax keyword stanFunction pareto_type_2
syntax keyword stanFunction pareto_type_2_lpdf pareto_type_2_cdf pareto_type_2_lcdf pareto_type_2_lccdf pareto_type_2_rng

syntax keyword stanFunction beta
syntax keyword stanFunction beta_lpdf beta_cdf beta_lcdf beta_lccdf beta_rng

syntax keyword stanFunction beta_proportion
syntax keyword stanFunction beta_proportion_lpdf beta_proportion_cdf beta_proportion_lcdf beta_proportion_lccdf beta_proportion_rng

syntax keyword stanFunction von_mises
syntax keyword stanFunction von_mises_lpdf von_mises_rng

syntax keyword stanFunction uniform
syntax keyword stanFunction uniform_lpdf uniform_cdf uniform_lcdf uniform_lccdf uniform_rng

syntax keyword stanFunction multi_normal
syntax keyword stanFunction multi_normal_lpdf multi_normal_rng

syntax keyword stanFunction multi_normal_prec
syntax keyword stanFunction multi_normal_prec_lpdf

syntax keyword stanFunction multi_normal_cholesky
syntax keyword stanFunction multi_normal_cholesky_lpdf multi_normal_cholesky_rng

syntax keyword stanFunction multi_gp
syntax keyword stanFunction multi_gp_lpdf

syntax keyword stanFunction multi_gp_cholesky
syntax keyword stanFunction multi_gp_cholesky_lpdf

syntax keyword stanFunction multi_student_t
syntax keyword stanFunction multi_student_t_lpdf multi_student_t_rng

syntax keyword stanFunction gaussian_dlm_obs
syntax keyword stanFunction gaussian_dlm_obs_lpdf

syntax keyword stanFunction dirichlet
syntax keyword stanFunction dirichlet_lpdf dirichlet_rng

syntax keyword stanFunction lkj_corr
syntax keyword stanFunction lkj_corr_lpdf lkj_corr_rng

syntax keyword stanFunction lkj_corr_cholesky
syntax keyword stanFunction lkj_corr_cholesky_lpdf lkj_corr_cholesky_rng

syntax keyword stanFunction wishart
syntax keyword stanFunction wishart_lpdf wishart_rng

syntax keyword stanFunction inv_wishart
syntax keyword stanFunction inv_wishart_lpdf inv_wishart_rng

" Built in functions
syntax keyword stanFunction print
syntax keyword stanFunction abs int_step min max
syntax keyword stanConstant pi sqrt2 log2 log10
syntax match stanConstant " e "  " TODO somehow match 'sensible' uses of e...
syntax keyword stanFunction step is_inf is_nan fabs fdim fmin fmax fmod floor ceil round trunc
syntax keyword stanFunction sqrt cbrt square exp exp2 log log2 log10 pow inv_sqrt inv_square
syntax keyword stanFunction cos sin tan acos asin atan atan2
syntax keyword stanFunction cosh sinh tanh acosh asinh atanh
syntax keyword stanFunction logit inv_logit inv_cloglog
syntax keyword stanFunction erf erfc Phi inv_Phi Phi_approx binary_log_loss owens_t
syntax keyword stanFunction inc_beta lbeta tgamma lgamma digamma trigamma lmgamma gamma_p gamma_q binomial_coefficient_log choose
syntax keyword stanFunction bessel_first_kind bessel_second_kind modified_bessel_first_kind modified_bessel_second_kind
syntax keyword stanFunction falling_factorial lchoose log_falling_factorial rising_factorial log_rising_factorial
syntax keyword stanFunction expm1 fma lmultiply log1p log1m log1p_exp log1m_exp log_diff_exp log_mix log_sum_exp log_inv_logit log1m_inv_logit
syntax keyword stanFunction min max sum prod log_sum_exp mean variance sd distance squared_distance
syntax keyword stanFunction dims num_elements size
syntax keyword stanFunction rep_array
syntax keyword stanFunction sort_asc sort_desc sort_indices_asc sort_indices_desc rank
syntax keyword stanFunction num_elements rows cols
syntax keyword stanFunction dot_product columns_dot_product rows_dot_product dot_self columns_dot_self rows_dot_self
syntax keyword stanFunction tcrossprod crossprod quad_form quad_form_diag quad_form_sym trace_quad_form trace_gen_quad_form
syntax keyword stanFunction multiply_lower_tri_self_transpose diag_pre_multiply diag_post_multiply
syntax keyword stanFunction rep_vector rep_row_vector rep_matrix
syntax keyword stanFunction diagonal diag_matrix
syntax keyword stanFunction col row block sub_col sub_row head tail segment
syntax keyword stanFunction softmax log_softmax cumulative_sum
syntax keyword stanFunction cov_exp_quad
syntax keyword stanFunction mdivide_left_tri_low mdivide_right_tri_low mdivide_left_spd mdivide_right_spd
syntax keyword stanFunction matrix_exp matrix_exp_multiply scale_matrix_exp_multiply trace determinant log_determinant
syntax keyword stanFunction inverse inverse_spd eigenvalues_sym eigenvectors_sym qr_thin_Q qr_thin_R qr_Q qr_R cholesky_decompose singular_values
syntax keyword stanFunction sort_asc sort_desc sort_indices_asc sort_indices_desc rank
syntax keyword stanFunction csr_extract_w csr_extract_v csr_extract_u csr_to_dense_matrix
syntax keyword stanFunction to_matrix to_vector to_row_vector to_array_2d to_array_1d
syntax keyword stanFunction algebra_solver
syntax keyword stanFunction integrate_ode_rk45 integrate_ode integrate_ode_bdf
syntax keyword stanFunction integrate_1d integrate\_1d
syntax keyword stanFunction map_rect

" Control flow
syntax keyword stanConditional if then else
syntax keyword stanRepeat for in while repeat until

" Operators
syntax match stanOperator "[\+\-\*\^\~\?\:\']"
syntax match stanOperator "\/ "  " FIXME Match only a single forward slash
syntax match stanOperator "\.[*/]"
syntax match stanOperator "<-"
syntax match stanOperator "\\"

" To do
syntax keyword stanTodo TODO FIXME

syntax match stanInclude "^\s*\#include"

" Removed some, since they're highlighted in other places
syntax keyword stanCppConflict var fvar STAN_MAJOR STAN_MINOR STAN_PATCH STAN_MATH_MAJOR STAN_MATH_MINOR STAN_MATH_PATCH
syntax keyword stanCppConflict alignas alignof and_eq asm auto bitand bitor bool
syntax keyword stanCppConflict break case catch char char16_t char32_t class compl
syntax keyword stanCppConflict const constexpr const_cast continue decltype default
syntax keyword stanCppConflict delete do double dynamic_cast enum explicit
syntax keyword stanCppConflict export extern float friend goto
syntax keyword stanCppConflict inline long mutable namespace new noexcept
syntax keyword stanCppConflict not not_eq nullptr operator or or_eq private
syntax keyword stanCppConflict protected public register reinterpret_cast
syntax keyword stanCppConflict short signed sizeof static static_assert static_cast
syntax keyword stanCppConflict struct switch template this thread_local throw true
syntax keyword stanCppConflict try typedef typeid typename union unsigned using
syntax keyword stanCppConflict virtual void volatile wchar_t xor xor_eq

syntax keyword stanKeyword target return

" Link
highlight link stanComment Comment
highlight link stanConstant Constant
highlight link stanNumber Number
highlight link stanFloat Float
highlight link stanBoolean Boolean
highlight link stanFunction Function
highlight link stanConditional Conditional
highlight link stanRepeat Repeat
highlight link stanLabel Label
highlight link stanOperator Operator
highlight link stanBlock Keyword
highlight link stanKeyword Keyword
highlight link stanCppConflict Error
highlight link stanException Exception
highlight link stanInclude Include
highlight link stanType Type
highlight link stanTodo Todo

let b:current_syntax = "stan"

" Vim syntax file for the Stan probabilistic programming language
" Language:	Stan (http://mc-stan.org)
" Maintainer: George Ho (https://eigenfoo.xyz)
" Last Change: November 8, 2019
" Filenames: *.stan
" URL:

if exists("b:current_syntax")
    finish
endif

syn case match

" Numbers and values
"" Integer with + - or nothing in front
syn match stanNumber '\d\+'
syn match stanNumber '[+-]\d\+'

"" Floating point number with decimal no E or e (+, -)
syn match stanFloat '\d\+\.\d*'
syn match stanFloat '[-+]\d\+\.\d*'

"" Floating point like number with E and no decimal point (+, -)
syn match stanFloat '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match stanFloat '\d[[:digit:]]*[eE][\-+]\=\d\+'

"" Floating point like number with E and decimal point (+, -)
syn match stanFloat '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match stanFloat '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

" Blocks
syn keyword stanBlock functions data parameters model
syn match stanBlock 'generated quantities'
syn match stanBlock 'transformed parameters'
syn match stanBlock 'transformed data'

" Data types
syn keyword stanType int real vector simplex ordered positive_ordered
syn keyword stanType row_vector matrix corr_matrix cov_matrix

" TODO Distributions

" Built in functions
syn keyword stanFunc abs fabs fdim fmin fmax fmod floor ceil round trunc
syn keyword stanFunc sqrt cbrt square exp exp2 log log2 log10 pow inv inv_sqrt inv_square
syn keyword stanFunc hypot cos sin tan acos asin atan atan2 cosh sinh tanh acosh asinh atanh
syn keyword stanFunc logit inv_logit inv_cloglog
syn keyword stanFunc erf erfc Phi inv_Phi Phi_approx binary_log_loss owens_t
syn keyword stanFunc lbeta tgamma lgamma digamma trigamma lmgamma gamma_p gamma_q
syn keyword stanFunc binomial_coefficient_log bessel_first_kind bessel_second_kind
syn keyword stanFunc log_falling_factorial rising_factorial log_rising_factorial
syn keyword stanFunc expml fma multiply_log log1p log1m log1p_exp log1m_exp log_diff_exp
syn keyword stanFunc log_mix log_sum_exp log_inv_logit log1m_inv_logit
syn keyword stanFunc min max sum prod log_sum_exp mean variance sd distance squared_distance
syn keyword stanFunc dims num_elements size rep_array
syn keyword stanFunc sort_asc sort_desc sort_indices_asc sort_indices_desc rank
syn keyword stanFunc num_elments rows cols
syn keyword stanFunc dot_product columns_dot_product rows_dot_product dot_self
syn keyword stanFunc columns_dot_self rows_dot_self tcrossprod crossprod
syn keyword stanFunc quad_form quad_form_diag quad_form_sym trace_quad_form trace_gen_quad_form
syn keyword stanFunc multiply_lower_tri_self_transpose diag_pre_multiply diag_post_multiply
syn keyword stanFunc rep_vector rep_row_vector rep_matrix diagonal diag_matrix
syn keyword stanFunc col row block sub_col sub_row head tail segment 
syn keyword stanFunc append_col append_row
syn keyword stanFunc softmax log_softmax cumulative_sum
syn keyword stanFunc mdivide_right_tri_low mdivide_left_tri_low
syn keyword stanFunc trace determinant log_determinant
syn keyword stanFunc inverse inverse_spd eignvalues_sym eigenvectors_sym qr_Q qr_R
syn keyword stanFunc cholesky_decompose singular_values
syn keyword stanFunc csr_extract_w csr_extract_v csr_extract_u csr_to_dense_matrix
syn keyword stanFunc csr_matrix_times_vector
syn keyword stanFunc to_matrix to_vector to_row_vector to_array_2d to_array_1d
syn keyword stanFunc increment_log_prob

" Control flow
syn keyword stanControl if else for in while

" To do
syn keyword	stanTodo TODO FIXME

let b:current_syntax = "stan"

" Vim syntax file for the Stan probabilistic programming language
" Language:	Stan (http://mc-stan.org)
" Maintainer: George Ho (https://eigenfoo.xyz)
" Last Change: November 8, 2019
" Filenames: *.stan
" URL:

if exists("b:current_syntax")
    finish
endif

syntax case match

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

" Blocks
syntax keyword stanBlock functions data parameters model
syntax match stanBlock 'generated quantities'
syntax match stanBlock 'transformed parameters'
syntax match stanBlock 'transformed data'

" Data types
syntax keyword stanType int real vector simplex ordered positive_ordered
syntax keyword stanType row_vector matrix corr_matrix cov_matrix

" TODO Distributions

" Built in functions
syntax keyword stanFunction abs fabs fdim fmin fmax fmod floor ceil round trunc
syntax keyword stanFunction sqrt cbrt square exp exp2 log log2 log10 pow inv inv_sqrt inv_square
syntax keyword stanFunction hypot cos sin tan acos asin atan atan2 cosh sinh tanh acosh asinh atanh
syntax keyword stanFunction logit inv_logit inv_cloglog
syntax keyword stanFunction erf erfc Phi inv_Phi Phi_approx binary_log_loss owens_t
syntax keyword stanFunction lbeta tgamma lgamma digamma trigamma lmgamma gamma_p gamma_q
syntax keyword stanFunction binomial_coefficient_log bessel_first_kind bessel_second_kind
syntax keyword stanFunction log_falling_factorial rising_factorial log_rising_factorial
syntax keyword stanFunction expml fma multiply_log log1p log1m log1p_exp log1m_exp log_diff_exp
syntax keyword stanFunction log_mix log_sum_exp log_inv_logit log1m_inv_logit
syntax keyword stanFunction min max sum prod log_sum_exp mean variance sd distance squared_distance
syntax keyword stanFunction dims num_elements size rep_array
syntax keyword stanFunction sort_asc sort_desc sort_indices_asc sort_indices_desc rank
syntax keyword stanFunction num_elments rows cols
syntax keyword stanFunction dot_product columns_dot_product rows_dot_product dot_self
syntax keyword stanFunction columns_dot_self rows_dot_self tcrossprod crossprod
syntax keyword stanFunction quad_form quad_form_diag quad_form_sym trace_quad_form trace_gen_quad_form
syntax keyword stanFunction multiply_lower_tri_self_transpose diag_pre_multiply diag_post_multiply
syntax keyword stanFunction rep_vector rep_row_vector rep_matrix diagonal diag_matrix
syntax keyword stanFunction col row block sub_col sub_row head tail segment 
syntax keyword stanFunction append_col append_row
syntax keyword stanFunction softmax log_softmax cumulative_sum
syntax keyword stanFunction mdivide_right_tri_low mdivide_left_tri_low
syntax keyword stanFunction trace determinant log_determinant
syntax keyword stanFunction inverse inverse_spd eignvalues_sym eigenvectors_sym qr_Q qr_R
syntax keyword stanFunction cholesky_decompose singular_values
syntax keyword stanFunction csr_extract_w csr_extract_v csr_extract_u csr_to_dense_matrix
syntax keyword stanFunction csr_matrix_times_vector
syntax keyword stanFunction to_matrix to_vector to_row_vector to_array_2d to_array_1d
syntax keyword stanFunction increment_log_prob

" Control flow
syntax keyword stanConditional if else
syntax keyword stanRepeat for in while

" To do
syntax keyword	stanTodo TODO FIXME

" Highlight
highlight link stanComment Comment
highlight link stanConstant Constant
highlight link stanNumber Number
highlight link stanFloat Float
highlight link stanFunction Function
highlight link stanConditional Conditional
highlight link stanRepeat Repeat
highlight link stanLabel Label
highlight link stanOperator Operator
highlight link stanBlock Keyword
highlight link stanKeyword Keyword
highlight link stanException Exception
highlight link stanInclude Include
highlight link stanType Type
highlight link stanTodo Todo

let b:current_syntax = "stan"

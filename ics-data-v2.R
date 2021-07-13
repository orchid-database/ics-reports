library(tidyverse)
library(readxl)
library(zoo)



##### Mapping to original file headers - ICS Report A

# NHSRegionSortOrder	"region_index,",
# NHSRegion	"region_name,",
# STPNameEngland	"ics_name,",
# FiscalYearQtrLabel	"fiscal_year,",
# Category	"category,",
# SocialPrescribingreferralSTD_Weeks	"ref_std,",
# SocialPrescribingreferralWeightedAverage	"ref_rate,",
# SocialPrescribingreferralLowerCI	"ref_ci_low,",
# SocialPrescribingreferralUpperCI	"ref_ci_high,",
# SocialPrescribingDeclinedSTD_Weeks	"dec_std",
# SocialPrescribingDeclinedWeightedAverage	"dec_rate,",
# SocialPrescribingDeclinedLowerCI	"dec_ci_low,",
# SocialPrescribingDeclinedUpperCI	"dec_ci_high",




##### Mapping to original file headers - ICS Report C and D

# NHSRegionSortOrder		"region_index",
# NHSRegion		"region_name",
# STPNameEngland		"ics_name",
# FiscalYearQtrLabel		"fiscal_year",
# Category		"category",
# IssuesrelatingtomentalhealthSTD_Weeks		"mh_std",
# IssuesrelatingtomentalhealthWeightedAverage		"mh_rate",
# IssuesrelatingtomentalhealthLowerCI		"mh_ci_low",
# IssuesrelatingtomentalhealthUpperCI		"mh_ci_high",
# IssuesrelatingtosubstancemisuseSTD_Weeks		"subs_std",
# IssuesrelatingtosubstancemisuseWeightedAverage		"subst_rate",
# IssuesrelatingtosubstancemisuseLowerCI		"subst_ci_low",
# IssuesrelatingtosubstancemisuseUpperCI		"subst_ci_high",
# IssuesrelatingtoemploymentSTD_Weeks		"empl_std",
# IssuesrelatingtoemploymentWeightedAverage		"empl_rate",
# IssuesrelatingtoemploymentLowerCI		"empl_ci_low",
# IssuesrelatingtoemploymentUpperCI		"empl_ci_high",
# IssuesrelatingtomoneySTD_Weeks		"money_std",
# IssuesrelatingtomoneyWeightedAverage		"money_rate",
# IssuesrelatingtomoneyLowerCI		"money_ci_low",
# IssuesrelatingtomoneyUpperCI		"money_ci_high",
# IssuesrelatingtomanagingalongtermconditionSTD_Weeks		"ltc_std",
# IssuesrelatingtomanagingalongtermconditionWeightedAverage		"ltc_rate",
# IssuesrelatingtomanagingalongtermconditionLowerCI		"ltc_ci_low",
# IssuesrelatingtomanagingalongtermconditionUpperCI		"ltc_ci_high",
# IssuesrelatingtoabuseSTD_Weeks		"abuse_std",
# IssuesrelatingtoabuseWeightedAverage		"abuse_rate",
# IssuesrelatingtoabuseLowerCI		"abuse_ci_low",
# IssuesrelatingtoabuseUpperCI		"abuse_ci_high",
# IssuesrelatingtohousingSTD_Weeks		"housing_std",
# IssuesrelatingtohousingWeightedAverage		"housing_rate",
# IssuesrelatingtohousingLowerCI		"housing_ci_low",
# IssuesrelatingtohousingUpperCI		"housing_ci_high",
# IssuesrelatingtoparentingSTD_Weeks		"parent_std",
# IssuesrelatingtoparentingWeightedAverage		"parent_rate",
# IssuesrelatingtoparentingLowerCI		"parent_ci_low",
# IssuesrelatingtoparentingUpperCI		"parent_ci_high",
# ReferralToBenefitsAgencySTD_Weeks		"benefit_std",
# ReferralToBenefitsAgencyWeightedAverage		"benefit_rate",
# ReferralToBenefitsAgencyLowerCI		"benefit_ci_low",
# ReferralToBenefitsAgencyUpperCI		"benefit_ci_high",
# ReferralToPhysicalActivityProgrammeSTD_Weeks		"physical_rate",
# ReferralToPhysicalActivityProgrammeWeightedAverage		"physical_rate",
# ReferralToPhysicalActivityProgrammeLowerCI		"physical_ci_low",
# ReferralToPhysicalActivityProgrammeUpperCI		"physical_ci_high",
# ReferralToArtsTherapyServicesSTD_Weeks		"arts_std",
# ReferralToArtsTherapyServicesWeightedAverage		"arts_rate",
# ReferralToArtsTherapyServicesLowerCI		"arts_ci_low",
# ReferralToArtsTherapyServicesUpperCI		"arts_ci_high",
# SocialPrescribingForMentalHealthSTD_Weeks		"sp4mh_std",
# SocialPrescribingForMentalHealthWeightedAverage		"sp4mh_rate",
# SocialPrescribingForMentalHealthLowerCI		"sp4mh_ci_low",
# SocialPrescribingForMentalHealthUpperCI		"sp4mh_ci_high",
# HealthEducationOfferedSTD_Weeks		"heoffer_std",
# HealthEducationOfferedWeightedAverage		"heoffer_rate",
# HealthEducationOfferedLowerCI		"heoffer_ci_low",
# HealthEducationOfferedUpperCI		"heoffer_ci_high",




##### Mapping to original file headers - NHSE_A report

# NHSRegionSortOrder	region_index
# NHSRegion	region_name
# STPNameEngland	ics_name
# FiscalYearQtrLabel	fiscal_year
# SocialPrescribingReferralAvWeeklyRate	ref_rate
# SocialPrescribingReferralLowerCI	ref_rate_ci_low
# SocialPrescribingReferralUpperCI	ref_rate_ci_high
# SocialPrescribingDeclinedAvWeeklyRate	dec_rate
# SocialPrescribingLowerCI	dec_rate_ci_low
# SocialPrescribingUpperCI	dec_rate_ci_high
# PersonalisedCareAndSupportPlanAgreedAvWeeklyRate	pcsp_agreed_rate
# PersonalisedCareAndSupportPlanAgreedLowerCI	pcsp_agree_ci_low
# PersonalisedCareAndSupportPlanAgreedUpperCI	pcsp_agree_ci_high
# PersonalisedCareAndSupportPlanReviewedAvWeeklyRate	pcsp_review_rate
# PersonalisedCareAndSupportPlanReviewedLowerCI	pcsp_review_ci_low
# PersonalisedCareAndSupportPlanReviewedUpperCI	pcsp_review_ci_high


##### Mapping to original file headers - NHSE_A2 report

# NHSRegionSortOrder		"region_index",
# NHSRegion		"region_name",
# FiscalYear		"fiscal_year",
# Category		"category",
# SocialPrescribingReferralSTD_Weeks		"ref_std",
# SocialPrescribingReferralWeightedAverage		"ref_rate",
# SocialPrescribingReferralLowerCI		"ref_ci_low",
# SocialPrescribingReferralUpperCI		"ref_ci_high",
# SocialPrescribingDeclinedSTD_Weeks		"dec_std",
# SocialPrescribingDeclinedWeightedAverage		"dec_rate",
# SocialPrescribingLowerCI		"dec_ci_low",
# SocialPrescribingUpperCI		"dec_ci_high",
# PersonalisedCareAndSupportPlanAgreedSTD_Weeks		"pcsp_agree_rate",
# PersonalisedCareAndSupportPlanAgreedWeightedAverage		"pcsp_agree_rate",
# PersonalisedCareAndSupportPlanAgreedLowerCI		"pcsp_agree_ci_low",
# PersonalisedCareAndSupportPlanAgreedUpperCI		"pcsp_agree_ci_high",
# PersonalisedCareAndSupportPlanReviewedSTD_Weeks		"pcsp_review_std",
# PersonalisedCareAndSupportPlanReviewedWeightedAverage		"pcsp_review_rate",
# PersonalisedCareAndSupportPlanReviewedLowerCI		"pcsp_review_ci_low",
# PersonalisedCareAndSupportPlanReviewedUpperCI		"pcsp_review_ci_high",



##### Mapping to original file headers - NHSE_B report

# NHSRegion		"region_name",
# FiscalYearQtrLabel		"fiscal_year",
# SocialPrescribingOfferedSTD_Weeks		"sp_offered_std",
# SocialPrescribingOfferedWeightedAverage		"sp_offered_rate",
# SocialPrescribingOfferedLowerCI		"sp_offered_ci_low",
# SocialPrescribingOfferedUpperCI		"sp_offered_ci_high",
# SocialprescribingsignpostingSTD_Weeks		"sp_signpost_std",
# SocialprescribingsignpostingWeightedAverage		"sp_signpost_rate",
# SocialprescribingsignpostingLowerCI		"sp_signpost_ci_low",
# SocialprescribingsignpostingUpperCI		"sp_signpost_ci_high",
# SocialPrescribingForMentalHealthSTD_Weeks		"sp4mh_std",
# SocialPrescribingForMentalHealthWeightedAverage		"sp4mh_rate",
# SocialPrescribingForMentalHealthLowerCI		"sp4mh_ci_low",
# SocialPrescribingForMentalHealthUpperCI		"sp4mh_ci_high",
# HealthcoachingreferralSTD_Weeks		"hc_ref_std",
# HealthcoachingreferralWeightedAverage		"hc_ref_rate",
# HealthcoachingreferralLowerCI		"hc_ref_ci_low",
# HealthcoachingreferralUpperCI		"hc_ref_ci_high",
# SeenbyhealthcoachSTD_Weeks		"seenbyhc_std",
# SeenbyhealthcoachWeightedAverage		"seenbyhc_rate",
# SeenbyhealthcoachLowerCI		"seenbyhc_ci_low",
# SeenbyhealthcoachUpperCI		"seenbyhc_ci_high",
# SeenbyhealthandwellbeingcoachSTD_Weeks		"seenbyhcwbcoach_std",
# SeenbyhealthandwellbeingcoachWeightedAverage		"seenbyhcwbcoach_rate",
# SeenbyhealthandwellbeingcoachLowerCI		"seenbyhcwbcoach_ci_low",
# SeenbyhealthandwellbeingcoachUpperCI		"seenbyhcwbcoach_ci_high",
# SeenbycarecoordinatorSTD_Weeks		"seenbycc_std",
# SeenbycarecoordinatorWeightedAverage		"seenbycc_rate",
# SeenbycarecoordinatorLowerCI		"seenbycc_ci_low",
# SeenbycarecoordinatorUpperCI		"seenbycc_ci_high",
# ShareddecisionmakingSTD_Weeks		"shareddm_std",
# ShareddecisionmakingWeightedAverage		"shareddm_rate",
# ShareddecisionmakingLowerCI		"shareddm_ci_low",
# ShareddecisionmakingUpperCI		"shareddm_ci_high",
# ShareddecisionmakingwithdecisionsupportSTD_Weeks		"shareddm_supp_std",
# ShareddecisionmakingwithdecisionsupportWeightedAverage		"shareddm_supp_rate",
# ShareddecisionmakingwithdecisionsupportLowerCI		"shareddm_supp_ci_low",
# ShareddecisionmakingwithdecisionsupportUpperCI		"shareddm_supp_ci_high",
# ShareddecisionmakingwithoutdecisionsupportSTD_Weeks		"shareddm_wo_supp_std",
# ShareddecisionmakingwithoutdecisionsupportWeightedAverage		"shareddm_wo_supp_rate",
# ShareddecisionmakingwithoutdecisionsupportLowerCI		"shareddm_wo_supp_ci_low",
# ShareddecisionmakingwithoutdecisionsupportUpperCI		"shareddm_wo_supp_ci_high",
# ShareddecisionmakingwithpatientdecisionaidSTD_Weeks		"shareddm_patdec_std",
# ShareddecisionmakingwithpatientdecisionaidWeightedAverage		"shareddm_patdec_rate",
# ShareddecisionmakingwithpatientdecisionaidLowerCI		"shareddm_patdec_ci_low",
# ShareddecisionmakingwithpatientdecisionaidUpperCI		"shareddm_patdec_ci_high",
# ShareddecisionmakingwithoutpatientdecisionaidSTD_Weeks		"shareddm_wo_patdec_std",
# ShareddecisionmakingwithoutpatientdecisionaidWeightedAverage		"shareddm_wo_patdec_rate",
# ShareddecisionmakingwithoutpatientdecisionaidLowerCI		"shareddm_wo_patdec_ci_low",
# ShareddecisionmakingwithoutpatientdecisionaidUpperCI		"shareddm_wo_patdec_ci_high",
# HaspersonalhealthbudgetSTD_Weeks		"phbudget_std",
# HaspersonalhealthbudgetWeightedAverage		"phbudget_rate",
# HaspersonalhealthbudgetLowerCI		"phbudget_ci_low",
# HaspersonalhealthbudgetUpperCI		"phbudget_ci_high",




##### Mapping to original file headers - NHSE_CD report

# NHSRegionSortOrder		"region_index",
# NHSRegion		"region_name",
# FiscalYear		"fiscal_year",
# Category		"category",
# IssuesrelatingtomentalhealthSTD_Weeks		"mh_std",
# IssuesrelatingtomentalhealthWeightedAverage		"mh_rate",
# IssuesrelatingtomentalhealthLowerCI		"mh_ci_low",
# IssuesrelatingtomentalhealthUpperCI		"mh_ci_high",
# IssuesrelatingtosubstancemisuseSTD_Weeks		"subst_std",
# IssuesrelatingtosubstancemisuseWeightedAverage		"subst_rate",
# IssuesrelatingtosubstancemisuseLowerCI		"subst_ci_low",
# IssuesrelatingtosubstancemisuseUpperCI		"subst_ci_high",
# IssuesrelatingtoemploymentSTD_Weeks		"empl_std",
# IssuesrelatingtoemploymentWeightedAverage		"empl_rate",
# IssuesrelatingtoemploymentLowerCI		"empl_ci_low",
# IssuesrelatingtoemploymentUpperCI		"empl_ci_high",
# IssuesrelatingtomoneySTD_Weeks		"money_std",
# IssuesrelatingtomoneyWeightedAverage		"money_rate",
# IssuesrelatingtomoneyLowerCI		"money_ci_low",
# IssuesrelatingtomoneyUpperCI		"money_ci_high",
# IssuesrelatingtomanagingalongtermconditionSTD_Weeks		"ltc_std",
# IssuesrelatingtomanagingalongtermconditionWeightedAverage		"ltc_rate",
# IssuesrelatingtomanagingalongtermconditionLowerCI		"ltc_ci_low",
# IssuesrelatingtomanagingalongtermconditionUpperCI		"ltc_ci_high",
# IssuesrelatingtoabuseSTD_Weeks		"abuse_std",
# IssuesrelatingtoabuseWeightedAverage		"abuse_rate",
# IssuesrelatingtoabuseLowerCI		"abuse_ci_low",
# IssuesrelatingtoabuseUpperCI		"abuse_ci_high",
# IssuesrelatingtohousingSTD_Weeks		"housing_std",
# IssuesrelatingtohousingWeightedAverage		"housing_rate",
# IssuesrelatingtohousingLowerCI		"housing_ci_low",
# IssuesrelatingtohousingUpperCI		"housing_ci_high",
# IssuesrelatingtoparentingSTD_Weeks		"parent_std",
# IssuesrelatingtoparentingWeightedAverage		"parent_rate",
# IssuesrelatingtoparentingLowerCI		"parent_ci_low",
# IssuesrelatingtoparentingUpperCI		"parent_ci_high",
# ReferralToBenefitsAgencySTD_Weeks		"benefit_std",
# ReferralToBenefitsAgencyWeightedAverage		"benefit_rate",
# ReferralToBenefitsAgencyLowerCI		"benefit_ci_low",
# ReferralToBenefitsAgencyUpperCI		"benefit_ci_high",
# ReferralToPhysicalActivityProgrammeSTD_Weeks		"physical_std",
# ReferralToPhysicalActivityProgrammeWeightedAverage		"physical_rate",
# ReferralToPhysicalActivityProgrammeLowerCI		"physical_ci_low",
# ReferralToPhysicalActivityProgrammeUpperCI		"physical_ci_high",
# ReferralToArtsTherapyServicesSTD_Weeks		"arts_std",
# ReferralToArtsTherapyServicesWeightedAverage		"arts_rate",
# ReferralToArtsTherapyServicesLowerCI		"arts_ci_low",
# ReferralToArtsTherapyServicesUpperCI		"arts_ci_high",
# SocialPrescribingForMentalHealthSTD_Weeks		"sp4mh_std",
# SocialPrescribingForMentalHealthWeightedAverage		"sp4mh_rate",
# SocialPrescribingForMentalHealthLowerCI		"sp4mh_ci_low",
# SocialPrescribingForMentalHealthUpperCI		"sp4mh_ci_high",
# HealthEducationOfferedSTD_Weeks		"heoffer_std",
# HealthEducationOfferedWeightedAverage		"heoffer_rate",
# HealthEducationOfferedLowerCI		"heoffer_ci_low",
# HealthEducationOfferedUpperCI		"heoffer_ci_high"


#####Short column definitions and data types

colnames_ICS_A = c("region_index",	"region_name",	"ics_name",	"fiscal_year",	"category",	"ref_std",	"ref_rate",
                   "ref_ci_low",	"ref_ci_high",	"dec_std",	"dec_rate",	"dec_ci_low",	"dec_ci_high")

coltypes_ICS_A =  c("numeric",	"text",	"text",	"text",	"text",	"numeric",	"numeric",	"numeric",	"numeric",	
                    "numeric",	"numeric",	"numeric",	"numeric")

colnames_ICS_CD = c("region_index",	"region_name",	"ics_name",	"fiscal_year",	"category",	"mh_std",	"mh_rate",	
                    "mh_ci_low",	"mh_ci_high",	"subs_std",	"subst_rate",	"subst_ci_low",	"subst_ci_high",	
                    "empl_std",	"empl_rate",	"empl_ci_low",	"empl_ci_high",	"money_std",	"money_rate",	
                    "money_ci_low",	"money_ci_high",	"ltc_std",	"ltc_rate",	"ltc_ci_low",	"ltc_ci_high",	
                    "abuse_std",	"abuse_rate",	"abuse_ci_low",	"abuse_ci_high",	"housing_std",	"housing_rate",
                    "housing_ci_low",	"housing_ci_high",	"parent_std",	"parent_rate",	"parent_ci_low",	
                    "parent_ci_high",	"benefit_std",	"benefit_rate",	"benefit_ci_low",	"benefit_ci_high",	
                    "physical_std",	"physical_rate",	"physical_ci_low",	"physical_ci_high",	"arts_std",	
                    "arts_rate",	"arts_ci_low",	"arts_ci_high",	"sp4mh_std",	"sp4mh_rate",	"sp4mh_ci_low",
                    "sp4mh_ci_high",	"heoffer_std",	"heoffer_rate",	"heoffer_ci_low",	"heoffer_ci_high")

coltypes_ICS_CD = c("numeric",	"text",	"text",	"text",	"text",	"numeric",	"numeric",	"numeric",	"numeric",
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric")

colnames_NHSE_A1 = c("region_index",	"region_name",	"ics_name",	"fiscal_year",	"ref_std",	"ref_rate",	
                     "ref_ci_low",	"ref_ci_high",	"dec_std",	"dec_rate",	"dec_ci_low",	"dec_ci_high",	"pcsp_agree_std",	
                     "pcsp_agree_rate",	"pcsp_agree_ci_low",	"pcsp_agree_ci_high",	"pcsp_review_std",	
                     "pcsp_review_rate",	"pcsp_review_ci_low",	"pcsp_review_ci_high")

coltypes_NHSE_A1 = c("numeric",	"text",	"text",	"text",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",
                     "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                     "numeric",	"numeric",	"numeric")

colnames_NHSE_A2 = c("region_index",	"region_name",	"fiscal_year",	"category",	"ref_std",	"ref_rate",	
                     "ref_ci_low",	"ref_ci_high",	"dec_std",	"dec_rate",	"dec_ci_low",	"dec_ci_high",	"pcsp_agree_std",	
                     "pcsp_agree_rate",	"pcsp_agree_ci_low",	"pcsp_agree_ci_high",	"pcsp_review_std",	
                     "pcsp_review_rate",	"pcsp_review_ci_low",	"pcsp_review_ci_high")

coltypes_NHSE_A2 = c("numeric",	"text",	"text",	"text",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                    "numeric",	"numeric",	"numeric")

colnames_NHSE_B =c("region_name",	"fiscal_year",	"sp_offered_std",	"sp_offered_rate",	"sp_offered_ci_low",	
                   "sp_offered_ci_high",	"sp_signpost_std",	"sp_signpost_rate",	"sp_signpost_ci_low",	
                   "sp_signpost_ci_high",	"sp4mh_std",	"sp4mh_rate",	"sp4mh_ci_low",	"sp4mh_ci_high",	"hc_ref_std",
                   "hc_ref_rate",	"hc_ref_ci_low",	"hc_ref_ci_high",	"seenbyhc_std",	"seenbyhc_rate",	"seenbyhc_ci_low",
                   "seenbyhc_ci_high",	"seenbyhcwbcoach_std",	"seenbyhcwbcoach_rate",	"seenbyhcwbcoach_ci_low",	
                   "seenbyhcwbcoach_ci_high",	"seenbycc_std",	"seenbycc_rate",	"seenbycc_ci_low",	"seenbycc_ci_high",	
                   "shareddm_std",	"shareddm_rate",	"shareddm_ci_low",	"shareddm_ci_high",	"shareddm_supp_std",
                   "shareddm_supp_rate",	"shareddm_supp_ci_low",	"shareddm_supp_ci_high",	"shareddm_wo_supp_std",	
                   "shareddm_wo_supp_rate",	"shareddm_wo_supp_ci_low",	"shareddm_wo_supp_ci_high",	"shareddm_patdec_std",
                   "shareddm_patdec_rate",	"shareddm_patdec_ci_low",	"shareddm_patdec_ci_high",	"shareddm_wo_patdec_std",
                   "shareddm_wo_patdec_rate",	"shareddm_wo_patdec_ci_low",	"shareddm_wo_patdec_ci_high",	"phbudget_std",	
                   "phbudget_rate",	"phbudget_ci_low",	"phbudget_ci_high")

coltypes_NHSE_B = c("text",	"text",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                    "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric")

colnames_NHSE_CD = c("region_index",	"region_name",	"fiscal_year",	"category",	"mh_std",	"mh_rate",	"mh_ci_low",
                     "mh_ci_high",	"subst_std",	"subst_rate",	"subst_ci_low",	"subst_ci_high",	"empl_std",	"empl_rate",	
                     "empl_ci_low",	"empl_ci_high",	"money_std",	"money_rate",	"money_ci_low",	"money_ci_high",	
                     "ltc_std",	"ltc_rate",	"ltc_ci_low",	"ltc_ci_high",	"abuse_std",	"abuse_rate",	"abuse_ci_low",
                     "abuse_ci_high",	"housing_std",	"housing_rate",	"housing_ci_low",	"housing_ci_high",	"parent_std",
                     "parent_rate",	"parent_ci_low",	"parent_ci_high",	"benefit_std",	"benefit_rate",	"benefit_ci_low",
                     "benefit_ci_high",	"physical_std",	"physical_rate",	"physical_ci_low",	"physical_ci_high",	
                     "arts_std",	"arts_rate",	"arts_ci_low",	"arts_ci_high",	"sp4mh_std",	"sp4mh_rate",	
                     "sp4mh_ci_low",	"sp4mh_ci_high",	"heoffer_std",	"heoffer_rate",	"heoffer_ci_low",	"heoffer_ci_high")

coltypes_NHSE_CD = c("numeric",	"text",	"text",	"text",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                     "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                     "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                     "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                     "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                     "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	
                     "numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric",	"numeric")

#### 1. File import 2. Pre-processing splitting category 

file="Social Prescribing Report_1.1.xlsx"
dfICSReport_A <-read_excel(file,"ICS report - Group A", col_names = colnames_ICS_A, col_types = coltypes_ICS_A, skip=1)
dfICSReport_A <- dfICSReport_A %>%
   separate("category", c("cat","cat_val"),sep="[.]")
dfICSReport_CD <-read_excel(file,"ICS report - Group C and D", col_names = colnames_ICS_CD, col_types = coltypes_ICS_CD,skip = 1)
dfICSReport_CD <- dfICSReport_CD %>%
  separate("category", c("cat","cat_val"),sep="[.]")
dfNHSEReport_A1 <-read_excel(file,"NHSE report - Group A", col_names = colnames_NHSE_A1, col_types = coltypes_NHSE_A1,skip = 1)
##dfNHSEReport_A1 <- dfNHSEReport_A1 %>%
  ##separate("category", c("cat","cat_val"),sep="[.]")
dfNHSEReport_A2 <-read_excel(file,"NHSE report - Group A ii", col_names = colnames_NHSE_A2, col_types = coltypes_NHSE_A2, skip = 1)
dfNHSEReport_A2 <- dfNHSEReport_A2 %>%
  separate("category", c("cat","cat_val"),sep="[.]")
dfNHSEReport_B <-read_excel(file,"NHSE report - Group B", col_names = colnames_NHSE_B,col_types = coltypes_NHSE_B, skip = 1)
dfNHSEReport_CD <-read_excel(file,"NHSE report - Group C and D", col_names = colnames_NHSE_CD, col_types = coltypes_NHSE_CD, skip = 1)
dfNHSEReport_CD <- dfNHSEReport_CD %>%
  separate("category", c("cat","cat_val"),sep="[.]")


# remove FY from Fiscal Year column
dfNHSEReport_A2$fiscal_year <- gsub("^.{0,2}", "", dfNHSEReport_A2$fiscal_year)


#Fix Qtr to get preferred format
dfNHSEReport_A1 <- dfNHSEReport_A1 %>%
  separate("fiscal_year", c("fiscal_year.qtr","fiscal_year.year"))
dfNHSEReport_A1$fiscal_year.year <- gsub("^.{0,2}", "", dfNHSEReport_A1$fiscal_year.year)
dfNHSEReport_A1$qtr <- paste(dfNHSEReport_A1$fiscal_year.year,dfNHSEReport_A1$fiscal_year.qtr)
dfNHSEReport_A1$qtr <- as.yearqtr(dfNHSEReport_A1$qtr)

#Fix Qtr to get preferred format
dfICSReport_A <- dfICSReport_A %>%
  separate("fiscal_year", c("fiscal_year.qtr","fiscal_year.year"))
dfICSReport_A$fiscal_year.year <- gsub("^.{0,2}", "", dfICSReport_A$fiscal_year.year)
dfICSReport_A$qtr <- paste(dfICSReport_A$fiscal_year.year,dfICSReport_A$fiscal_year.qtr)
dfICSReport_A$qtr <- as.yearqtr(dfICSReport_A$qtr)



#Fix Qtr to get preferred format
dfICSReport_CD <- dfICSReport_CD %>%
  separate("fiscal_year", c("fiscal_year.qtr","fiscal_year.year"))
dfICSReport_CD$fiscal_year.year <- gsub("^.{0,2}", "", dfICSReport_CD$fiscal_year.year)
dfICSReport_CD$qtr <- paste(dfICSReport_CD$fiscal_year.year,dfICSReport_CD$fiscal_year.qtr)
dfICSReport_CD$qtr <- as.yearqtr(dfICSReport_CD$qtr)


## The following code creates a summarised dataframe for reporting ICS group CD report

dfNationalMean_socialneed <- dfICSReport_CD %>% 
  filter(cat=="Age") %>% 
  select(region_name, qtr, mh_rate, subst_rate, empl_rate, money_rate, ltc_rate, abuse_rate, housing_rate,
         parent_rate, benefit_rate, physical_rate, arts_rate, sp4mh_rate, heoffer_rate) %>% 
  group_by( qtr) %>% 
  summarise(nat_mean_mh_rate= mean(mh_rate),
            nat_mean_subst_rate = mean(subst_rate),
            nat_mean_empl_rate = mean(empl_rate),
            nat_mean_money_rate = mean(money_rate),
            nat_mean_ltc_rate = mean(ltc_rate),
            nat_mean_abuse_rate = mean(abuse_rate),
            nat_mean_housing_rate = mean(housing_rate),
            nat_mean_parent_rate = mean(parent_rate),
            nat_mean_benefit_rate = mean(benefit_rate),
            nat_mean_physical_rate = mean(physical_rate),
            nat_mean_arts_rate = mean(arts_rate),
            nat_mean_sp4mh_rate = mean(sp4mh_rate),
            nat_mean_heoffer_rate = mean(heoffer_rate),
            .groups = 'keep')


dfICSMean_socialneed <- dfICSReport_CD %>% 
  filter(cat=="Age") %>% 
  select(ics_name, qtr, mh_rate, subst_rate, empl_rate, money_rate, ltc_rate, abuse_rate, housing_rate,
         parent_rate, benefit_rate, physical_rate, arts_rate, sp4mh_rate, heoffer_rate) %>%
  group_by(ics_name, qtr)%>% 
  summarise(mean_mh_rate= mean(mh_rate),
            mean_subst_rate = mean(subst_rate),
            mean_empl_rate = mean(empl_rate),
            mean_money_rate = mean(money_rate),
            mean_ltc_rate = mean(ltc_rate),
            mean_abuse_rate = mean(abuse_rate),
            mean_housing_rate = mean(housing_rate),
            mean_parent_rate = mean(parent_rate),
            mean_benefit_rate = mean(benefit_rate),
            mean_physical_rate = mean(physical_rate),
            mean_arts_rate = mean(arts_rate),
            mean_sp4mh_rate = mean(sp4mh_rate),
            mean_heoffer_rate = mean(heoffer_rate),
            .groups = 'keep')


mergedSociaNeed <- dfICSMean_socialneed %>% inner_join(dfNationalMean_socialneed)


## The following code creates a summarised dataframe for reporting ICS group A report

dfNationalMean_socialprescribing<- dfICSReport_A %>% 
  filter(cat=="Age") %>% 
  select(ics_name, qtr, ref_rate, dec_rate) %>% 
  group_by(qtr) %>% 
  summarise(nat_mean_ref_rate= mean(ref_rate),
            nat_mean_dec_rate = mean(dec_rate),
            .groups = 'keep')


dfICSMean_socialprescribing <- dfICSReport_A %>% 
  filter(cat=="Age") %>% 
  select(ics_name, qtr, ref_rate, dec_rate) %>%
  group_by(ics_name, qtr)%>% 
  summarise(mean_ref_rate= mean(ref_rate),
            mean_dec_rate = mean(dec_rate),
            .groups = 'keep')


mergedSocialPrescribing <- dfICSMean_socialprescribing %>% inner_join(dfNationalMean_socialprescribing)

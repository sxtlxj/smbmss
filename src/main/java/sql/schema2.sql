
use smbms;

drop table if exists annovar;
create table annovar
(
    sample_id int not null,
    Chr varchar(100) not null,
    Start varchar(100) not null,
    End varchar(100) not null,
    Ref varchar(100) not null,
    Alt varchar(100) not null,
    `Func.refGene` text null,
    `Gene.refGene` text null,
    `GeneDetail.refGene` text null,
    `ExonicFunc.refGene` text null,
    `AAChange.refGene` text null,
    cytoBand text null,
    `1000g2015aug_all` text null,
    `1000g2015aug_afr` text null,
    `1000g2015aug_amr` text null,
    `1000g2015aug_eas` text null,
    `1000g2015aug_eur` text null,
    `1000g2015aug_sas` text null,
    ExAC_ALL text null,
    ExAC_AFR text null,
    ExAC_AMR text null,
    ExAC_EAS text null,
    ExAC_FIN text null,
    ExAC_NFE text null,
    ExAC_OTH text null,
    ExAC_SAS text null,
    avsnp150 text null,
    esp6500siv2_all text null,
    esp6500siv2_ea text null,
    esp6500siv2_aa text null,
    gnomAD_exome_ALL text null,
    gnomAD_exome_AFR text null,
    gnomAD_exome_AMR text null,
    gnomAD_exome_ASJ text null,
    gnomAD_exome_EAS text null,
    gnomAD_exome_FIN text null,
    gnomAD_exome_NFE text null,
    gnomAD_exome_OTH text null,
    gnomAD_exome_SAS text null,
    SIFT_score text null,
    SIFT_converted_rankscore text null,
    SIFT_pred text null,
    Polyphen2_HDIV_score text null,
    Polyphen2_HDIV_rankscore text null,
    Polyphen2_HDIV_pred text null,
    Polyphen2_HVAR_score text null,
    Polyphen2_HVAR_rankscore text null,
    Polyphen2_HVAR_pred text null,
    LRT_score text null,
    LRT_converted_rankscore text null,
    LRT_pred text null,
    MutationTaster_score text null,
    MutationTaster_converted_rankscore text null,
    MutationTaster_pred text null,
    MutationAssessor_score text null,
    MutationAssessor_score_rankscore text null,
    MutationAssessor_pred text null,
    FATHMM_score text null,
    FATHMM_converted_rankscore text null,
    FATHMM_pred text null,
    PROVEAN_score text null,
    PROVEAN_converted_rankscore text null,
    PROVEAN_pred text null,
    VEST3_score text null,
    VEST3_rankscore text null,
    MetaSVM_score text null,
    MetaSVM_rankscore text null,
    MetaSVM_pred text null,
    MetaLR_score text null,
    MetaLR_rankscore text null,
    MetaLR_pred text null,
    `M-CAP_score` text null,
    `M-CAP_rankscore` text null,
    `M-CAP_pred` text null,
    REVEL_score text null,
    REVEL_rankscore text null,
    MutPred_score text null,
    MutPred_rankscore text null,
    CADD_raw text null,
    CADD_raw_rankscore text null,
    CADD_phred text null,
    DANN_score text null,
    DANN_rankscore text null,
    `fathmm-MKL_coding_score` text null,
    `fathmm-MKL_coding_rankscore` text null,
    `fathmm-MKL_coding_pred` text null,
    Eigen_coding_or_noncoding text null,
    `Eigen-raw` text null,
    `Eigen-PC-raw` text null,
    GenoCanyon_score text null,
    GenoCanyon_score_rankscore text null,
    integrated_fitCons_score text null,
    integrated_fitCons_score_rankscore text null,
    integrated_confidence_value text null,
    `GERP++_RS` text null,
    `GERP++_RS_rankscore` text null,
    phyloP100way_vertebrate text null,
    phyloP100way_vertebrate_rankscore text null,
    phyloP20way_mammalian text null,
    phyloP20way_mammalian_rankscore text null,
    phastCons100way_vertebrate text null,
    phastCons100way_vertebrate_rankscore text null,
    phastCons20way_mammalian text null,
    phastCons20way_mammalian_rankscore text null,
    SiPhy_29way_logOdds text null,
    SiPhy_29way_logOdds_rankscore text null,
    Interpro_domain text null,
    GTEx_V6p_gene text null,
    GTEx_V6p_tissue text null,
    gnomAD_genome_ALL text null,
    gnomAD_genome_AFR text null,
    gnomAD_genome_AMR text null,
    gnomAD_genome_ASJ text null,
    gnomAD_genome_EAS text null,
    gnomAD_genome_FIN text null,
    gnomAD_genome_NFE text null,
    gnomAD_genome_OTH text null,
    CLNALLELEID text null,
    CLNDN text null,
    CLNDISDB text null,
    CLNREVSTAT text null,
    CLNSIG text null,
    cosmic70 text null,
    ICGC_Id text null,
    ICGC_Occurrence text null,
    InterVar_automated text null,
    PVS1 text null,
    PS1 text null,
    PS2 text null,
    PS3 text null,
    PS4 text null,
    PM1 text null,
    PM2 text null,
    PM3 text null,
    PM4 text null,
    PM5 text null,
    PM6 text null,
    PP1 text null,
    PP2 text null,
    PP3 text null,
    PP4 text null,
    PP5 text null,
    BA1 text null,
    BS1 text null,
    BS2 text null,
    BS3 text null,
    BS4 text null,
    BP1 text null,
    BP2 text null,
    BP3 text null,
    BP4 text null,
    BP5 text null,
    BP6 text null,
    BP7 text null,
    Otherinfo text null,
    primary key (sample_id, Chr, Start, End, Ref, Alt)
);

drop table if exists dosing_guideline;
create table dosing_guideline
(
    id varchar(100) not null,
    obj_cls varchar(100) null,
    name varchar(100) null,
    recommendation tinyint(1) null,
    drug_id varchar(100) null,
    source varchar(100) null,
    summary_markdown varchar(2000) null,
    text_markdown text null,
    raw longtext null,
    constraint dosing_guideline_id_uindex
        unique (id)
);

alter table dosing_guideline
    add primary key (id);

drop table if exists drug;
create table drug
(
    id varchar(100) not null,
    name varchar(500) null,
    obj_cls varchar(100) null,
    drug_url varchar(100) null,
    biomarker tinyint(1) null,
    constraint drug_id_uindex
        unique (id)
);

alter table drug
    add primary key (id);

drop table if exists drug_label;
create table drug_label
(
    id varchar(100) not null,
    name varchar(200) null,
    obj_cls varchar(100) null,
    alternate_drug_available tinyint(1) null,
    dosing_information tinyint(1) null,
    prescribing_markdown varchar(2000) null,
    source varchar(100) null,
    text_markdown varchar(4000) null,
    summary_markdown varchar(1000) null,
    raw text null,
    drug_id varchar(100) null,
    constraint drug_label_id_uindex
        unique (id)
);

alter table drug_label
    add primary key (id);

drop table if exists sample;
create table sample
(
    id int auto_increment
        primary key,
    created_at datetime null,
    uploaded_by text null,
    filename text null
);




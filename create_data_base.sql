CREATE TABLE [assumptions](
  [id] INTEGER PRIMARY KEY AUTOINCREMENT, 
  [description] TEXT NOT NULL, 
  [mark] TEXT);

CREATE TABLE [data](
  [id] INTEGER PRIMARY KEY AUTOINCREMENT, 
  [sample_ref] INTEGER NOT NULL, 
  [element_ref] INTEGER NOT NULL, 
  [expo] INTEGER NOT NULL, 
  [mant] REAL NOT NULL, 
  [exclusion_ref] INTEGER DEFAULT 0, 
  [expo2] INTEGER, 
  [mant2] REAL);

CREATE TABLE [detection_limits](
  [id] INTEGER PRIMARY KEY AUTOINCREMENT, 
  [method_ref] INTEGER, 
  [element_ref] INTEGER, 
  [detection_limit] REAL, 
  [detection_limit_expo] INTEGER, 
  [upper_limit] REAL, 
  [upper_limit_expo] INTEGER);

CREATE TABLE "detection_limits_draft"(
  [ref], 
  [element], 
  [LOD], 
  [detection_limit], 
  [detection_limit_exp], 
  [Upper], 
  [upper_limit], 
  [upper_limit_expo], 
  [ref_elements] INTEGER);

CREATE TABLE [distrib_properties](
  [id] INTEGER PRIMARY KEY AUTOINCREMENT, 
  [assumption_ref] INTEGER NOT NULL, 
  [element_ref] INTEGER NOT NULL, 
  [m0] REAL DEFAULT NULL, 
  [m2] REAL DEFAULT NULL, 
  [m3] REAL DEFAULT NULL, 
  [m4] REAL DEFAULT NULL, 
  [std_deviation] REAL DEFAULT NULL, 
  [skewness] REAL DEFAULT NULL, 
  [kurtosis] REAL DEFAULT NULL, 
  CONSTRAINT [unique_assumption_element] UNIQUE([assumption_ref], [element_ref]));

CREATE TABLE [elements](
  [id] INTEGER PRIMARY KEY AUTOINCREMENT, 
  [name] TEXT NOT NULL);

CREATE TABLE [exclusion_reasons](
  [id] INTEGER PRIMARY KEY AUTOINCREMENT, 
  [name] TEXT NOT NULL UNIQUE);

CREATE TABLE [geochem_methods](
  [id] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, 
  [name] TEXT);

CREATE TABLE [holes](
  [id] INTEGER PRIMARY KEY AUTOINCREMENT, 
  [name] TEXT NOT NULL UNIQUE);

CREATE TABLE [samples](
  [id] INTEGER PRIMARY KEY AUTOINCREMENT, 
  [hole_ref] INTEGER NOT NULL, 
  [east] REAL NOT NULL, 
  [north] REAL NOT NULL, 
  [elevation] REAL NOT NULL, 
  "from" REAL NOT NULL, 
  "to" REAL NOT NULL);

CREATE TABLE "src"(
  "Sample" TEXT, 
  "East" TEXT, 
  "North" TEXT, 
  "Elevation" TEXT, 
  "holeid" TEXT, 
  "from" TEXT, 
  "to" TEXT, 
  "Ag_ppm" TEXT, 
  "Al_pct" TEXT, 
  "As_ppm" TEXT, 
  "Ba_ppm" TEXT, 
  "Be_ppm" TEXT, 
  "Bi_ppm" TEXT, 
  "Ca_pct" TEXT, 
  "Cd_ppm" TEXT, 
  "Ce_ppm" TEXT, 
  "Co_ppm" TEXT, 
  "Cr_ppm" TEXT, 
  "Cs_ppm" TEXT, 
  "Fe_pct" TEXT, 
  "Ga_ppm" TEXT, 
  "Ge_ppm" TEXT, 
  "Hf_ppm" TEXT, 
  "In_ppm" TEXT, 
  "K_pct" TEXT, 
  "La_ppm" TEXT, 
  "Li_ppm" TEXT, 
  "Mg_pct" TEXT, 
  "Mn_ppm" TEXT, 
  "Mo_ppm" TEXT, 
  "Na_pct" TEXT, 
  "Nb_ppm" TEXT, 
  "Ni_ppm" TEXT, 
  "P_ppm" TEXT, 
  "Pb_ppm" TEXT, 
  "Rb_ppm" TEXT, 
  "Re_ppm" TEXT, 
  "S_pct" TEXT, 
  "Sb_ppm" TEXT, 
  "Sc_ppm" TEXT, 
  "Se_ppm" TEXT, 
  "Sn_ppm" TEXT, 
  "Sr_ppm" TEXT, 
  "Ta_ppm" TEXT, 
  "Te_ppm" TEXT, 
  "Th_ppm" TEXT, 
  "Ti_pct" TEXT, 
  "Tl_ppm" TEXT, 
  "U_ppm" TEXT, 
  "V_ppm" TEXT, 
  "W_ppm" TEXT, 
  "Y_ppm" TEXT, 
  "Zn_ppm" TEXT, 
  "Zr_ppm" TEXT, 
  "SiO2" TEXT);


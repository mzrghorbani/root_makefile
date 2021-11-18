#ifndef MACRO_GUI_H
#define MACRO_GUI_H

#include "TApplication.h"
#include "TCanvas.h"
#include "TROOT.h"
#include "TGraphErrors.h"
#include "TF1.h"
#include "TH1F.h"
#include "TArrow.h"
#include "TLatex.h"
#include "TRandom3.h"

// This is inner macro function
void macro();

// This is outer macro funtion
void macro_GUI(int argc, char** argv);

#endif

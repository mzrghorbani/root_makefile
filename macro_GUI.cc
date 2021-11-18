#include "macro_GUI.h"

void macro() {
    auto cnt_r_h=new TH1F("count_rate",
                "Count Rate;N_{Counts};# occurencies",
                100, // Number of Bins
                -0.5, // Lower X Boundary
                15.5); // Upper X Boundary

    auto mean_count=3.6f;
    TRandom3 rndgen;
    for (int imeas=0;imeas<400;imeas++)
        cnt_r_h->Fill(rndgen.Poisson(mean_count));
    auto c= new TCanvas();
    cnt_r_h->Draw();
    auto c_norm= new TCanvas();
    cnt_r_h->DrawNormalized();
}

void macro_GUI(int argc, char** argv) {
    macro(); // here the ROOT macro is called
}

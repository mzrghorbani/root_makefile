#include "macro_GUI.h"

int main(int argc, char** argv) {
    TApplication app("ROOT Application", &argc, argv);
    macro_GUI(app.Argc(), app.Argv());
    app.Run();
    return 0;
}


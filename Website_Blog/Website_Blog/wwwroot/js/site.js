// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
//[shoulder, bust, waist, high hips, hips, ]
var measures = []

function calculateBodyShape() {
    var value = 0;
    if ((measure[2] / measure[0] <= 0.75 || measure[2] / measure[1] <= 0.75) && measure[2] / measure[4] <= 0.75 && measure[4] >= measure[0] * 0.95 && measure[4] <= measure[0] * 1.05)
        // Bust ~ Hips >> Waist
        // waist / shoulder (or bust) <= 0.75 && waist / hips <= 0.75 && shoulder * 0.95 <= hip <= shoulder * 1.05
        return "Hourglass"; //Widest: Bust, Hips; Narrowest: Waist
    else if ((measure[2] / measure[0] <= 0.75 || measure[2] / measure[1] <= 0.75) && measure[2] / measure[4] <= 0.75 && measure[1] >= measure[4] * 1.05)
        // Bust > Hips >> Waist
        // waist / shoulder (or bust) <= 0.75 && waist / hips <= 0.75 && bust >= 1.05 * hip
        return "Top Hourglass"; //Widest: Bust; Narrowest: Waist; Middle: Hips
    else if ((measure[2] / measure[0] <= 0.75 || measure[2] / measure[1] <= 0.75) && measure[2] / measure[4] <= 0.75 && measure[4] >= measure[1] * 1.05)
        // Hips > Hips >> Waist
        // waist / shoulder (or bust) <= 0.75 && waist / hips <= 0.75 && hip >= 1.05 * bust
        return "Bottom Hourglass"; //Widest: Hips; Narrowest: Waist; Middle: Bust
    else if (measure[2] / measure[1] >= 1.05 && measure[2] / measure[1] >= 1.05)
        // Hips >> bust
        // waist / bust >= 1.05 && waist / bust >= 1.05
        return "Apple";
    else if (measure[4] / measure[0] >= 1.05 || measure[4] / measure[1] >= 1.05)
        // Hips 
        // hips / shoulder (or bust) >= 1.05
        return "Triangle"; // Also, referred to as "Pear"
    else if (measure[0] / measuare[4] >= 1.05 || measure[1] / measure[4] >= 1.05)
        // Shoulder (or Bust) / hips >= 1.05
        return "Inverted Triangle";
    else if ((measure[2] / measure[0] >= 0.75 || measure[2] / measure[1] >= 0.75) && measure[4] <= measure[0] * 0.95 && measure[4] <= measure[0] * 1.05)
        // waist / shoulder (or bust) >= .75 && shoulder * 0.95 <= hips (and waist) <= shoulder * 1.05
        return "Rectangle";
    else
        return "";
}

function calculateSize() {
    var sizes = [];

}
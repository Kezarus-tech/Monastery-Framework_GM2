/// @description UPDATE VALUE PERCENT & FINAL
if(orientation == "HORIZONTAL" ){
    var relativePosition = slider.x-x;
    var realIniX = (slider.width div 2);
    var realEndX = width - (slider.width div 2);
    
    valuePercent = ((relativePosition-realIniX)*100)/(realEndX-realIniX);
}else{
    var relativePosition = slider.y-y;
    var realIniY = (slider.height div 2);
    var realEndY = height - (slider.height div 2);
    
    valuePercent = ((relativePosition-realIniY)*100)/(realEndY-realIniY);
}

valueFinal = ((valueMax-valueMin)*(valuePercent/100))+valueMin;



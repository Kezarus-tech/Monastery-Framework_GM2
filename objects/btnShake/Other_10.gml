event_inherited();
///CALL SHAKE

var amount = 1, 
    frequency = 1, 
    howLong = 1;

if( instance_exists(sliderAmount) ){
    amount = sliderAmount.valueFinal;
}

if( instance_exists(sliderFrequency) ){
    frequency = sliderFrequency.valueFinal;
}

if( instance_exists(sliderHowLong) ){
    howLong = sliderHowLong.valueFinal;
}

screen_shake(amount, frequency, howLong);


/// @description EXECUTE MODAL RESPONSE (CALLED BY objModalButton)
/// @param CALLED BY objModalButton
instance_destroy(objModalButton);
instance_destroy(objPause);

with( owner ){
    modalAnswer = other.modalAnswer;
    event_perform(other.ev_type, other.ev_number);
}

instance_destroy();



import { LightningElement, wire } from 'lwc';
//navigation import edildi
import {CurrentPageReference} from 'lightning/navigation';
//pubsub dosyasi import edildi.
import { fireEvent } from 'c/pubsub';       
export default class PubComp extends LightningElement {
    @wire(CurrentPageReference) pageRef;
    
    handleChange(event){//pageRef, eventName, payload
        fireEvent(this.pageRef,'pubsubevent', event.target.value)
    }
}
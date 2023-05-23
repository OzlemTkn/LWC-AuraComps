import { LightningElement } from 'lwc';

export default class ItsParentCustom extends LightningElement {

    handleEvent(event){
        alert("custom event calisti");
        alert('First Name: '+ event.detail.firstName);
        alert('Last Name: ' + event.detail.lastName);

    }
}
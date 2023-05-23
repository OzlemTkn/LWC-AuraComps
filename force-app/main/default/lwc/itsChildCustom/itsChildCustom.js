import { LightningElement } from 'lwc';

export default class ItsChildCustom extends LightningElement {
    handleMe(){
        const childEvent = new CustomEvent('buttonclick',{
            detail:{firstName:'Ela', lastName:'Demir'}
        });
        this.dispatchEvent(childEvent);
    }
}
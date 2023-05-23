import { api, LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {

str = 'LWC';
@api subject;
@api Greeting;
clickedButtonLabel;

handleClick(event) {
    this.clickedButtonLabel = event.target.label;
}
}
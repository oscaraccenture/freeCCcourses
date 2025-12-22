/* const element = document.querySelector('#box1');
const computedStyle = window.getComputedStyle(element);

//Get a specific property value
const margin = computedStyle.margin;
const padding = computedStyle.padding;
const border = computedStyle.border;


console.log('Margin', margin);
console.log('Padding', padding);
console.log('Border', border);

element.style.margin = '50px';
element.style.padding = '50px';
element.style.border = '10px solid red';

console.log("--After modification--");
console.log('Margin', margin);
console.log('Padding', padding);
console.log('Border', border);
 */
const box = document.querySelector('#box1');

const colorPiker = () =>{
    const colorPicker = document.querySelector('#colorPicker');
    //const computedStyle = window.getComputedStyle(colorPicker);
    
    colorPicker.addEventListener('input', (event) =>{
        const colorValue = event.target.value;
        box.style.backgroundColor = colorValue;
    })
}

const marginModifier = () => {
    const marginInput = document.querySelector('#marginModifier');
    
    const labelBoxMargin = document.querySelector('#box_margin');
    marginInput.addEventListener('input', (event) =>{
        const marginValue = event.target.value + 'px';
        labelBoxMargin.textContent = `Margin: ${marginValue}`;
        box.style.margin = marginValue;
    })
}

const paddingModifier = () => {
    const paddingInput = document.querySelector('#paddingModifier');
    const labelBoxPadding = document.querySelector('#box_padding');
    paddingInput.addEventListener('input', (event) => {
        const paddingValue = event.target.value + 'px';
        labelBoxPadding.textContent = `Padding: ${paddingValue}`;
        box.style.padding = paddingValue;
    })
}

const borderType = () => {
    const borderTypeInput = document.querySelector('#borderTypeList');
    borderTypeInput.addEventListener('input', (e) => {
        const borderTypeValue = e.target.value;
        box.style.borderStyle =  borderTypeValue;
    })
}

const borderColorInput = () => {
    const borderColorInput = document.querySelector('#colorPickerBorder');
    borderColorInput.addEventListener('input', (e) =>{
        const borderColorValue = e.target.value;
        box.style.borderColor = borderColorValue;
    })
}

const borderModifier = () => {
    const borderInput = document.querySelector('#borderModifier');
    const labelBoxBorder = document.querySelector('#box_border');
    //const borderTypeColor = document.querySelector('#colorPickerBorder');
    
        const borderTypeInput = document.querySelector('#borderTypeList');
        const borderColorInput = document.querySelector('#colorPickerBorder');
    borderInput.addEventListener('input', (event) => {
        const borderValue = event.target.value + 'px' + ' ' + borderTypeInput.value + ' ' + borderColorInput.value;
        labelBoxBorder.textContent = `Border: ${borderValue}`;
        box.style.border = borderValue;
    })
}

document.addEventListener('DOMContentLoaded', () =>{
    colorPiker();
    marginModifier();
    paddingModifier();
    borderModifier();
    borderType();
    borderColorInput();
})
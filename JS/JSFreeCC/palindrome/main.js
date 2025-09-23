/* When the #text-input element only contains the letter A and the #check-btn element is clicked, the #result element should contain the text A is a palindrome.

When the #text-input element contains the text eye and the #check-btn element is clicked, the #result element should contain the text eye is a palindrome.

When the #text-input element contains the text _eye and the #check-btn element is clicked, the #result element should contain the text _eye is a palindrome.

When the #text-input element contains the text race car and the #check-btn element is clicked, the #result element should contain the text race car is a palindrome.

When the #text-input element contains the text not a palindrome and the #check-btn element is clicked, the #result element should contain the text not a palindrome is not a palindrome. */

const reverseString = (str) =>{
  return str.split('').reverse().join('');
}

const inputFormatter = (str) => {
    const regex = /[^\w]/g; //   /\s/g
    let formattedInput = str.toLowerCase().trim().replace(regex, "");
    return formattedInput;
}

const evaluateInput = () =>{
    const textInput = document.querySelector("#text-input").value;
    const textInputFormatted = reverseString(inputFormatter(textInput));
    
    if (inputFormatter(textInput) === textInputFormatted){
        console.log(`${inputFormatter(textInput)}   ===  ${textInputFormatted}`);
        console.log("Yes, they are bananas");
        console.log("Why a banana");
    } else{
        console.log(`${inputFormatter(textInput)}   =|=  ${textInputFormatted}`);
        console.log("No, they are not bananas");
        console.log("Why NOT a banana");
    }
}



import React, { useState } from 'react';
import ReactMarkdown from 'react-markdown';

function calculateNumbers(a,b){ return a + b; }

function calculateQuadratic(a, b, c){
    var x1 = (-b + Math.sqrt(b*b - 4*a*c)) / (2*a);
    var x2 = (-b - Math.sqrt(b*b - 4*a*c)) / (2*a);
    return [x1, x2];
}

function MarkdownEditor() {
    const [markdown, setMarkdown] = useState('type markdown here');

    const handleInputChange = (event) => {
        setMarkdown(event.target.value);
    };

    return (
        <div>
            <textarea value={markdown} onChange={handleInputChange} />
            <ReactMarkdown>{markdown}</ReactMarkdown>
        </div>
    );
}

export default MarkdownEditor;


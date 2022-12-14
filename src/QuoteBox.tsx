import React from "react";
interface Quote {
    text: string
    author: string
}
class QuoteBox extends React.Component<{ q: Quote }>{
    componentDidMount(): void {
        this.setState({ quote: this.props.q });
    }
    render(): React.ReactNode {
        return (
        <div className="TextBox">
            <div id="text">
                {this.props.q.text}
            </div>
            <div id="author" style={{ textAlign: "right" }}>
                {this.props.q.author ? "-" :""}{this.props.q.author} 
            </div>
        </div>)
    }
}
export default QuoteBox;
//REMOVE import React from 'react'

class Media extends React.Component {
  constructor(props) {
    super(props)
  }
  render() { 
    const AUDIO_EXTENSIONS = /\.(m4a|mp4a|mpga|mp2|mp2a|mp3|m2a|m3a|wav|weba|aac|oga|spx)($|\?)/i
    const VIDEO_EXTENSIONS = /\.(mp4|og[gv]|webm|mov|m4v|mkv)($|\?)/i
    const IMAGE_EXTENSIONS = /\.(png|gif|bmp|svg|jpeg|jpg)($|\?)/i


    if (this.props.href.match(IMAGE_EXTENSIONS)) {
      return (
        <div><img src={this.props.href} /></div>)
    } else if (this.props.href.match(VIDEO_EXTENSIONS)) {
      return (
        <div><video controls autoplay='true' loop src={this.props.href} /></div>)
    } else if (this.props.href.match(AUDIO_EXTENSIONS)) {
      return (
        <div><video controls autoplay='true' loop src={this.props.href} /></div>)
    } else {
      return (
        <div><img src={this.props.href} /></div>)
    }
  }
}

//REMOVE export default Media

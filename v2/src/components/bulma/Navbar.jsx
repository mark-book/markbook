//REMOVE import React, { Component } from 'react' ; export default NavbarSolid

function NavbarAbout ({sourceCode, ...props}) {
  return <div className='navbar-item has-dropdown is-hoverable'>
    <Navbar.List title="About">
      <Navbar.Item href='index.html'>Index</Navbar.Item>
      <hr />
      <Navbar.Item href={sourceCode}>Source</Navbar.Item>
    </Navbar.List>
  </div>
}

class NavbarLogin extends React.Component {
  constructor(props) {
    super(props)
    this.state = { loggedIn : false, webId : null }
  }

  async componentDidMount() {
    console.log('mounted');
    
    const session = await solid.auth.currentSession();
    if (session) {
      this.setState({loggedIn : true, webId : session.webId })
      console.log(`Logged in as ${session.webId}`);
    }    
  }

  async login(idp) {
    console.log('login');
    
    idp = idp || "https://solid.community"
    const session = await solid.auth.currentSession();
    console.log('session', session)
    if (!session) {
      await solid.auth.login(idp)
    } else {
      this.setState({loggedIn : true})
      console.log(`Logged in as ${session.webId}`);
    }
  }

  render() {
    const {sourceCode, ...props} = this.props;
    if (this.state.loggedIn) {
      return (
      <div className='navbar-item has-dropdown is-hoverable'>
      <Navbar.List title="Logged In">
        <a className="navbar-item button navbar is-primary" onClick={() => { 
          localStorage.clear() ; 
          location.reload() 
        }} >Logout</a>
        <hr />
      </Navbar.List>
      </div>) 
    } else {
      return (
      <div className='navbar-item has-dropdown is-hoverable'>
      <Navbar.List title="Sign In">
        <a className="navbar-item button navbar is-primary" 
        onClick={() => { 
          this.login() } 
        } href='#'>Login</a>
        <hr />
        <a className="navbar-item button navbar is-info" target="_blank" href="https://solid.community/">Sign Up</a>
      </Navbar.List>
      </div>)   
    }
  }
}

function NavbarItem ({href, ...props}) {
  return (
    <a href={href} {...props} className='navbar-item'>
    {props.children}
    </a>    
  )
}

function NavbarLogo ({href = '#', src, alt, width, height, ...props}) {
  return (
    <a href={href} className='navbar-item'>
    <img src={src} alt={alt} width={width} height={height} />
    </a>    
  )
}

function NavbarList ({title, ...props}) {
  return (
    <React.Fragment>
    <a className='navbar-link'>
      {title}
    </a>

    <div className='navbar-dropdown'>
      {props.children}
    </div>
    </React.Fragment>
  )
}

class NavbarBurger extends React.Component {
  constructor(props) {
    super(props)
  }

  toggleNav () {
    var nav = document.querySelector('.navbar-menu')
    if (nav.className === 'navbar-menu') {
      nav.className = 'navbar-menu is-active'
    } else {
      nav.className = 'navbar-menu'
    }
  }


  render() {
    return (
      <React.Fragment>
      <a role='button' className='navbar-burger burger' aria-label='menu' aria-expanded='false' data-target='navbarBasicExample' onClick={this.toggleNav}>
        <span aria-hidden='true' />
        <span aria-hidden='true' />
        <span aria-hidden='true' />
      </a>        
      </React.Fragment>
    )
  }
}

function NavbarBrand (props) {
  return (
    <div className='navbar-brand'>
      {props.children}
    </div>      
  )
}

function NavbarContainer ({position, ...props}) {
  return (
    <div className={'navbar-' + position}>
      {props.children}
    </div>      
  )
}

function NavbarMenu ({...props}) {
  return (
    <div className='navbar-menu'>
      {props.children}
    </div>      
  )
}

function Navbar ({title, className, ...props}) {

  return <nav className={'navbar ' + className} role='navigation' aria-label='main navigation'>
      {props.children}
  </nav>
}

function NavbarExample ({title, className, ...props}) {

  return <Navbar className={className}>
    <Navbar.Brand>
    <Navbar.Item href='#'>{title}</Navbar.Item>
      <Navbar.Burger/>
    </Navbar.Brand>

    <Navbar.Menu>
      <Navbar.Container position="start">
        <Navbar.About />
      </Navbar.Container>

      {props.children}

    </Navbar.Menu>
  </Navbar>
}

function NavbarSolid ({title, className, sourceCode, ...props}) {

  return (<Navbar className={className}>
    <Navbar.Brand>
    <Navbar.Logo href='#' src="https://play-grounds.github.io/react/play/image/solid.svg" width="30" height="30" alt="Logo"></Navbar.Logo>
    <Navbar.Item href='#'>{title}</Navbar.Item>
      <Navbar.Burger/>
    </Navbar.Brand>

    <Navbar.Menu>
      <Navbar.Container position="start">
        <Navbar.About sourceCode={sourceCode} />
      </Navbar.Container>

      {props.children}

    </Navbar.Menu>
  </Navbar>)
}

function NavbarSolidLogin ({title, className, sourceCode, ...props}) {

  return (<Navbar className={className}>
    <Navbar.Brand>
    <Navbar.Logo href='#' src="https://play-grounds.github.io/react/play/image/solid.svg" width="30" height="30" alt="Logo"></Navbar.Logo>
    <Navbar.Item href='#'>{title}</Navbar.Item>
      <Navbar.Burger/>
    </Navbar.Brand>

    <Navbar.Menu>
      <Navbar.Container position="start">
        <Navbar.About sourceCode={sourceCode} />
      </Navbar.Container>

      {props.children}

      <Navbar.Container position="end">
        <Navbar.Login sourceCode={sourceCode} />
      </Navbar.Container>


    </Navbar.Menu>
  </Navbar>)
}

Navbar.About = NavbarAbout
Navbar.Login = NavbarLogin
Navbar.List = NavbarList
Navbar.Item = NavbarItem
Navbar.Logo = NavbarLogo
Navbar.Burger = NavbarBurger
Navbar.Brand = NavbarBrand
Navbar.Menu = NavbarMenu
Navbar.Container = NavbarContainer

Navbar.Example = NavbarExample


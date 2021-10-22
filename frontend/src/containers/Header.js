import React from 'react';
import { connect } from 'react-redux';
import * as actions from '../redux/actions';

import '../style/Header.css'
import { Header } from 'semantic-ui-react';

const HeaderContent = ({ currentUser, log_out }) => {

    const handleClick = () => {
        log_out();
        localStorage.removeItem('token')
    }

    return (
        <div className="Header">
            {currentUser
                ? <img className="signout-icon" src='../assets/logout.png' alt="Sign out icon" onClick={handleClick}/>
                : <img className="signup-in-icon" src='../assets/user.png' alt='Login and Sign Up icon'/>              
            }

            <Header size='huge'>Header Content</Header>
        </div>
    )
}

const mapStateToProps = state => ({
    currentUser: state.currentUser
})

export default connect(mapStateToProps, actions)(HeaderContent)
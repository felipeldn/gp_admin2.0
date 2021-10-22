import React from 'react';
import API from '../API.js';
import useFormInput from '../hooks/useFormInput.js';
import './Form.css'

const SignUp = () => {

    const formFields ={
        name: '',
        username: '',
        email: '',
        password: '',
        specialty: ''
    }

    const [formInput, handleFormChange, resetForm] = useFormInput(formFields)

    const handleFormSubmit = (event) => {
        event.preventDefault()
        API.signUp({clinician: formInput})
            .then(console.log)
            .catch(error => alert(error))
        resetForm()
    }

    return (
        <div className='signup-form modal'>
            <form className='signup-form' onSubmit={handleFormSubmit}>
                <div className='signup-form-container'>
                    <h3>Sign Up</h3>
                    <p>Please fill in this form to create an account.</p>
                    <hr/>

                    <label id='form-label'> Name </label>
                    <input type='text' name='name' value={formInput.name} placeholder='Enter your full name' onChange={handleFormChange} required/>

                    <label id='form-label'> Username </label>
                    <input type='text' name='username' value={formInput.username} placeholder='Enter username' onChange={handleFormChange} required/>

                    <label id='form-label'> Email </label>
                    <input type='email' name='email' value={formInput.email} placeholder='Enter your email address' onChange={handleFormChange}/>

                    <label id='form-label'> Password </label>
                    <input type='password' name='password' value={formInput.password} placeholder='Enter your password' onChange={handleFormChange} required/>

                    <label id='form-label'> Specialty </label>
                    <input type='text' name='specialty' value={formInput.specialty} placeholder='Enter your specialty' onChange={handleFormChange} required/>

                    <button type='submit' className='signup'> Sign Up </button>
                </div>

            </form>

        </div>
    )

}

export default SignUp;
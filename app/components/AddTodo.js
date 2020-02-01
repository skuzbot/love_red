import react, {Fragment, useState} from 'react'

const AddTodo = (props) => {
  const [newTodo, setNewTodo] = useState('')

  const handleNewTodo = e => {
    const todo = e.target.value
    setNewTodo(todo)
  }

  const submitTodo = () => {
    console.log('newTodo', newTodo)

  }

  return (
    <Fragment>
      <input value={newTodo} onChange={e => handleNewTodo(e)}/>
      <button onClick={() => submitTodo()}>Submit that dope ass todo</button>
    </Fragment>
  )
}

export default AddTodo
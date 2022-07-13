import React from 'react'

function ActivityCard( {item} ) {

  const {id, event, description, location, image_activity} = item

  return (
    <li>
    <div className="activity-card">
      <h1> {event} </h1>
      <img src = {image_activity} alt={event} className='activity-image' />
      <p> {description} </p>
      <h5> {location} </h5>

    </div>
    </li>

  )
}

export default ActivityCard

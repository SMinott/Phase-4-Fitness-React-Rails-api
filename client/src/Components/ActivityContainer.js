import React from 'react'
import ActivityCard from './ActivityCard'


function ActivityContainer( {activityList} ) {

  const renderActivities =  activityList.map((item) => {
    return <ActivityCard key={item.id} item={item}/>
  })

  return (
    <main>
      {/* <p>Choose one or more fitness events that you would like to participate in.</p> */}
      <ul className='activity-container'>
       {renderActivities}
      </ul>
    </main>
  )
}

export default ActivityContainer

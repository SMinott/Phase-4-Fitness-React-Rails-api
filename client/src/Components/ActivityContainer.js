import React from 'react'
import ActivityCard from './ActivityCard'


function ActivityContainer( {activityList} ) {

  const renderActivities =  activityList.map((item) => {
    return <ActivityCard key={item.id} item={item}/>
  })

  return (
    <main>
      <ul>
       {renderActivities}
      </ul>
    </main>
  )
}

export default ActivityContainer

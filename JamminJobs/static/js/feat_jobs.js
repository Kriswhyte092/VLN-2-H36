// Define the data for each job
const jobs = [
  {
    company: "COMPANY_1",
    location: "LOCATION_1",
    description: "DESCRIPTION_1",
    tags: ["TAG_1", "TAG_2"]
  },
  {
    company: "COMPANY_2",
    location: "LOCATION_2",
    description: "DESCRIPTION_2",
    tags: ["TAG_3", "TAG_4"]
  },
  {
    company: "COMPANY_3",
    location: "LOCATION_3",
    description: "DESCRIPTION_3",
    tags: ["TAG_5", "TAG_6"]
  },
  {
    company: "COMPANY_4",
    location: "LOCATION_4",
    description: "DESCRIPTION_4",
    tags: ["TAG_7", "TAG_8"]
  },
  {
    company: "COMPANY_5",
    location: "LOCATION_5",
    description: "DESCRIPTION_5",
    tags: ["TAG_7", "TAG_8"]
  },
  {
    company: "COMPANY_6",
    location: "LOCATION_6",
    description: "DESCRIPTION_6",
    tags: ["TAG_7", "TAG_8"]
  },
  {
    company: "COMPANY_7",
    location: "LOCATION_7",
    description: "DESCRIPTION_7",
    tags: ["TAG_7", "TAG_8"]
  },
  {
    company: "COMPANY_8",
    location: "LOCATION_8",
    description: "DESCRIPTION_8",
    tags: ["TAG_7", "TAG_8"]
  },

	
  // Define data for more jobs as needed
];

  
//function createJobCard(job) {
//       const big_card = document.createElement("div");
//       big_card.classList.add("big_card");
//  
//       big_card.innerHTML = `
//         <div class="job-card-bigger">
//           <div class="job-type-bigger">
//             <div class="type-label-bigger">${job.company}</div>
//           </div>
//           <div class="job-details-bigger">
//             <div class="location">
//               <span class="company">${job.company}</span>
//           <div class="dot"></div>
//           <span class="location-text">${job.location}</span>
//             </div>
//           </div>
//           <div class="job-description">${job.description}</div>
//       </div>
//      `;
//  
//       return big_card;
//   }
  

function createJobCard(job) {
  const card = document.createElement("div");
  card.classList.add("item", "item-1");
  
  card.innerHTML = `
    <div class="job-card">
      <div class="job-type">
        <div class="type-label">FullTime</div>
      </div>
      <div class="job-details">
        <div class="company-name">${job.company}</div>
        <div class="location">
          <span class="company">${job.company}</span>
          <div class="dot"></div>
          <span class="location-text">${job.location}</span>
        </div>
      </div>
      <div class="job-description">${job.description}</div>
      <div class="tags">
        ${job.tags.map(tag => `<div class="tag">${tag}</div>`).join('')}
      </div>
    </div>
  `;
  
  return card;
}

function createBigJobCard(job) {
  const bigCard = document.createElement("div");
  bigCard.classList.add("bigCard");
  
  bigCard.innerHTML =  `
    <div class="job-card">
      <div class="job-type">
        <div class="type-label">FullTime</div>
      </div>
      <div class="job-details">
        <div class="company-name">${job.company}</div>
        <div class="location">
          <span class="company">${job.company}</span>
          <div class="dot"></div>
          <span class="location-text">${job.location}</span>
        </div>
      </div>
      <div class="job-description">${job.description}</div>
      <div class="tags">
        ${job.tags.map(tag => `<div class="tag">${tag}</div>`).join('')}
      </div>
    </div>
  `;
   return bigCard;
}

// Function to add job cards to the container
function addJobCards(containerSelector, jobsArray) {
  const container = document.querySelector(containerSelector);
  
  jobsArray.forEach(job => {
    const jobCard = createJobCard(job);
    container.appendChild(jobCard);
  });
}

function bigAddJobCards(containerSelector, jobsArray) {
  const container = document.querySelector(containerSelector);
  
  jobsArray.forEach(job => {
    const bigJobCard = createBigJobCard(job);
    container.appendChild(bigJobCard);
  });
}


// Call the function to add job cards when the page loads
window.addEventListener('DOMContentLoaded', function() {
	addJobCards('.home1', jobs.slice(0,8));
	bigAddJobCards('.Home_big_card1', jobs.slice(0,4));
	bigAddJobCards('.Home_big_card', jobs.slice(4));
});

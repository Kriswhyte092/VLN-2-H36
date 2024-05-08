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

	
  // Define data for more jobs as needed
];

// Function to create a job card element
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

// Function to add job cards to the container
function addJobCards() {
  const container = document.querySelector('.home1');
  
  jobs.forEach(job => {
    const jobCard = createJobCard(job);
    container.appendChild(jobCard);
  });
}

// Call the function to add job cards when the page loads
window.addEventListener('DOMContentLoaded', addJobCards);


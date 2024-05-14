const big_jobs = [
    {
      company: "COMPANY_1",
      location: "LOCATION_1",
      description: "DESCRIPTION_1",
      tags: ["TAG_1", "TAG_2"]
     },
     {
      company: "COMPANY_1",
      location: "LOCATION_1",
      description: "DESCRIPTION_1",
      tags: ["TAG_1", "TAG_2"]
     },
     {
      company: "COMPANY_1",
      location: "LOCATION_1",
      description: "DESCRIPTION_1",
      tags: ["TAG_1", "TAG_2"]
     },
     {
      company: "COMPANY_1",
      location: "LOCATION_1",
      description: "DESCRIPTION_1",
      tags: ["TAG_1", "TAG_2"]
     },
  
  
  
   ];
  
  
function createJobCard(job) {
       const big_card = document.createElement("div");
       big_card.classList.add("big_card");
  
       big_card.innerHTML = `
         <div class="job-card-bigger">
           <div class="job-type-bigger">
             <div class="type-label-bigger">${job.company}</div>
           </div>
           <div class="job-details-bigger">
             <div class="location">
               <span class="company">${job.company}</span>
           <div class="dot"></div>
           <span class="location-text">${job.location}</span>
             </div>
           </div>
           <div class="job-description">${job.description}</div>
       </div>
      `;
  
       return big_card;
   }
  
   function addJobCards() {
       const big_container = document.querySelector('.bigger_cards');
  
       big_jobs.forEach(job => {
         const bigJobCard = createJobCard(job);
         big_container.appendChild(bigjobCard);
       });
   }
  
   window.addEventListener('DOMContentLoaded', addJobCards);

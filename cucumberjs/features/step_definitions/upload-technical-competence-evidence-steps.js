const World = require("../support/world").World;

module.exports = function () {

  this.World = World;



  this.defineStep(/^following are the options on the the technical qualifications page:$/, function (table) {
    //const data = table.rowsHash();
    let list = table.rows();

    list.forEach(element => {

      switch (element) {
        case "ElementWAMITAB qualification":
          this.UploadTechCompetency.wamitabLink();
          break;
        case "ElementRegistered on a course - grace period":
          this.UploadTechCompetency.gettingQualification();
          break;
        case "ElementDeemed competence":
          this.UploadTechCompetency.deemed();
          break;
        case "ElementESA/EU skills":
          this.UploadTechCompetency.esaEU();
          break;
        default: break;
      }

    });
  });

};
const fs = require('fs');
const path = require('path');

const dir = 'report/json/';
const files = fs.readdirSync(dir);
const failedSteps = [];
let failures = 0;
let total = 0;

const cleanStep = (step) => step.replace(/"[^"]+"+/g, '""');

const readFiles = (file) => {
  const result = JSON.parse(fs.readFileSync(path.join(dir, file), 'utf8'));
  result.forEach((item) => {
    item.elements.forEach((element) => {
      // eslint-disable-next-line no-plusplus
      total++;
      element.steps.forEach((step) => {
        if (step.result.status === 'failed') {
          const cucumber = cleanStep(step.name);
          if (!failedSteps.includes(cucumber)) {
            failedSteps.push(cucumber);
          }
          // eslint-disable-next-line no-plusplus
          failures++;
        }
      });
    });
  });
};
files.forEach(readFiles);
console.log(failedSteps);
console.log(total - failures, ' Passed, ', failures, ' Failed, out of ', total);
console.log('Reliability Rate is: ', (100 - (failures / total) * 100).toFixed(2));

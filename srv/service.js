const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
  const { Items } = this.entities;

  // Implement the ResetItemsStatus action
  this.on('ResetItemsStatus', async (req) => {
    const db = await cds.connect.to('db');
    await db.run(UPDATE(Items).set({ Status: 'Buy' }));
    return { message: 'All item statuses have been reset to "Buy".' };
  });
});

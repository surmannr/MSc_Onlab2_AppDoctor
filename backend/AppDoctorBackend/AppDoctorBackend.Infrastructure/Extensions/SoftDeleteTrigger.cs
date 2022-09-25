using EntityFrameworkCore.Triggered;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.Extensions
{
    public class SoftDeleteTrigger : IBeforeSaveTrigger<ISoftDelete>
    {
        readonly AppDoctorDbContext _dataContext;
        public SoftDeleteTrigger(AppDoctorDbContext dataContext)
        {
            _dataContext = dataContext;
        }

        public async Task BeforeSave(ITriggerContext<ISoftDelete> context, CancellationToken cancellationToken)
        {
            if (context.ChangeType == ChangeType.Deleted)
            {
                var entry = _dataContext.Entry(context.Entity);
                context.Entity.IsDeleted = true;
                context.Entity.DeletedDate = DateTime.UtcNow;
                entry.State = EntityState.Modified;
            }
            await Task.CompletedTask;
        }
    }
}

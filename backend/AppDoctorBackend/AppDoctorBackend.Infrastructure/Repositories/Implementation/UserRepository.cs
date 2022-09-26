using AppDoctorBackend.Infrastructure.DomainModels;
using AppDoctorBackend.Infrastructure.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.Repositories.Implementation
{
    public class UserRepository : BaseRepository<User, string>, IUserRepository
    {
        private readonly AppDoctorDbContext _dbContext;
        public UserRepository(AppDoctorDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }

        public List<User> FindByRole(string role)
        {
            var userIds = _dbContext.UserRoles.Where(e => e.RoleId == role).Select(e => e.UserId).ToList();
            return _dbContext.Users.Where(e => userIds.Contains(e.Id)).ToList();
        }
    }
}

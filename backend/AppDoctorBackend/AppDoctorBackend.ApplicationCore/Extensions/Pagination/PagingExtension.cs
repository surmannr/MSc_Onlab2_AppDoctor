using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Extensions.Pagination
{
    public static class PagingExtension
    {
        public static async Task<PagedResult<T>> ToPagedListAsync<T>(this IQueryable<T> list, int pagesize, int pagenumber)
        {
            PagedResult<T> result = new PagedResult<T>()
            {
                AllResultsCount = await list.CountAsync(),
                PageNumber = pagenumber,
                PageSize = pagesize,
                Results = await list.Skip(pagesize * (pagenumber - 1)).Take(pagesize).ToListAsync()
            };

            return result;
        }

        public static PagedResult<T> ToPagedList<T>(this IQueryable<T> list, int pagesize, int pagenumber)
        {
            PagedResult<T> result = new PagedResult<T>()
            {
                AllResultsCount = list.Count(),
                PageNumber = pagenumber,
                PageSize = pagesize,
                Results = list.Skip(pagesize * (pagenumber - 1)).Take(pagesize).ToList()
            };

            return result;
        }
    }
}

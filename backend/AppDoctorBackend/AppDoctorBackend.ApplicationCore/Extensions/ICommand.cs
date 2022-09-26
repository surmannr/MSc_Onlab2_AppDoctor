using MediatR;

namespace AppDoctorBackend.ApplicationCore.Extensions
{
    public interface ICommand<TResult> : IRequest<TResult>
    {
    }
}
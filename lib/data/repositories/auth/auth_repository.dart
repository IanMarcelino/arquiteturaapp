abstract interface class AuthRepository{
  AsyncResult<LoggedUser> login();
  logout();
  getUser();
  userObserver();
}
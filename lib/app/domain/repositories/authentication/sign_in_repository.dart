abstract class SignInRepository<R, T> {
  Future<T> signIn({
    required R signInParams,
  });
}

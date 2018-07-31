module UserServices
  class SendVerificationCode
    attr_reader :email, :user , :error

    def initialize(email)
      @email = email
      @user = User.find_by(email: email)
      @error = []
    end

    def call
      begin
        verification_expired?
        user.renew_verification_code

      rescue

      end

    end

    def verification_expired?
      ErrorHandle::Handlers.raise_common_error(
          user.verification_expired?,
          'Code was sent, pls wait for 60s'
      )
    end
  end
end
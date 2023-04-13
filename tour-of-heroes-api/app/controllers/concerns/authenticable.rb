module Authenticable
  private

  def authenticate_with_token
    @token ||= request.headers['Authorization']

    return if valid_token?

    render json: { erros: 'Você não tem autorização para essa operação.' }, status: :unauthorized
  end

  def valid_token?
    @token.present? && @token == Rails.application.credentials.token
  end
end

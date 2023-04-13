module Authenticable
  private

  def authenticate_with_token
    @token ||= request.headers['Authorization']

    return if valid_token?

    render json: {
             erros: 'Forneça um header Authorization para se identificar. Qualquer um com pelo menos 10 caracteres'
           },
           status: :unauthorized
  end

  def valid_token?
    @token.present? && @token.size >= 10
  end
end

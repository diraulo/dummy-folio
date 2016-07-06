module IconHelper
  def get_icon(type)
      case type
      when 'Email' then 'fi-mail'
      when 'LinkedIn' then 'fi-social-linkedin'
      when 'GitHub' then 'fi-social-github'
      when 'Twitter' then 'fi-social-twitter'
      end
  end
end

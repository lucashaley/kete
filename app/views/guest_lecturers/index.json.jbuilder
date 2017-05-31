json.array!(@guest_lecturers) do |guest_lecturer|
  json.extract! guest_lecturer, :id, :first_name, :last_name, :email, :website, :cell
  json.url guest_lecturer_url(guest_lecturer, format: :json)
end

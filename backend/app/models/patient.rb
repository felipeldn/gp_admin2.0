class Patient < ApplicationRecord

    has_many :contacts

    has_many :heart_rates
    has_many :blood_pressures
    has_many :resp_rates
    has_many :o2_sats
    has_many :temps
    has_many :irreg_episodes
    has_many :blood_glucoses
    has_many :calorie_intakes
    has_many :active_calories
    has_many :steps
    has_many :time_standings
    has_many :flights_climbed
    has_many :exercise_durations
    has_many :weights
    has_many :heights
    has_many :falls
    has_many :mindful_minutes

end

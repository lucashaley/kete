# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170628002112) do

  create_table "computers", force: :cascade do |t|
    t.string  "model"
    t.string  "operating_system"
    t.date    "date_of_purchase"
    t.integer "lab_id"
    t.integer "software_packages_id"
    t.index ["lab_id"], name: "index_computers_on_lab_id"
    t.index ["software_packages_id"], name: "index_computers_on_software_packages_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "code"
    t.string   "title"
    t.string   "short_title"
    t.text     "description"
    t.text     "overview"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  create_table "enrolments", force: :cascade do |t|
    t.integer  "offering_id"
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "workshop_id"
    t.index ["offering_id"], name: "index_enrolments_on_offering_id"
    t.index ["student_id"], name: "index_enrolments_on_student_id"
    t.index ["workshop_id"], name: "index_enrolments_on_workshop_id"
  end

  create_table "guest_lecturers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "website"
    t.string   "cell"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "preferred_name"
    t.string   "image"
  end

  create_table "guest_visits", force: :cascade do |t|
    t.integer  "guest_lecturer_id"
    t.datetime "start"
    t.datetime "end"
    t.string   "type"
    t.integer  "budget"
    t.boolean  "parking_needed"
    t.boolean  "pl_approved"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "course_id"
    t.index ["course_id"], name: "index_guest_visits_on_course_id"
    t.index ["guest_lecturer_id"], name: "index_guest_visits_on_guest_lecturer_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "biography"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "preferred_name"
    t.string   "image"
    t.string   "title"
  end

  create_table "issues", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "title"
    t.text     "content"
    t.boolean  "critical"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["instructor_id"], name: "index_issues_on_instructor_id"
    t.index ["student_id"], name: "index_issues_on_student_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer  "lesson_id"
    t.integer  "order"
    t.string   "title"
    t.text     "detail"
    t.text     "resources"
    t.integer  "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_items_on_lesson_id"
  end

  create_table "labs", force: :cascade do |t|
    t.string  "name"
    t.integer "computers_id"
    t.index ["computers_id"], name: "index_labs_on_computers_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "week"
    t.string   "title"
    t.text     "description"
    t.text     "rationale"
    t.text     "requisites"
    t.text     "directed_study"
    t.text     "reading"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "type"
    t.index ["course_id"], name: "index_lessons_on_course_id"
  end

  create_table "majors", force: :cascade do |t|
    t.string   "title"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["instructor_id"], name: "index_majors_on_instructor_id"
  end

  create_table "offerings", force: :cascade do |t|
    t.integer  "semester_id"
    t.integer  "course_id"
    t.integer  "instructor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "lab"
    t.string   "facebook_group"
    t.index ["course_id"], name: "index_offerings_on_course_id"
    t.index ["instructor_id"], name: "index_offerings_on_instructor_id"
    t.index ["semester_id"], name: "index_offerings_on_semester_id"
  end

  create_table "outcomes", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "order"
    t.text     "text"
    t.text     "criteria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "profile"
    t.index ["course_id"], name: "index_outcomes_on_course_id"
  end

  create_table "pdps", force: :cascade do |t|
    t.integer  "student_id"
    t.datetime "appointment"
    t.text     "review_student"
    t.text     "review_staff"
    t.text     "preview_student"
    t.text     "preview_staff"
    t.text     "notes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "agreed"
    t.integer  "instructor_id"
    t.integer  "acuity_id"
    t.string   "scan"
    t.index ["instructor_id"], name: "index_pdps_on_instructor_id"
    t.index ["student_id"], name: "index_pdps_on_student_id"
  end

  create_table "programmes", force: :cascade do |t|
    t.string   "title"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "abbreviation"
    t.index ["instructor_id"], name: "index_programmes_on_instructor_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string   "code"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer  "day_of_week"
    t.time     "time_start"
    t.time     "time_end"
    t.integer  "lab_id"
    t.integer  "workshop_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["lab_id"], name: "index_sessions_on_lab_id"
    t.index ["workshop_id"], name: "index_sessions_on_workshop_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "massey_identification"
    t.string   "email"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "enrollment_year"
    t.string   "preferred_name"
    t.string   "image"
    t.integer  "programme_id"
    t.integer  "major_id"
    t.index ["major_id"], name: "index_students_on_major_id"
    t.index ["programme_id"], name: "index_students_on_programme_id"
  end

  create_table "workshop_enrolments", force: :cascade do |t|
    t.integer  "enrolment_id"
    t.integer  "workshop_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["enrolment_id"], name: "index_workshop_enrolments_on_enrolment_id"
    t.index ["workshop_id"], name: "index_workshop_enrolments_on_workshop_id"
  end

  create_table "workshops", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "offering_id"
    t.integer  "lab_id"
    t.index ["lab_id"], name: "index_workshops_on_lab_id"
    t.index ["offering_id"], name: "index_workshops_on_offering_id"
  end

end

# Companies
akhtaboot = Company.create!(name: "Akhtaboot")
zenhr = Company.create!(name: "ZenHR")

# Branches
amman_branch = zenhr.branches.create!(name: "Amman Branch")
dubai_branch = zenhr.branches.create!(name: "Dubai Branch")

# Attendance Setup for Branches
amman_branch.create_attendance_setup!(roaster: true)
dubai_branch.create_attendance_setup!(roaster: false)

# Employees for Amman Branch
employee_1_amman = amman_branch.employees.create!(name: "Employee 1 Amman", email: "employee1_amman@amman.com", hire_date: "2023-01-01", employment_number: "E001")
employee_2_amman = amman_branch.employees.create!(name: "Employee 2 Amman", email: "employee2_amman@amman.com", hire_date: "2023-01-02", employment_number: "E002")
terminated_employee_amman = amman_branch.employees.create!(name: "Employee Terminated Amman", email: "terminated_amman@amman.com", hire_date: "2023-01-03", employment_number: "E003")

# Termination
terminated_employee_amman.create_termination!(date: "2024-12-31")

# Financial Packages for Employees
employee_1_amman.financial_packages.create!(from_date: "2023-01-01", to_date: "2023-12-31", amount: 500)
employee_1_amman.financial_packages.create!(from_date: "2024-01-01", to_date: "2024-12-31", amount: 600)

employee_2_amman.financial_packages.create!(from_date: "2023-01-01", to_date: "2023-12-31", amount: 500)
employee_2_amman.financial_packages.create!(from_date: "2024-01-01", to_date: "2024-12-31", amount: 600)

# Employees for Dubai Branch
dubai_branch.employees.create!(name: "Employee 1 Dubai", email: "employee1_dubai@dubai.com", hire_date: "2023-01-04", employment_number: "E001")
dubai_branch.employees.create!(name: "Employee 2 Dubai", email: "employee2_dubai@dubai.com", hire_date: "2023-01-05", employment_number: "E002")
dubai_branch.employees.create!(name: "Employee 3 Dubai", email: "employee3_dubai@dubai.com", hire_date: "2023-01-06", employment_number: "E003")

# Rooms for Amman Branch
room_1_amman = amman_branch.rooms.create!(name: "Amman Meeting Room 1")
room_2_amman = amman_branch.rooms.create!(name: "Amman Meeting Room 2")

# Room Placement
employee_1_amman.rooms << room_1_amman
employee_2_amman.rooms << [room_1_amman, room_2_amman]

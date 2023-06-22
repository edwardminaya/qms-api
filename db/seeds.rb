# # Department test samples
# department = Department.create(
#   department_name: "CNC",
#   department_manager: "Mike Smith",
# )

# department = Department.create(
#   department_name: "Punch Press",
#   department_manager: "Jane Doe",
# )

# department = Department.create(
#   department_name: "Cold Heading",
#   department_manager: "Will Adams",
# )

# department = Department.create(
#   department_name: "Assembly",
#   department_manager: "Kyle Jones",
# )

# department = Department.create(
#   department_name: "Shipping",
#   department_manager: "Jason Daniels",
# )

# # Product classes test sample

# product_class = Productclass.create(
#   product_class_name: "Steel/Stainless Bolts",
#   product_class_code: "BOLT",
# )

# product_class = Productclass.create(
#   product_class_name: "Bolt Washers",
#   product_class_code: "WASH",
# )

# product_class = Productclass.create(
#   product_class_name: "Electrical Wiring",
#   product_class_code: "WIRE",
# )

# product_class = Productclass.create(
#   product_class_name: "Steel/Stainless Clips",
#   product_class_code: "CLIP",
# )

# product_class = Productclass.create(
#   product_class_name: "PVC Pipes",
#   product_class_code: "PVCP",
# )

# Products test sample

product = Product.create(
  product_name: "1/4 STL Bolt",
  product_code: "C0218",
  product_description: "Hex 1/4 Inch Bolt Steel",
  productclass_id: 1,
)

product = Product.create(
  product_name: "1/8 STL Bolt",
  product_code: "C0300",
  product_description: "Hex 1/8 Inch Bolt Steel",
  productclass_id: 1,
)

product = Product.create(
  product_name: "1/4 STL Washer",
  product_code: "C1404",
  product_description: "1/4 Steel Washer",
  productclass_id: 2,
)

product = Product.create(
  product_name: "1/8 STL Washer",
  product_code: "C1010",
  product_description: "1/8 Steel Washer",
  productclass_id: 2,
)

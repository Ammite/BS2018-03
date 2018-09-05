note
	description: "Summary description for {CMS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CMS

feature

	create_contact(a_name: STRING; a_phone_number: INTEGER_64; a_work_place: STRING; a_email: STRING):  CONTACT
		local
			qwerty:  CONTACT
		do
			create qwerty.make(a_name, a_phone_number, a_work_place, a_email)
			Result:= qwerty
		end

	edit_contact(c: CONTACT; a_name: STRING; a_phone_number: INTEGER_64; a_work_place: STRING; a_email: STRING)
		do
			c.set_name (a_name)
			c.set_phone_number(a_phone_number)
			c.set_work_place (a_work_place)
			c.set_email(a_email)
		end

	add_emergency_contact(c_1:  CONTACT; c_2: CONTACT)
		do
			c_1.set_call_emergency(c_2)
		end

	remove_emergency_contact(c: CONTACT)
		do
			c.set_call_emergency(VOID)
		end

end

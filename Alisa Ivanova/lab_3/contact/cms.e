note
	description: "Summary description for {CMS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CMS

feature

	edit_contact (c: CONTACT; a_name:STRING; a_phone_number:STRING; a_work_place:STRING; a_email:STRING)

		do


			c.set_name (a_name)
			c.set_phone_number(a_phone_number)
			c.set_work_place(a_work_place)
			c.set_email(a_email)
		end

	add_emergency_contact (c1: CONTACT; c2: CONTACT)

		do
			c1.set_call_emergency (c2)
		end

	remove_emergency_contact (c: CONTACT)

		do
			c.set_call_emergency (void)
		end

end
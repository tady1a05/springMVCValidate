package springboot.mvc.toby;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Student {
	@NotNull(message="The first name cannot be empty.")
	@Size(min=1,message="The first name cannot be empty.")
	private String firstName;
	
	@NotNull(message="The last name cannot be empty.")
	@Size(min=1,message="The last name cannot be empty.")
	private String lastName;
	
	@NotNull(message="The age cannot be empty.")
	@Min(value= 0, message="The age cannot less than 0")
	@Max(value= 20, message="The age cannot greater than 20")
	private int age;
	
	@NotNull(message="The classroom cannot be empty.")
	@Pattern(regexp="^[0-9]{1}[A-Za-z]{1}",  message="Invalid classroom")
	private String classroom;
	
	public int getAge() {
		return age;
	}
	public String getClassroom() {
		return classroom;
	}
	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}

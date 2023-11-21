package com.ps20611.Entity;

import java.io.Serializable;
import java.util.List;
import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "staff")
public class Staff_Entity implements Serializable {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Integer id;
	private String fullname;
	private String phone_number;
	private String address;
	@Pattern(regexp = "^(Nam|Nữ)$")
	private Boolean sex;
	@Temporal(TemporalType.DATE)
	private String years;
	@Email
	private String email;
	@ManyToOne
	@JoinColumn(name = "status_id")
	private Status_Entity status_id;
	
	@OneToMany(mappedBy = "staff_id",fetch = FetchType.EAGER)
	List<Invoice_Entity> invoice_Staff;

	@OneToMany(mappedBy = "staff")
	List<Account_Entity> account;
	
//  @PrePersist
//	public void validation_Staff() {
//		@SuppressWarnings("unused")
//		String regexPattern = "^NV[0-9]+$";
//		if (id == null || id.isEmpty()) {
//			throw new CustomValidationException("Không Để Trống ID !");
//		} else if (id.length() < 3 || id.length() > 15) {
//			throw new CustomValidationException("Giới Hạn Ký Tự Từ 3 --> 15 !");
//		} else if (!id.matches(regexPattern)) {
//			throw new CustomValidationException("Bắt Buộc Phải Nhập NV Và Phía Sua Là Số !");
//		}
//
//		if (fullname == null || fullname.isEmpty()) {
//			throw new CustomValidationException("Không Để Trống Họ Và Tên !");
//		} else if (fullname.length() == 0 || fullname.length() > 50) {
//			throw new CustomValidationException("Giới Hạn Ký Tự Từ 1 --> 50 !");
//		}
//
//		if (phone_number == null || phone_number.isEmpty()) {
//			throw new CustomValidationException("Không Để Trống Số Điện Thoại !");
//		} else if (phone_number.matches("^\\+?[0-9]*$")) {
//			throw new CustomValidationException("Số Điện Thoại Không Đúng Định Dạng Và Bắt Buộc Phải 10 Số !");
//		}
//
//		if (address == null || address.isEmpty()) {
//			throw new CustomValidationException("Không Để Trống Địa Chỉ !");
//		} else if (address.length() == 0 || address.length() > 255) {
//			throw new CustomValidationException("Giới Hạn Ký Tự Từ 1 --> 255 !");
//		}
//
//		if (sex == null) {
//			throw new CustomValidationException("Vui Lòng Chọn Giới Tính !");
//		}
//
//		if (years == null || years.isEmpty()) {
//			throw new CustomValidationException("Không Để Trống Ngày Tháng Năm Sinh !");
//		}
//
//		String emailPattern = "^[A-Za-z0-9+_.-]+@(.+)$";
//		if (email == null || email.isBlank()) {
//			throw new CustomValidationException("Không Để Trống Email !");
//		} else if (!email.matches(emailPattern)) {
//			throw new CustomValidationException("Email Không Đúng Định Dạng !");
//		}
//	}
}

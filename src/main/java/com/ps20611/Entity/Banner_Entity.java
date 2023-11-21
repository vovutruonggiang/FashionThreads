package com.ps20611.Entity;

import java.io.Serializable;
import com.ps20611.Utils.CustomValidationException;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "banner")
public class Banner_Entity implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String images;
	@ManyToOne
	@JoinColumn(name = "status_id")
	private Status_Entity status_id;

	@PrePersist
	public void validation_Banner() {
		if (images == null || images.isEmpty()) {
			throw new CustomValidationException("Cần Chọn Hình !");
		} else if (images.length() < 1 || images.length() > 30) {
			throw new CustomValidationException("Giới Hạn Ký Tự Từ 1 --> 30 !");
		}
	}
}

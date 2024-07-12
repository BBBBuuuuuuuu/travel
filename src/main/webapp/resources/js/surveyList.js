	$(document)
					.ready(
							function() {
								$('.viewSurvey')
										.click(
												function() {
													var surveyId = $(this)
															.closest(
																	'.surveyItem')
															.data('survey-id');
													$
															.ajax({
																url : 'surveysearch.do',
																type : 'GET',
																data : {
																	survey_no : surveyId
																},
																success : function(
																		data) {
																	$(
																			'#surveyDetailContent')
																			.html(
																					data);
																	$(
																			'#surveyModal')
																			.show();
																},
																error : function(
																		xhr,
																		status,
																		error) {
																	alert('설문을 불러오는 데 실패했습니다.');
																}
															});
												});

								$('#closeModal').click(function() {
									$('#surveyModal').hide();
									$('#surveyDetailContent').html('');
								});

								$(window).click(function(event) {
									if (event.target.id === 'surveyModal') {
										$('#surveyModal').hide();
										$('#surveyDetailContent').html('');
									}
								});

								$('.deleteSurvey')
										.click(
												function() {
													var surveyId = $(this)
															.closest(
																	'.surveyItem')
															.data('survey-id');
													if (confirm('해당 설문을 삭제하시겠습니까?')) {
														$
																.ajax({
																	url : 'deleteSurvey.do',
																	type : 'POST',
																	data : {
																		survey_no : surveyId
																	},
																	success : function(
																			response) {
																		alert('설문이 삭제되었습니다.');
																		location
																				.reload();
																	},
																	error : function(
																			xhr,
																			status,
																			error) {
																		alert('설문 삭제에 실패했습니다.');
																	}
																});
													}
												});
							});
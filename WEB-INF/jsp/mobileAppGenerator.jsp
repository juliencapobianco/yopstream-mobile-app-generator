<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/radiomanager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/pages/resources/bootstrap/css/bootstrap.min.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/pages/resources/cssmanager/style.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/pages/resources/cssmanager/manager.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/pages/resources/cssmanager/icon/flaticon.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/pages/resources/css/colorpicker.min.css"/>" />

<script
	src="<c:url value="/pages/resources/js/angular/angular.min.js"/>"></script>
<script
	src="<c:url value="/pages/resources/js/angular/ui-bootstrap-tpls-0.13.4.min.js"/>"></script>
<script
	src="<c:url value="/pages/resources/js/angular/bootstrap-colorpicker-module.min.js"/>"></script>
<script
	src="<c:url value="/pages/resources/js/angular/upload.js"/>"></script>
<script
	src="<c:url value="/pages/resources/js/angular/mobile_app_gen/app.js"/>"></script>
<script
	src="<c:url value="/pages/resources/js/angular/mobile_app_gen/controllers/controllers.js"/>"></script>
<script
	src="<c:url value="/pages/resources/js/angular/mobile_app_gen/services/services.js"/>"></script>
</head>
<body ng-app="mobileAppGenerator">
	<div id="container">
		<div id="manager">
			<div class="struct">
				<div class="col-md-2 menuleft"></div>
				<div class="colonnedroite2">
					<div class="structureperso" ng-controller="MobileAppConfigController">
						<accordion close-others="true"> 
						<accordion-group>
						<accordion-heading> Général
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>
							<tbody>
								<tr>
									<td>Nom de la radio</td>
									<td><input type="text"></td>
								</tr>
								<tr>
									<td colspan="2"><div data-target="#uploadlogo1024"
											data-toggle="modal" class="addfile">
											<div class="up"></div>
											<input type="file" ng-file-select="onFileSelect($files)" >
											<i class="flaticon-plus24"></i> <strong class="bleu">Votre
												Logo obligatoire</strong> <br> (Largeur 1024px / Hauteur 1024px)
											
										</div></td>
								</tr>
								<tr>
									<td>Type</td>
									<td>
										<div class="btn-group btn-group-xs">
											<label class="btn" ng-class="radioModel=='type1' ? 'btn-success' : 'btn-default'" ng-model="radioModel" btn-radio="'type1'">1</label>
											<label class="btn" ng-class="radioModel=='type2' ? 'btn-success' : 'btn-default'" ng-model="radioModel" btn-radio="'type2'">2</label>
											<label class="btn" ng-class="radioModel=='off' ? 'btn-danger' : 'btn-default'" ng-model="radioModel" btn-radio="'off'">Désactiver</label>
										</div>
									</td>
								</tr>
								<tr>
									<td>Pochettes</td>
									<td>
										<div class="btn-group btn-group-xs">
											<label class="btn" ng-class="conf.layout.cover ? 'btn-success' : 'btn-default'" ng-model="conf.layout.cover" btn-radio="true" ng-click="toggleComponent('track',conf.layout.cover,'cover')">Activer</label>
											<label class="btn" ng-class="!conf.layout.cover ? 'btn-danger' : 'btn-default'" ng-model="conf.layout.cover" btn-radio="false" ng-click="toggleComponent('track',conf.layout.cover,'cover')">Désactiver</label>
										</div>
									</td>
								</tr>
								<tr>
									<td>Votes</td>
									<td>
										<div class="btn-group btn-group-xs">
											<label class="btn" ng-class="conf.layout.vote ? 'btn-success' : 'btn-default'" ng-model="conf.layout.vote" btn-radio="true" ng-click="toggleComponent('vote',conf.layout.vote)">Activer</label>
											<label class="btn" ng-class="!conf.layout.vote ? 'btn-danger' : 'btn-default'" ng-model="conf.layout.vote" btn-radio="false" ng-click="toggleComponent('vote',conf.layout.vote)">Désactiver</label>
										</div>
									</td>
								</tr>
								<tr>
									<td>Réseaux sociaux</td>
									<td>
										<div class="btn-group btn-group-xs">
											<label class="btn" ng-class="conf.layout.social ? 'btn-success' : 'btn-default'" ng-model="conf.layout.social" btn-radio="true">Activer</label>
											<label class="btn" ng-class="!conf.layout.social ? 'btn-danger' : 'btn-default'" ng-model="conf.layout.social" btn-radio="false">Désactiver</label>
										</div>
									</td>
								</tr>
								<tr>
									<td>Dédicaces</td>
									<td>
										<div class="btn-group btn-group-xs">
											<label class="btn" ng-class="conf.layout.dedicace ? 'btn-success' : 'btn-default'" ng-model="conf.layout.dedicace" btn-radio="true">Activer</label>
											<label class="btn" ng-class="!conf.layout.dedicace ? 'btn-danger' : 'btn-default'" ng-model="conf.layout.dedicace" btn-radio="false">Désactiver</label>
										</div>
									</td>
								</tr>
								<tr>
									<td>Publicité</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-success" type="button">Activer</button>
											<button class="btn btn-default" type="button">Désactiver</button>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2"><div data-target="#uploadpub"
											data-toggle="modal" class="addfile">
											<div class="up">
												<a title="Tooltip on left" data-placement="left"
													data-toggle="tooltip" href=""><span
													class="flaticon-view8"></span></a>
											</div>
											<i class="flaticon-plus24"></i> <strong class="bleu">Votre
												publicité</strong> <br> (Largeur 640px / Hauteur 960px) 
										</div></td>
								</tr>

								<tr>
									<td colspan="2">
										<div class="input-group">
											<span class="input-group-addon">Lien</span> <input
												type="text" style="width: 225px;" class="form-control">
												<span class="input-group-addon">Ok</span>
										</div>
									</td>
								</tr>

							</tbody>
						</table>
						</accordion-group> <accordion-group> <accordion-heading>
						Menu
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>
							<tbody>
								<tr>
									<td>News</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-success" type="button">Activer</button>
											<button class="btn btn-default" type="button">Désactiver</button>
										</div>
									</td>
								</tr>
								<tr>
									<td>Podcasts</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-success" type="button">Activer</button>
											<button class="btn btn-default" type="button">Désactiver</button>
										</div>
									</td>
								</tr>
								<tr>
									<td>Site internet</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-success" type="button">Oui</button>
											<button class="btn btn-default" type="button">Non</button>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<div class="input-group">
											<span class="input-group-addon">www.</span> <input
												type="text" style="width: 225px;" class="form-control">
												<span class="input-group-addon">Ok</span>
										</div>
									</td>
								</tr>

								<tr>
									<td colspan="2"><strong class="bleu">Couleur du
											menu</strong></td>
								</tr>
								<tr>
									<td>Couleur des icones</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>
								<tr>
									<td>Couleur 1</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>
								<tr>
									<td>Couleur 2</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>

							</tbody>
						</table>
						</accordion-group> <accordion-group> <accordion-heading>
						Fond
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>
							<tbody>
								<tr>
									<td>Afficher le logo</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-success" type="button">Oui</button>
											<button class="btn btn-default" type="button">Non</button>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2"><div data-target="#uploadlogoappli"
											data-toggle="modal" class="addfile">
											<div class="up">
												0<span class="sur">/1</span>
											</div>
											<i class="flaticon-plus24"></i> <strong class="bleu">Importez
												votre logo</strong> <br> (Largeur 300px / Hauteur 90px) 
										</div></td>
								</tr>
								<tr>
									<td>Image de fond</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-default" type="button">Oui</button>
											<button class="btn btn-danger" type="button">Non</button>
										</div>
									</td>
								</tr>
								<tr>
									<td>Couleur</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>
								<tr style="display: none">
									<td colspan="2"><div class="addfile">
											<div class="up">
												0<span class="sur">/1</span>
											</div>
											<i class="flaticon-plus24"></i> <strong class="bleu">Importez
												une image de fond</strong> <br> (Largeur 640px / Hauteur 960px)
											
										</div></td>
								</tr>

							</tbody>
						</table>
						</accordion-group> <accordion-group> <accordion-heading>
						Volume
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>
							<tbody>
								<tr style="display: none">
									<td colspan="2"><div class="addfile">
											<div class="up">
												0<span class="sur">/1</span>
											</div>
											<i class="flaticon-plus24"></i> <strong class="bleu">Importez
												une image de fond du volume</strong> <br> (Largeur 640px /
												Hauteur 960px) 
										</div></td>
								</tr>
								<tr>
									<td colspan="2"><table width="100%" cellspacing="0"
											cellpadding="0" border="0">
											<tbody>
												<tr>
													<td>Image de fond</td>
													<td>

														<div class="btn-group btn-group-xs">
															<button class="btn btn-success" type="button">Oui</button>
															<button class="btn btn-default" type="button">Non</button>
														</div>
													</td>
												</tr>
												<tr>
													<td>Fond</td>
													<td><img height="40" class="actifborder"
														src="/images/application/volume/fondvol1.png"> <img
															height="40" class="actifborder"
															src="/images/application/volume/fondvol2.png"> <img
																height="40" class="actifborder"
																src="/images/application/volume/fondvol0.png"> <a
																	class="addfileplus" href=""><i
																		class="flaticon-plus24"></i> <span>Importer</span></a></td>
												</tr>
												<tr>
													<td>Bouton</td>
													<td><img height="40" class="actifborder"
														src="/images/application/volume/btnvol1.png"> <img
															height="40" class="actifborder"
															src="/images/application/volume/btnvol2.png"> <img
																height="40" class=" actifborder"
																src="/images/application/volume/btnvol3.png"> <a
																	class="addfileplus" href=""><i
																		class="flaticon-plus24"></i> <span>Importer</span></a></td>
												</tr>
												<tr>
													<td>Couleurs</td>
													<td><a style="background-color: #F00"
														data-insert-code="1" class="colorPicker carrecolor"
														href="#"><span class="flaticon-pencil43"></span></a> <a
														style="background-color: #09F" data-insert-code="1"
														class="colorPicker carrecolor" href="#"><span
															class="flaticon-pencil43"></span></a></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table>
						</accordion-heading> </accordion-group> <accordion-group> <accordion-heading>
						Boutons
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>

							<tbody>
								<tr>
									<td>Insérer votre bouton play</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-default" type="button">Oui</button>
											<button class="btn btn-danger" type="button">Non</button>
										</div>
									</td>
								</tr>
								<tr style="display: none">
									<td colspan="2"><div class="addfile">
											<div class="up">
												0<span class="sur">/6</span>
											</div>
											<i class="flaticon-plus24"></i> <strong class="bleu">Importez
												votre bouton play</strong> <br> (Largeur 150px / Hauteur 150px)
											
										</div></td>
								</tr>
								<tr>
									<td colspan="2"><strong class="bleu">Choisissez
											un bouton play</strong></td>
								</tr>
								<tr>
									<td colspan="2"><img width="45" class="select actifborder"
										src="/images/application/play-bleublanc.png"> <img
											width="45" class="actifborder"
											src="/images/application/play-roseblanc.png"> <img
												width="45" class="actifborder"
												src="/images/application/play-noirblanc.png"> <img
													width="45" class="actifborder"
													src="/images/application/play-vertblanc.png"> <img
														width="45" class="actifborder"
														src="/images/application/play-orangeblanc.png"> <img
															width="45" class="actifborder"
															src="/images/application/play-rougeblanc.png"><br>
																	<img width="45" class="actifborder"
																	src="/images/application/play-bleublanc2.png"> <img
																		width="45" class="actifborder"
																		src="/images/application/play-roseblanc2.png"> <img
																			width="45" class="actifborder"
																			src="/images/application/play-blancnoir.png"> <img
																				width="45" class="actifborder"
																				src="/images/application/play-vertblanc2.png">
																					<img width="45" class="actifborder"
																					src="/images/application/play-orangeblanc2.png">
																						<img width="45" class="actifborder"
																						src="/images/application/play-rougeblanc2.png">
																							<hr></td>
								</tr>
								<tr>
									<td>Insérer votre bouton stop</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-default" type="button">Oui</button>
											<button class="btn btn-danger" type="button">Non</button>
										</div>
									</td>
								</tr>
								<tr style="display: none;">
									<td colspan="2"><div class="addfile">
											<div class="up">
												0<span class="sur">/6</span>
											</div>
											<i class="flaticon-plus24"></i> <strong class="bleu">Importez
												votre bouton stop</strong> <br> (Largeur 150px / Hauteur 150px)
											
										</div></td>
								</tr>
								<tr>
									<td colspan="2"><strong class="bleu">Choisissez
											un bouton stop</strong></td>
								</tr>
								<tr>
									<td colspan="2"><img width="45" class="select actifborder"
										src="/images/application/stop-bleublanc.png"> <img
											width="45" class="actifborder"
											src="/images/application/stop-roseblanc.png"> <img
												width="45" class="actifborder"
												src="/images/application/stop-noirblanc.png"> <img
													width="45" class="actifborder"
													src="/images/application/stop-vertblanc.png"> <img
														width="45" class="actifborder"
														src="/images/application/stop-orangeblanc.png"> <img
															width="45" class="actifborder"
															src="/images/application/stop-rougeblanc.png"><br>
																	<img width="45" class="actifborder"
																	src="/images/application/stop-bleublanc2.png"> <img
																		width="45" class="actifborder"
																		src="/images/application/stop-roseblanc2.png"> <img
																			width="45" class="actifborder"
																			src="/images/application/stop-blancnoir.png"> <img
																				width="45" class="actifborder"
																				src="/images/application/stop-vertblanc2.png">
																					<img width="45" class="actifborder"
																					src="/images/application/stop-orangeblanc2.png">
																						<img width="45" class="actifborder"
																						src="/images/application/stop-rougeblanc2.png">
																							<hr></td>
								</tr>
								<tr>
									<td>Insérer votre bouton vote +</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-success" type="button">Oui</button>
											<button class="btn btn-default" type="button">Non</button>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2"><div class="addfile">
											<img width="45" style="" class="selectup"
												src="/images/application/votevertplus.png"> <strong
												class="orange">Modifier mon bouton vote +</strong> <br>
													(Largeur 150px / Hauteur 150px)
													<div class="clear"></div>
										</div>
										<hr></td>
								</tr>
								<tr style="display: none">
									<td colspan="2"><img width="45" class="select actifborder"
										src="/images/application/votenoirplus.png"> <img
											width="45" class="actifborder"
											src="/images/application/voteroseplus.png"> <img
												width="45" class="actifborder"
												src="/images/application/votebleuplus.png"> <img
													width="45" class="actifborder"
													src="/images/application/voterougeplus.png"> <img
														width="45" class="actifborder"
														src="/images/application/voteorangeplus.png"> <img
															width="45" class="actifborder"
															src="/images/application/votevertplus.png">
																<hr></td>
								</tr>
								<tr>
									<td>Insérer votre bouton vote -</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-default" type="button">Oui</button>
											<button class="btn btn-danger" type="button">Non</button>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2"><strong class="bleu">Choisissez
											un bouton vote -</strong></td>
								</tr>
								<tr style="display: none">
									<td colspan="2"><div class="addfile">
											<div class="up">
												0<span class="sur">/6</span>
											</div>
											<i class="flaticon-plus24"></i> <strong class="bleu">Importez
												votre bouton vote -</strong> <br> (Largeur 150px / Hauteur
												150px) 
										</div></td>
								</tr>
								<tr>
									<td colspan="2"><img width="45" class="actifborder"
										src="/images/application/votenoirmoins.png"> <img
											width="45" class="actifborder"
											src="/images/application/voterosemoins.png"> <img
												width="45" class="actifborder"
												src="/images/application/votebleumoins.png"> <img
													width="45" class="actifborder"
													src="/images/application/voterougemoins.png"> <img
														width="45" class="actifborder"
														src="/images/application/voteorangemoins.png"> <img
															width="45" class="actifborder"
															src="/images/application/votevertmoins.png"></td>
								</tr>
							</tbody>
						</table>
						</accordion-group> <accordion-group> <accordion-heading>
						Dédicaces
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>
							<tbody>
								<tr>
									<td>Couleur du fond</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>
								<tr>
									<td>Couleur du pseudo</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>
								<tr>
									<td>Couleur de la dédicace</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>
								<tr>
									<td>Couleur des traits</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>
							</tbody>
						</table>
						</accordion-group> <accordion-group> <accordion-heading>
						Radio
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>
							<tbody>
								<tr>
									<td>Couleur artiste</td>
									<td>
									<input colorpicker="hex" type="text" ng-model="conf.style.track.author" ng-change="changeStyle('track',conf.style.track.author,'author')"/>
									</td>
								</tr>
								<tr>
									<td>Couleur titre</td>
									<td>
									<input colorpicker="hex" type="text" ng-model="conf.style.track.title" ng-change="changeStyle('track',conf.style.track.title,'title')"/>
									</td>
								</tr>
								<tr>
									<td>Couleur A venir</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>
								<tr>
									<td>Couleur Titre Emission</td>
									<td>
										<input colorpicker="hex" type="text" ng-model="conf.style.program.title" ng-change="changeStyle('program',conf.style.program.title,'title')"/>
									</td>
								</tr>
								<tr>
									<td>Couleur du partage</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>

								<tr>
									<td>Facebook</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-success" type="button">Activer</button>
											<button class="btn btn-default" type="button">Désactiver</button>
										</div>
									</td>
								</tr>
								<tr>
									<td>Twitter</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-success" type="button">Activer</button>
											<button class="btn btn-default" type="button">Désactiver</button>
										</div>
									</td>
								</tr>

								<tr>
									<td>Google plus</td>
									<td>
										<div class="btn-group btn-group-xs">
											<button class="btn btn-success" type="button">Activer</button>
											<button class="btn btn-default" type="button">Désactiver</button>
										</div>
									</td>
								</tr>



							</tbody>
						</table>
						</accordion-group> <accordion-group> <accordion-heading>
						Podcasts
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>
							<tbody>
								<tr>
									<td>Couleur du fond</td>
									<td>
									<input colorpicker="hex" type="text" ng-model="conf.style.podcast.background" ng-change="changeStyle('podcast',conf.style.podcast.background,'','background-color')"/>
									</td>
								</tr>

								<tr>
									<td>Couleur du titre</td>
									<td>
									<input colorpicker="hex" type="text" ng-model="conf.style.podcast.title" ng-change="changeStyle('podcast',conf.style.podcast.title,'title')"/>
									</td>
								</tr>
								<tr>
									<td>Couleur de la durée</td>
									<td>
									<input colorpicker="hex" type="text" ng-model="conf.style.podcast.duration" ng-change="changeStyle('podcast',conf.style.podcast.duration,'duration')"/>
									</td>
								</tr>

								<tr>
									<td>Couleur des traits</td>
									<td>
									<input colorpicker="hex" type="text" ng-model="conf.style.podcast.border" ng-change="changeStyle('podcast',conf.style.podcast.border,'','border-color')"/>
									</td>
								</tr>
							</tbody>
						</table>
						</accordion-group> <accordion-group> <accordion-heading>
						News
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>
							<tbody>
								<tr>
									<td>Couleur du fond</td>
									<td>
									<input colorpicker="hex" type="text" ng-model="conf.style.news.background" ng-change="changeStyle('news',conf.style.news.background,'background-color')"/>
									</td>
								</tr>

								<tr>
									<td>Couleur du titre</td>
									<td>
									<input colorpicker="hex" type="text" ng-model="conf.style.news.title" ng-change="changeStyle('news',conf.style.news.title,'title')"/>
									</td>
								</tr>
								<tr>
									<td>Couleur du texte</td>
									<td>
									<input colorpicker="hex" type="text" ng-model="conf.style.news.text" ng-change="changeStyle('news',conf.style.news.text,'','color')"/>
									</td>
								</tr>

								<tr>
									<td>Couleur des traits</td>
									<td><a data-insert-code="1" class="colorPicker bloccolor"
										href="#"> <span class="flaticon-pencil43"></span>
									</a></td>
								</tr>

							</tbody>
						</table>
						</accordion-group> <accordion-group> <accordion-heading>
						Description
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading>
						<table>
							<tbody>
								<tr>
									<td colspan="2">Description</td>
								</tr>
								<tr>
									<td colspan="2"><textarea class="form-control" rows="2"
											cols="" name=""></textarea></td>
								</tr>
								<tr>
									<td colspan="2">Mots clés</td>
								</tr>
								<tr>
									<td colspan="2"><input class="form-control"> <font
											size="1"></font></td>
								</tr>

							</tbody>
						</table>
						</accordion-group> <accordion-group> <accordion-heading>
						Description
						<div class="reload-prefs">
							<a href=""><span>par défaut</span> <i
								class="flaticon-return1"></i></a>
						</div>
						</accordion-heading> </accordion-group>
						<div class="suivant">
							<a href="">Valider ma personnalisation</a>
						</div>
						</accordion>



					</div>

					<div class="structuremobile">
						<style>
.phone-col {
	padding: 0;
}

.phone-col.no-case .phone-case {
	background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
	float: none;
	margin: 0;
	width: 100%;
}

.phone-col.no-case .phone-case>div {
	height: 100%;
	width: 100%;
}

.phone-col.no-case .phone-case>div .cp_embed_iframe {
	height: 100%;
	position: static;
	width: 100% !important;
}

.phone-case {
	background: url("<c:url value="/pages/resources/images/phone-case.png"/>")
		no-repeat scroll right top rgba(0, 0, 0, 0);
	float: right;
	height: 810px;
	margin-left: 20px;
	position: relative;
	width: 380px;
	z-index: 1;
}

.phone-case a {
	opacity: 1;
}

.phone-case .cp_embed_iframe {
	height: 568px;
	left: 37px;
	position: absolute;
	top: 104px;
	width: 320px !important;
}

@media not all , only screen and (min--moz-device-pixel-ratio: 1.3) , not all ,
		only screen and (min-resolution: 124dpi) {
	.phone-case {
		background-image: url("<c:url value="/pages/resources/images/phone-case@2x.png "/>"
			);
		background-size: 365px 792px;
	}
}
</style>
						<div class="phone-case">
							<div>
								<iframe height="568" frameborder="0"
									style="width: 100%; overflow: hidden;"
									class="cp_embed_iframe undefined" allowfullscreen="true"
									allowtransparency="true" scrolling="no"
									src="<c:url value="/pages/resources/mobile_app/index.html"/>"
									id="cp_embed_JsHjf"></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
-- count: 1000
-- admins count: 506
-- users count: 504
INSERT INTO users(first_name, last_name, login, password, role)
VALUES
    ('User','Userov','user','$2a$10$DyYdxVoodpNnfoeP89mkDe08sK.NzTq1XVXxSXlyaPJ/3Xe/OP3Z6','USER'), -- password: 1234
    ('Admin','Adminov','admin','$2a$10$DyYdxVoodpNnfoeP89mkDe08sK.NzTq1XVXxSXlyaPJ/3Xe/OP3Z6','ADMIN'), -- password: 1234
-- new
    ('Yolane','Glassard','Yolane_Glassard@epam.com','$2a$10$fchDIjM74raa15Dz.zILrOwUaH7O4AYAvmEaaCc5v3xorhEl5V642','ADMIN'),-- qwerty
    ('Denys','Ceschini','Denys_Ceschini@epam.com','$2a$10$/YwtBBB3hVCpIffhJ7xAsudaMaoCgxIcV/z/lr61TIW0Proyl8Ndm','USER'),--1234
    ('Tiertza','Gauch','Tiertza_Gauch@epam.com','$2a$10$ylOn9B/W96Bq8tj6jvs4rOpPZXPpSRfeQWt2dfGNWfCnVB1PWcLo2','ADMIN'),--somepassowrd
    ('Margarita','Birchall','Margarita_Birchall@epam.com','$2a$10$wYK5FRKAGir7N7C9U8nbjer2802ZPuvxrZmFgn6RYgaVcCU/uXPdC','ADMIN'),--qwerty
    ('Gunar','Bonanno','Gunar_Bonanno@epam.com','$2a$10$v0HYQCKorzz7Wq6tSy6.5e2Zt0xAZwMNX8QQg1x2tZ5fiQSd1S/vu','USER'),--1234
    ('Elke','Mardle','Elke_Mardle@epam.com','$2a$10$ZzvkyG5NB.ghsiCgLP9k1uW8l8FoeqLOyaAZglI3nxCJOt.QylUKK','ADMIN'),--strong_value@$
    ('Clevie','Swepstone','Clevie_Swepstone@epam.com','$2a$10$cSFiFqgM6GL.OBNWot2Zy.v60mSTOIa2tH4immU9kEKcFSgRs8TR.','USER'),--somepassowrd
    ('Phillip','Huckin','Phillip_Huckin@epam.com','$2a$10$BK8vHBgzVmH9P8n2hq92.O6G1w8iA871EW65/oVRH3auGW.iVi7yG','ADMIN'),--strong_value@$
    ('Philip','Thorsby','Philip_Thorsby@epam.com','$2a$10$hkk0BlWeUGPhimi/A7veo.LRxoxFpnUYFx6SRWhTL5h4F3a7Bkt9W','USER'),--somepassowrd
    ('Katti','Bigham','Katti_Bigham@epam.com','$2a$10$GHuGwdPNjRtmX9lQ/Z29D.uIROFJXgj.J.9/TtSulBD9Sb7Hb3mPK','USER'),--somepassowrd
    ('Aleda','Chaff','Aleda_Chaff@epam.com','$2a$10$9exIZDD0JXAPuDTYtgKnDu4vbgHTo99rz7IMfQ5Xed5217PDKE2DS','USER'),--lastone
    ('Thekla','Capstake','Thekla_Capstake@epam.com','$2a$10$DCACNaQr4nEnzTv7/K3KaOsYrTemTCZCDLkpO0l8Rok4yWftj3ggC','USER'),--strong_value@$
    ('Arni','Heugh','Arni_Heugh@epam.com','$2a$10$3vMrRP4VdwrDb/dgSfvC7epQQWX.MBESBCxVS7wr3Kl67u8NkWcAa','ADMIN'),--lastone
    ('Quincey','Birchenough','Quincey_Birchenough@epam.com','$2a$10$DSxYkADBrNft0HArxWZM3.uiNZO3vx4bi2CsfzYIYGB36xXyxEliW','USER'),--qwerty
    ('Thain','Fri','Thain_Fri@epam.com','$2a$10$HjhJ6wKBpNvbGVbLWTLTXuZ9tbkj/j8GYRmAPR5VYOuSfsgLQIyVi','USER'),--qwerty
    ('Conroy','Cowdray','Conroy_Cowdray@epam.com','$2a$10$M./Vgd4cGbQyBckWPUdWCOB//OyVZB0EFa4uUtkWiMta1w7Il3t8K','ADMIN'),--somepassowrd
    ('Hildy','Boutellier','Hildy_Boutellier@epam.com','$2a$10$jai5bt2A76m30qys3HE3c.Pxx7m2G6WT7hx7Lh80XoMOOFtR52N82','ADMIN'),--1234
    ('Peri','Byfield','Peri_Byfield@epam.com','$2a$10$dmFLbLB2h03Cj.cStuiKXuTtv734tsaajZlGLLHMG3GAA8GgkKr8O','ADMIN'),--lastone
    ('Brittany','Kingcott','Brittany_Kingcott@epam.com','$2a$10$qdr79nVOiu9WbCISMLgu5.ZnGlHewV7dWxVLD3JywWh6k0Cqu7NKG','ADMIN'),--1234
    ('Shawn','Tweed','Shawn_Tweed@epam.com','$2a$10$bMXjS5nuge5zaR1c/gW7oeDdxSNVNEqBsqC8nge8wg59oswrPmEue','ADMIN'),--strong_value@$
    ('Bree','Dowe','Bree_Dowe@epam.com','$2a$10$z5LFSq.unajJNuVbzod4lu465bdKkm7FGn3L.waNDZVPhj..EYlOq','USER'),--1234
    ('Athena','Baudry','Athena_Baudry@epam.com','$2a$10$tr4iODKroZY2USzpiwLILexkuh2x9c.w9jCXKwFEMzdWgaZfWHoFO','USER'),--1234
    ('Amii','MacAllaster','Amii_MacAllaster@epam.com','$2a$10$2gUGAHJMtC2aKFUZZTtotOrVcEl6z7nolZMz3l5w1TMvzzGWtSbHu','ADMIN'),--qwerty
    ('Nikaniki','Loadwick','Nikaniki_Loadwick@epam.com','$2a$10$jAyenz91YiC7Z3jAX1z96O5MxAF4dCRe/l4Q.H60BY156DVif4LRC','ADMIN'),--1234
    ('Elwira','Siggins','Elwira_Siggins@epam.com','$2a$10$9RQjMUx7DLnp86WkaKzaMeKxBh5zQPfTeUr/kkzTmjH8R/T4SMcZa','USER'),--strong_value@$
    ('Cairistiona','Darell','Cairistiona_Darell@epam.com','$2a$10$7gKwuXy6SF2t6UVN3DCPp.A3oCfN0Vs/7O2bWgzMOTOITEUXnRcka','ADMIN'),--strong_value@$
    ('Ody','Hallam','Ody_Hallam@epam.com','$2a$10$xDxuTEOa9ofTUF2TKkLiyObquPqHd0mHJim4oX.YMizJXIjLJBo0q','USER'),--lastone
    ('Dominic','Brealey','Dominic_Brealey@epam.com','$2a$10$rQ/TBYC74jCoFRd4qS6osOi3ZgbY/I53quOIzVoi5T9Z21LnWGfFG','ADMIN'),--strong_value@$
    ('Vittoria','Brewitt','Vittoria_Brewitt@epam.com','$2a$10$KqWPN3u/.wsSAiuMbEwILOU4NOvYQvJieStONZB1XVNZPf/3fOphu','ADMIN'),--qwerty
    ('Stephani','Howlett','Stephani_Howlett@epam.com','$2a$10$j8dJcdDMoiKNltDoQ0Yetu7AIjPktxATPOJD/zFPQTwX5NfN44ttO','ADMIN'),--lastone
    ('Gena','Ugoni','Gena_Ugoni@epam.com','$2a$10$V46pTUndzZdOx7mUFabKlevsqf4XkDSVHp.OvP3NOZHqO3LbRMgnC','ADMIN'),--qwerty
    ('Jessy','Vergine','Jessy_Vergine@epam.com','$2a$10$1wLXNzAUXRLWmG7qvou.E.FfcewRstQgahY0ZUvmuEEL8Aa33UpXK','ADMIN'),--strong_value@$
    ('Fancy','Andrew','Fancy_Andrew@epam.com','$2a$10$tnLscMc1iTW05dbelbBGqup5fKeO/4Abua92VfNhM6KOqCZDA8LhW','ADMIN'),--qwerty
    ('Rodolphe','Circuit','Rodolphe_Circuit@epam.com','$2a$10$e85u4fh.iFTpzhd2dJ2Np.gvb4bQyYggdqT5Cz1DHLzvvldlIErK.','ADMIN'),--somepassowrd
    ('Ginny','Passman','Ginny_Passman@epam.com','$2a$10$DyuYO.HCLBS/38ivwtFsIOW7klFUczuEdquAha/RaoldvGuxEyasm','ADMIN'),--somepassowrd
    ('Teresina','Winspare','Teresina_Winspare@epam.com','$2a$10$PHIGvJXCtqSertrdal1wnuUO96BinOywQ/HHqK5yhKVJNyOl.pFAW','USER'),--1234
    ('Englebert','Verchambre','Englebert_Verchambre@epam.com','$2a$10$JlipbP1fo2rJKcIzF3wEn.PhIFQxTyubGUgCS7U8omqCCqaf8AYI.','ADMIN'),--1234
    ('Errol','Coppen','Errol_Coppen@epam.com','$2a$10$U78/UgwpPvxQZB9HOI./buA/WcyPA8UBPG4Et038YGLEK3ugZ.L3.','ADMIN'),--lastone
    ('Louisette','Plackstone','Louisette_Plackstone@epam.com','$2a$10$2XusHWvWZqLS3HvS9Q5IF.h/KigUoG128nyhEEimiDxrDYmvqyysq','ADMIN'),--lastone
    ('Loralyn','Abbots','Loralyn_Abbots@epam.com','$2a$10$0cgkhUACLKrtT..HEDhqEuyxbOakXVt.eWF3Jaj7ORFsI19mXwjqO','ADMIN'),--qwerty
    ('Lurette','Puxley','Lurette_Puxley@epam.com','$2a$10$LEEfA2WPw7izd76CXsLtjOTqUpCK3OhCVjGr8yRvi/B0AWRkL/5hS','ADMIN'),--strong_value@$
    ('Fancy','Di Giacomettino','Fancy_Di Giacomettino@epam.com','$2a$10$.GBaHS/y1SULSw.NL7NN3efi.54oaPuPbkemch7yz2W4F.y3YjV1i','USER'),--lastone
    ('Clarette','Need','Clarette_Need@epam.com','$2a$10$0lDjgWDei07eeyiFK/XF5uWA5D1/wQy.ckhgYwH.XHYVtwiem/tmi','ADMIN'),--somepassowrd
    ('Benjamen','Hairsine','Benjamen_Hairsine@epam.com','$2a$10$1NhowVG/6Cy/JXYwzxeN/O67UMbdeEIykfNt53JuZpy7XlhvkNIvS','ADMIN'),--1234
    ('Dionis','Gosnall','Dionis_Gosnall@epam.com','$2a$10$x23wZgJJk/Ny2JwYzowL9O0TxKinSfX5GKxvHU.wMPEgIrk8Tn2Y2','ADMIN'),--lastone
    ('Alayne','Pickering','Alayne_Pickering@epam.com','$2a$10$.qXOch9EPW2ABlc2fiLzPuztIIlu37CpImdIxFyDb7xsoynXDexny','USER'),--qwerty
    ('Jocelyn','Valdes','Jocelyn_Valdes@epam.com','$2a$10$LnB9J6G4XDN9k9ho./qqEOyzPvKTboDcri6psz4YyH3G5d/kn0cu2','USER'),--1234
    ('Lotty','Meigh','Lotty_Meigh@epam.com','$2a$10$dB.Bdrl5kNKT3IkYSY9pJOmfqJvDQu1gmAyGNrVnZhst0lB3veKGW','ADMIN'),--lastone
    ('Mortie','Krysiak','Mortie_Krysiak@epam.com','$2a$10$sd9xZBDLlKEBobmGe1jfIe5pkWd9vRH/JxdSItjThc06UzPiE4OsO','USER'),--qwerty
    ('Brooke','Oglesbee','Brooke_Oglesbee@epam.com','$2a$10$GvJLS4XanLthJGkIN5LtjunOo0UqT5iC7JdjzZseycwJJlfUFydE.','ADMIN'),--lastone
    ('Ramon','Romagnosi','Ramon_Romagnosi@epam.com','$2a$10$ZrXvTJdExNoFQplgGLPOGOmKQwJ.uBReC5U/lsox47FL00DpmBZ3q','USER'),--qwerty
    ('Maribeth','McClory','Maribeth_McClory@epam.com','$2a$10$HJzkLwbqNdmWsYffqLMmSuS6Ug1EsbMcJKpoEs9dSfmAoQp/i/EFm','USER'),--qwerty
    ('Flo','Jovovic','Flo_Jovovic@epam.com','$2a$10$y1hOgY02SIxQ4WT/stM8Z.vpicTjMnDROxp2fNS.9EpUjTTgWXdfO','USER'),--1234
    ('Amalie','Midden','Amalie_Midden@epam.com','$2a$10$OMI8klHtMRxQ7CqrzGRMD.M3nKys/DZlyfGUEEWL9aBRlIabgSiFu','USER'),--1234
    ('Mattie','Padula','Mattie_Padula@epam.com','$2a$10$w9dRNLizJbSVGDZVUVqM/ukEIhsqgBX5TpAVsYqsjprfd5Fnmzq8i','USER'),--lastone
    ('Dyann','Roistone','Dyann_Roistone@epam.com','$2a$10$caTs3pR6LmHVw3Np19zoiuum9BUsYYRoVUv9u1yqKsoQ2IaPvmqxy','ADMIN'),--somepassowrd
    ('Deeann','Petrelli','Deeann_Petrelli@epam.com','$2a$10$MjgA6Z/hD47JoCywxD6wLuMRDman67Re58yx/e2AHpD2JOmq6uSIe','ADMIN'),--lastone
    ('Lyndy','Wenham','Lyndy_Wenham@epam.com','$2a$10$Qo.MVGoBPy7Vf1/okKL16OoXJ7OXbqGzYTpIHHCIPPPkI/DoJrJGi','ADMIN'),--lastone
    ('Davey','Iwanicki','Davey_Iwanicki@epam.com','$2a$10$DTnAJZ0.4227sJs6wLd5uOihvQZdoeymKifAsRevHGcsWbWarvicC','ADMIN'),--qwerty
    ('Toma','Nansom','Toma_Nansom@epam.com','$2a$10$t3vGXJiKwQlrZQB7mH14Mukt9uSg2dm6y2KA1IBy7jyC9zFs1lVzO','USER'),--lastone
    ('Tana','Trenam','Tana_Trenam@epam.com','$2a$10$EMFpz4a/abBTuCs51rYA7eBqaQX0fUZLRZjMIS8cgfeG5Tm3iM7DO','USER'),--strong_value@$
    ('Lorelei','Hinemoor','Lorelei_Hinemoor@epam.com','$2a$10$CzEd44QL9mnwKZW.xK//m.z8k1CVSCjVZXdnjjkT9XZhgEGjhJLQi','USER'),--1234
    ('Robin','Daubney','Robin_Daubney@epam.com','$2a$10$pFHdxLciYloZ/7O5CqKNh.v7W2oxUpAJQTB0tTi8nSLFU673UOvzq','USER'),--somepassowrd
    ('Aimil','Paule','Aimil_Paule@epam.com','$2a$10$K63Ywp8XLaxSiKvCcaahlOeudfHa4v7r0DsKLnTzJg9nJCMmgLXZ2','USER'),--qwerty
    ('Gearard','De Mattia','Gearard_De Mattia@epam.com','$2a$10$fLvAtkw2YehrAY9u0RXtwO5sf7U5lKIzCcq3xzSRItQEk6DQf9ApG','ADMIN'),--qwerty
    ('Abey','Jakubowski','Abey_Jakubowski@epam.com','$2a$10$NeNmd80iWvFMRXI5DDVt7uNCo3FYDFoyAA/QNcn9bRV6MxIvWDjUq','USER'),--lastone
    ('Griswold','McKoy','Griswold_McKoy@epam.com','$2a$10$HpwGcDVrR61n8SMncrqE9u6B5LHct45.1YzoY3DAjhaRpk9yfF/Qi','ADMIN'),--qwerty
    ('Emalia','Gallaher','Emalia_Gallaher@epam.com','$2a$10$Woaap7YOYzzWl0Gv7quXA.jgm/aPwPRillLIlTp5VeO7gRWoCH5CC','USER'),--qwerty
    ('Hyacinthie','Talloe','Hyacinthie_Talloe@epam.com','$2a$10$4if8d/LVtTHJZ8DJVGcwW.DA0Af.jCqJ7a8Su3/scYf0N/fwY.HR2','USER'),--lastone
    ('Conroy','Westley','Conroy_Westley@epam.com','$2a$10$PJ4tEHxP2Jc2kbwN5QLndeWgG5nERCbpM3e4UqySPfEzn8cQgTdRm','USER'),--lastone
    ('Yvonne','Yerson','Yvonne_Yerson@epam.com','$2a$10$DhgWbUMDUkFOAxDwnk5lBO7xQLU7F/vfnkVBab7EfoOiIy5szdxiW','USER'),--somepassowrd
    ('Sibeal','Towson','Sibeal_Towson@epam.com','$2a$10$ELnRhQaJRxnA2zXFBDAcIeeNPPU9OsvcJPJbbwWaGKussDlO60b.y','USER'),--lastone
    ('Tori','Instrell','Tori_Instrell@epam.com','$2a$10$Xta0cV2EGMyUlEvU/4ZCyOGhSy2CW6rv99wdsf.TFc1oojhv9tYve','ADMIN'),--somepassowrd
    ('Tallie','Harnott','Tallie_Harnott@epam.com','$2a$10$gMGpnphtNcyWKzyLm55LHuQ1/iTHL/YthzzT.zIpzS7X21nSniyIK','USER'),--lastone
    ('Meghann','Delacoste','Meghann_Delacoste@epam.com','$2a$10$zyTtM3AaqvhtZKqJcKkWbus4LtD/TciIE/BPMbmGuvwTR1x5WkUy.','USER'),--strong_value@$
    ('Tymon','Bardwall','Tymon_Bardwall@epam.com','$2a$10$/N1yVQ2gt6hu.zOuHaFo0OMV7W4z8cSpZWQmgpkRG0oOz4PZkbCF2','USER'),--strong_value@$
    ('Tara','Leachman','Tara_Leachman@epam.com','$2a$10$D1RV9I3lQSgKzSCTCzOwXOB/.7dQC1ZZpOc38HpxmSmR.08sYtWXm','USER'),--qwerty
    ('Bondy','Iacabucci','Bondy_Iacabucci@epam.com','$2a$10$IgIDDPrBUFIfxhi9fyB4JuqlNBePOcKOBdBjbEOBU1jWjTni64hBO','USER'),--somepassowrd
    ('Suzanne','Fury','Suzanne_Fury@epam.com','$2a$10$mjeTtW83WhoG.yJ4T.nT1e4rkV5p/qjFO6CHac2YuAIjw42QUSPNO','ADMIN'),--strong_value@$
    ('Teddie','Ondrak','Teddie_Ondrak@epam.com','$2a$10$yxJKV9Uq.rPsiD0MxvtO/uTiSK6KTqXx9WiIMPsjHeLVDkcMsB4n.','USER'),--somepassowrd
    ('Fidelity','Sellner','Fidelity_Sellner@epam.com','$2a$10$IXWs0Z3EEqYnGQjQ06EthOKFmDrvP7SzX4kh.EHpPKbbDes2PD8fu','USER'),--strong_value@$
    ('Alf','Laughnan','Alf_Laughnan@epam.com','$2a$10$cO6ly.rxuqR7SDzAMOhmeO04YOuhOcv7wHuNaDcK6QTfLICKRQm9C','USER'),--1234
    ('Von','Bushnell','Von_Bushnell@epam.com','$2a$10$7Bu1OSimk5XT/ehPOkCtLuLsFALYVOcZaFJMRU3OvN4z/1JiBjLDq','USER'),--qwerty
    ('Marmaduke','Leynagh','Marmaduke_Leynagh@epam.com','$2a$10$vGRZuE/ykfcbxCxFgQPCFuEEXpDzY.hvnDhpsOuuJCrVbxOUbutpu','USER'),--lastone
    ('Erwin','Roles','Erwin_Roles@epam.com','$2a$10$wK/Lr0SNyy2ijOFlXjSbJu2H7aSLHbExYUl1hkbsHGe/5OaWOLpGq','ADMIN'),--lastone
    ('Sampson','Duncklee','Sampson_Duncklee@epam.com','$2a$10$KVVIPFI9.aMMSMoCAJy/QucTSYvyoU7RXw2eAOWCi.1CdB0IlK51a','USER'),--strong_value@$
    ('Hersch','Brumble','Hersch_Brumble@epam.com','$2a$10$I.UNRPzWcpY3fwWI78lj9eJoHh4snsc6ncVfX.QLBr8LZ9b7ZCGWO','USER'),--strong_value@$
    ('Leland','Letherbury','Leland_Letherbury@epam.com','$2a$10$Xhi11hhbT9mLctNlTRtaDe.COsucrd1IHq8LufXJ8FTr4v3yHmxRi','ADMIN'),--lastone
    ('Isidore','Davidovicz','Isidore_Davidovicz@epam.com','$2a$10$wuFr4l2njRwAeK8XTPSkSe26ZW5cXpnXYfzcynq9.9EFO.BI00YfC','ADMIN'),--qwerty
    ('Seward','Hartshorne','Seward_Hartshorne@epam.com','$2a$10$j/e.2rDXejvvX3JwhGzkMOhOwttH1a83fnV4vmOcGLsFVQelo3tOm','ADMIN'),--strong_value@$
    ('Harriott','Longworth','Harriott_Longworth@epam.com','$2a$10$oQ9IIlCJAn9GMDPc9txJG.yqdA8R/ibiIOTLexe17ZGcqCR3hOR1K','ADMIN'),--strong_value@$
    ('Sarette','Playford','Sarette_Playford@epam.com','$2a$10$GFubZgeu0RLTc43GvzrTz.sxxITgF7IUjIdWZB5tw/LGgD1xUKQ0m','USER'),--somepassowrd
    ('Alexandre','Dyble','Alexandre_Dyble@epam.com','$2a$10$ustPA4zOcJPmD.xNkHHOHen8ohZITd9oxoGQGi.0.nhENVXTAq7.a','ADMIN'),--qwerty
    ('Lea','Pavett','Lea_Pavett@epam.com','$2a$10$bQzSrcFF/Vvn9NJcgBVoOe1TSB2GqY07VxXpYNKih16obEVPOFo8W','USER'),--somepassowrd
    ('Annelise','Blethin','Annelise_Blethin@epam.com','$2a$10$2ehsRhXq2wirmjGFxXxGQOh1BpY1qSc7MxKCMnhXkC3bq7hsSRmIC','USER'),--1234
    ('Donall','Agus','Donall_Agus@epam.com','$2a$10$jlD1uFS.3C6pcO.NVYwgxOk45v6.ckk5TXmQ3zInWVBrtMJPnG/Im','ADMIN'),--strong_value@$
    ('Murdock','Mennithorp','Murdock_Mennithorp@epam.com','$2a$10$fhUbXyDoVfl2FXYaBy4ccumkt84rDRyGYJxX2sBrLT3Ihu/bITAH2','ADMIN'),--somepassowrd
    ('Ranna','Conan','Ranna_Conan@epam.com','$2a$10$Mbu3nFvKCi4cPbpZE23iKOvvSowwwCVeWkgOqwAriMQdghkj000Qq','ADMIN'),--somepassowrd
    ('Marius','Woolam','Marius_Woolam@epam.com','$2a$10$dzobUUNtHdBM98aZU8SnjOTNZzBmRU5wHNh6YDCE5F5iCS33Xvwnq','ADMIN'),--1234
    ('Martica','Elstow','Martica_Elstow@epam.com','$2a$10$69ypxER35Ewz3cKGt1RdJ.NWOZ6gv3M.KCRzZzuAHh.Y/JKGBhLae','ADMIN'),--qwerty
    ('Rasla','Allred','Rasla_Allred@epam.com','$2a$10$eu8p8JshSsGazF2XSc8VRe5x/GGneq8qoNm6qosJryaCJsKHr6.9C','USER'),--1234
    ('Sheff','Rosencrantz','Sheff_Rosencrantz@epam.com','$2a$10$Ndupj7RrKLlLmK61LrZR2emzynMgFFtgNXEKT7Bygds5gLXWN.JpO','USER'),--strong_value@$
    ('Cori','Teeney','Cori_Teeney@epam.com','$2a$10$Yw2GzZsY1yH163.UEApBOeUmvewvDORgo9h522Jbhe30pEHXhJQxa','ADMIN'),--somepassowrd
    ('Rosalie','Taffe','Rosalie_Taffe@epam.com','$2a$10$/Mdjhb76U6E5SoQqFOFfReJCa1cb8obIToz3ymHw5a7hhyNd9sj4G','ADMIN'),--somepassowrd
    ('Jaymee','Bottrell','Jaymee_Bottrell@epam.com','$2a$10$JxrhAB5x4svvgHO2qnfyxu9eJjvlTYpmuQMxuDRmbeEaIlI0zJjdi','USER'),--lastone
    ('Glori','Etherson','Glori_Etherson@epam.com','$2a$10$J4.QkWiFdo6mQxag2wSx9utZvxKpGOFhja845kDjxtPbxIFP.FYI2','USER'),--qwerty
    ('Chico','Wisby','Chico_Wisby@epam.com','$2a$10$4WH91hlKW3czKTX9kIh5le6nF1nF/aMeO83jjutdx.1V4iff4cN0y','USER'),--1234
    ('Rochester','Laverenz','Rochester_Laverenz@epam.com','$2a$10$rWdAdQSL0b67GYKN2cyqmuQWqwOzBUeK8FWMIg5cQPBbh2wToEoYS','ADMIN'),--1234
    ('Zaria','Thorburn','Zaria_Thorburn@epam.com','$2a$10$tDBp4as9rnQr.DxGzA.wwOYnHcPiepgWG2Bl/HquVZnHhe5WblQ5.','ADMIN'),--lastone
    ('Janis','Worsnup','Janis_Worsnup@epam.com','$2a$10$R6KQnqQRzXqCWowFUBwlEu48d6hf8rTHDfc3VdRxeXF9L0kvYsTNK','ADMIN'),--lastone
    ('Wynnie','Strother','Wynnie_Strother@epam.com','$2a$10$Z25/pph/eD0so7lry7G3f.6yG3aRWGrnd8lk3UamFpy4YtmFwfy8i','ADMIN'),--1234
    ('Allie','Thyer','Allie_Thyer@epam.com','$2a$10$qWM0Bdpn8MBYszvV3XGoPeKgejI92MWSwKu.hQvXQPk3bD79AxNZK','USER'),--qwerty
    ('Aldous','Raiment','Aldous_Raiment@epam.com','$2a$10$vmPhwr55BvDd1ktl8/jviuyhIrhtuLriPEvFc0j6.MLPyyXdtrYsa','USER'),--1234
    ('Wilie','Tourle','Wilie_Tourle@epam.com','$2a$10$nzoJTPkW3UyRDmHOeaF6keZfk560JVfdsq2Md156zJS206ZPKlN2y','USER'),--lastone
    ('Kris','Shere','Kris_Shere@epam.com','$2a$10$TtbwrVLjhpOVgcATNUIHuuDZATCDSS1H3X01Z5b7aPVWxA53bL76K','ADMIN'),--lastone
    ('Rudiger','Petrusch','Rudiger_Petrusch@epam.com','$2a$10$/i3/vbor05hGexasag1VtOcpQRRuuD6ZNAwUofXQGT7HLwGOmclnS','USER'),--strong_value@$
    ('Robbie','Crees','Robbie_Crees@epam.com','$2a$10$81CLqiPL6oNC9XxO3MgyReJJhXlyxk1f4ZGyL5Wf1snCS8jPtu1Ua','ADMIN'),--lastone
    ('Noby','Farfull','Noby_Farfull@epam.com','$2a$10$ZNCoAhZ68x/SxCLgTcpFUur8KenO32lwNIH7aekhOwH9T4dTp4mD6','USER'),--somepassowrd
    ('Beltran','Whiteland','Beltran_Whiteland@epam.com','$2a$10$LTNQmK61HYRb3ayegSuFKePg5zH1/t2A9uFZsBrNXKXJj2M3BBwp6','ADMIN'),--strong_value@$
    ('Isaak','Allday','Isaak_Allday@epam.com','$2a$10$W9f174WcPhhwsDvVPSbvyeCG9bKzCtW8Fye/UCMU.G7CdGIHTou.a','ADMIN'),--strong_value@$
    ('Jennilee','McGuggy','Jennilee_McGuggy@epam.com','$2a$10$hJlm9ZohCdQ9sinZ/tCsG.Db9W5cOpr2LJJVCV2cnQmIlaerj75dO','USER'),--lastone
    ('Berte','Ivanshintsev','Berte_Ivanshintsev@epam.com','$2a$10$fibqjnof4MtJjRFPDbdfx.2Q6k4HKsi016a3v/natBHckLbCPaph6','USER'),--qwerty
    ('Jacobo','MacSporran','Jacobo_MacSporran@epam.com','$2a$10$zt07Z2bwzOBGWT7hy2fYg.zuDCzhdr4gFmiOgq5WCrKashR0cidze','USER'),--qwerty
    ('Charleen','Derrington','Charleen_Derrington@epam.com','$2a$10$e/lfsRgmTluRnezoWomUFexVE7LV/8E4V5Hc0.R3Rokpt97xKpc1.','ADMIN'),--qwerty
    ('Eamon','Nanelli','Eamon_Nanelli@epam.com','$2a$10$Cel9GZEqIZhwl24Sljp.WOXz01IOnTby4yw.vF9E2jmU32d7dcxxi','ADMIN'),--qwerty
    ('Jarrad','Enoksson','Jarrad_Enoksson@epam.com','$2a$10$plzxz6YaTnrqjeeZVHRBZe1WMT/V6nm4mXnXLSY5udoGACA09VnBu','USER'),--strong_value@$
    ('Gilly','OLuby','Gilly_OLuby@epam.com','$2a$10$KtOp5jS8IF8y5q8WynlIV.QAd760CMBhRX4Ag7u90XGVfEPFHpeRK','ADMIN'),--lastone
    ('Franzen','Haddick','Franzen_Haddick@epam.com','$2a$10$5nJL2Gjlo8XYWbbVn.S47eziIsWnEhgdvp9/.WaE7s4R1BihFollm','USER'),--strong_value@$
    ('Derry','Hiner','Derry_Hiner@epam.com','$2a$10$tv9OPZfEIXUEI6WqkuTZru4alxyRxDQVYVuc8MJyuyzIE7BeE8e8K','ADMIN'),--somepassowrd
    ('Gregoire','Francecione','Gregoire_Francecione@epam.com','$2a$10$PjwoPDTayqH7riOPvfBdOeJYa4Gz2E0pZfSkh15nkHDkLTjVCmkWC','USER'),--qwerty
    ('Aldous','Christescu','Aldous_Christescu@epam.com','$2a$10$Hxn7Sc9.8VVQrXAMTPE/We7JG8k6hXDUd9JgQdsQZQ4p8MILV6cvm','USER'),--strong_value@$
    ('Darcy','Wreford','Darcy_Wreford@epam.com','$2a$10$5CPzqtbTxtOnlcAjsGAmBOtquwaRwdmmdRXTJWg0oRNowQjKY3tzC','ADMIN'),--1234
    ('Roldan','Muzzullo','Roldan_Muzzullo@epam.com','$2a$10$9c219acbH1eEE9aTusnZ9uwmHeDBhBMBY6iSfVEuFEDGqn4SX6mZK','ADMIN'),--1234
    ('Merla','Tincknell','Merla_Tincknell@epam.com','$2a$10$aBsj3uFW3/S8Jz58JMeol.4OIeTWbs8fB3GYcfh91nBXI8ek4UScO','USER'),--1234
    ('Merna','Jedrasik','Merna_Jedrasik@epam.com','$2a$10$mk1qFOwPViVt01TzYk0sl.KOzAmb6IbSveVy8xGg1n81AosKAszei','ADMIN'),--somepassowrd
    ('Paige','Cronshaw','Paige_Cronshaw@epam.com','$2a$10$h33vms0OHGaaKCnL9VWypu6.vmCj6MIJi6TYeGTRbyKfKoW6tcUe6','ADMIN'),--lastone
    ('Yorgos','Wathey','Yorgos_Wathey@epam.com','$2a$10$WcmNTGwawEwDh2aLgOkoqezDyk6FbG6O0AGxuGnKYFbTwn84JAeEO','USER'),--strong_value@$
    ('Camilla','Eynald','Camilla_Eynald@epam.com','$2a$10$oXqQ1ayz.c/G4tnvNesit.lsYhRAsXxStWDmOeGozuHnocD0oeDca','ADMIN'),--1234
    ('Giorgi','Bader','Giorgi_Bader@epam.com','$2a$10$bTk2OtSpgGVuAMj5vMPZ9OATmVANKwq7i10s6W5tI5JusH/cQ4BWO','USER'),--somepassowrd
    ('Costanza','Rosevear','Costanza_Rosevear@epam.com','$2a$10$ITCgNQQJRzNvM5UzBZVXS.klMo.qANchY/pNPm2n.E6xxwRbS3kfa','ADMIN'),--strong_value@$
    ('Raphaela','Gavrielly','Raphaela_Gavrielly@epam.com','$2a$10$Bhk50EK/gi1W9Ulk0nqpiO7vxyY2Yw/XuglmbF3.3PyabIoDZOSSS','ADMIN'),--somepassowrd
    ('Rosalie','Longmire','Rosalie_Longmire@epam.com','$2a$10$ivbn1Hu.0yZpSw6fk6mZYO5ev23PxlfZ78TZqdSC.GNtoNF23/TwW','USER'),--strong_value@$
    ('Alasdair','Hargitt','Alasdair_Hargitt@epam.com','$2a$10$yH2GbHakzFPMUQhqwHxofOgi010kAnsAQm8G0.3Id0AGCVbVOSOky','ADMIN'),--qwerty
    ('Lindsey','Maymond','Lindsey_Maymond@epam.com','$2a$10$rVPLyXuXCWmnV1nmyYCt/.nr2OSih9aJL6xN8GzMHcD8FrZHP4wk.','USER'),--lastone
    ('Gustavus','Heigold','Gustavus_Heigold@epam.com','$2a$10$8xgScd41RbBjMlc4L.nsMuwhZWCb03Sz4ReZCd1AsNburB67.kqNa','USER'),--somepassowrd
    ('Filberto','Sprionghall','Filberto_Sprionghall@epam.com','$2a$10$NYmKW7dPWJ/8x.UDBtKI6ucVNDuWQeUdwlvC9nsF6f/px4r.ucUKS','USER'),--1234
    ('Esmeralda','Massow','Esmeralda_Massow@epam.com','$2a$10$FHqxI2TEFIrBu2B0kwtQ2eFvQlVbhodT8p.7FKDHf4J/ZLGr/PZIO','ADMIN'),--somepassowrd
    ('Melania','Piburn','Melania_Piburn@epam.com','$2a$10$GCKWFaifjknbHbhfUU2q2uKLG9QbcVT.7GAkS6fRVpZygsuwp9mAS','USER'),--1234
    ('Florida','Kime','Florida_Kime@epam.com','$2a$10$QFbCjtshaNmrQt3RE.lys.ipLqoXAHe6l0tVE/263oOCLe68lMllW','ADMIN'),--1234
    ('Flo','Goulbourn','Flo_Goulbourn@epam.com','$2a$10$3XMF70Suni3wIcjYQJVrreHAF49c6le8fE.2hWnxn1fwTpyg9GNDm','ADMIN'),--somepassowrd
    ('Erik','Bertram','Erik_Bertram@epam.com','$2a$10$TQ3./jXqioxLJ81PNlkZPOSle55kmb1O0oVl9rpZmjBM.zrdQbldm','ADMIN'),--strong_value@$
    ('Sterling','Sedgmond','Sterling_Sedgmond@epam.com','$2a$10$.BFZvLOvE62.KViXb2r5pu7GdPZySsUPCmOnbGXRZJz/kClG8sx3a','USER'),--strong_value@$
    ('Lynnell','Bunny','Lynnell_Bunny@epam.com','$2a$10$jnUnjBY0My/Q5TfNtKQEKuB5Ksw3MOC1Hvfiz0o4SBoB5OznDgsr6','USER'),--strong_value@$
    ('Isidro','Deny','Isidro_Deny@epam.com','$2a$10$bW7qbMXdq8hxtQ/IvVFKcufcobym/BSNteVUIzyEzoPJDZI5uQj1e','USER'),--1234
    ('Saudra','Yakuntsov','Saudra_Yakuntsov@epam.com','$2a$10$59PGblCCy96sKYCjSraWOOmuU/izCtUiGw7YPbrYULuRZLWlSnKdO','ADMIN'),--strong_value@$
    ('Erminie','Stoneley','Erminie_Stoneley@epam.com','$2a$10$VyhPdVDg.PCqG/8PiCNyT.N6xxZjmwg8cD/Q2EExa7uu8/uA5kh3u','USER'),--qwerty
    ('Flore','Van der Veldt','Flore_Van der Veldt@epam.com','$2a$10$WfgdXxz5.1mS2PMWEr0SPe0yedxQxLrse3gkByXP5om9BgRCFAu8m','USER'),--lastone
    ('Selene','Farfalameev','Selene_Farfalameev@epam.com','$2a$10$Sxw4QDIAzdcWxena8VyCQODE40M4UJEoetcULwj9uvMXcoAMfC53a','ADMIN'),--qwerty
    ('Giovanna','Ragot','Giovanna_Ragot@epam.com','$2a$10$2AuWkHt1f5xDXjK4tPyyLusSkxvITYQn9vs5Kpj4ccuBXUGtrXHu.','USER'),--1234
    ('Rochell','Sondon','Rochell_Sondon@epam.com','$2a$10$aJe99Zb1XCxLmTxZRZFeVet35ioA.uHQmC5..MJbN34As/qMWgKV.','ADMIN'),--1234
    ('Charlot','Del Dello','Charlot_Del Dello@epam.com','$2a$10$9e7rAwMU9IF3L2GkOiUBAeU9trK9mG9ukvXlj2YjnlZhAYkEeNKle','ADMIN'),--lastone
    ('Bren','McClenaghan','Bren_McClenaghan@epam.com','$2a$10$7We7oBDxdLoIrWg8enzwp.ENOiB1EjrAGZsVgE8bGO9To7P0ihD72','ADMIN'),--strong_value@$
    ('Elysha','Killich','Elysha_Killich@epam.com','$2a$10$ErUjjfIoIYBYL1cm4tSnpOXMcYQ9uTC.OMzN0z9cxtFbX5xE7Xphy','USER'),--lastone
    ('Ron','Trundell','Ron_Trundell@epam.com','$2a$10$cK0KIen1j5yJ9VxmCWpBXOowNK2mr0jpbj8fnuV/VRBgf5LbbQRgG','ADMIN'),--1234
    ('Ellary','Zanneli','Ellary_Zanneli@epam.com','$2a$10$h1AK40plc9u5/pUHYSf0ROH66jaTaNdSMpnYtgdHgjyREOjzQ1PLG','ADMIN'),--somepassowrd
    ('Marie-ann','Abramof','Marie-ann_Abramof@epam.com','$2a$10$2aMnIwnUG8nTZwC/EIajsekzvbSPlLoaM8v9I/CUeL/bhIP6BqglO','USER'),--lastone
    ('Peria','Tomasek','Peria_Tomasek@epam.com','$2a$10$vYS8mKMBXQ2xCysAR1P7F.z1VYVsPNk05K2l29W1IW21VYbGywfk6','ADMIN'),--qwerty
    ('Lynne','Entwisle','Lynne_Entwisle@epam.com','$2a$10$83WFRdpa3hgqqbeEUVQEJeG0vARd5lO/tKHj5AMteoNWI.PB.ro8m','USER'),--qwerty
    ('Coleen','Baress','Coleen_Baress@epam.com','$2a$10$nMfkCVasjsdQZ57CreFT5.ywaevhnINticqsdWiQYshZWGyyo7mJO','ADMIN'),--strong_value@$
    ('Lorri','Attlee','Lorri_Attlee@epam.com','$2a$10$fISaC/uL/0XzHR84Jw1RweOc75M55nB74O1qePmQdL4PfF4w5Dk5S','USER'),--1234
    ('Alonso','Hache','Alonso_Hache@epam.com','$2a$10$Y9KArZenCI/x.HCjP2Xyiu4Tl5zzKnrUEIxPEq9avMwqE28WFE4SW','ADMIN'),--strong_value@$
    ('Clarissa','Manclark','Clarissa_Manclark@epam.com','$2a$10$GXIYt6wh5rZSWkKDJsoKpu9J9EzbW2ycW1LM7JWG5zz0EIJDZ2VIG','USER'),--qwerty
    ('Eric','Bohler','Eric_Bohler@epam.com','$2a$10$dHvQo7AMnUWpDiQbyu8lAOsaxDesQQrQgJo31RyajccFe5C5T1pPi','ADMIN'),--qwerty
    ('Ezechiel','Hofler','Ezechiel_Hofler@epam.com','$2a$10$LrBL3EwN0rcTZ60PnxR25.BPRpiG/YstFietYOtw8DqEtsA.IkDN6','USER'),--lastone
    ('Barry','Voss','Barry_Voss@epam.com','$2a$10$4Q8bI3OgW06gZXCWE1umuOc07Bg/aOnK5kpU9.bSOnqgjGZR6kbbK','ADMIN'),--somepassowrd
    ('Wendie','Pluvier','Wendie_Pluvier@epam.com','$2a$10$MNj.kH1M85zUOHs2ewPV4.5FAlnDOhPyJldtMxu1gmKgNyk7LJQfi','ADMIN'),--1234
    ('Udale','Bradder','Udale_Bradder@epam.com','$2a$10$9W9jjEzpXrpkMcgNFdQS.u6RTljnLXYYaa0JfC4q5IOpyYhJgwUqC','USER'),--qwerty
    ('Andreas','Meindl','Andreas_Meindl@epam.com','$2a$10$G/4Snaf5KoMmKoQbhKF3AOdrdsbXG1aaKux6VF7kpmpUT9iHw0AgK','ADMIN'),--lastone
    ('Hanny','Grasha','Hanny_Grasha@epam.com','$2a$10$cYJ6SQZnes4MN9mQdaAKzu5qAVBuNqLkluJ59zpdezID0PChE4WC2','USER'),--somepassowrd
    ('Eamon','Chandler','Eamon_Chandler@epam.com','$2a$10$sYwtRvcvGNqNPAFnE167lOAqnne4ueA/GjvRNPs73yHmN.V86ANkm','USER'),--qwerty
    ('Linet','Sieb','Linet_Sieb@epam.com','$2a$10$69GcbzqiUTZYzb0g6W.VeO3z4rT3NabcLcGMDGAm3SvFQu1arxDFa','USER'),--strong_value@$
    ('Kirsti','Darko','Kirsti_Darko@epam.com','$2a$10$mJlzO2Ze/NDwMMkXJSe8cOsOHlA7MUKoukXavnzWGvRfanf7inXJ2','USER'),--1234
    ('Derick','Rockall','Derick_Rockall@epam.com','$2a$10$DbU.5eP4XTM2d4QrcOip/.av/QS11JLj7DbnkDgqS.aw/SjFOpkW2','USER'),--1234
    ('Elizabet','Mechem','Elizabet_Mechem@epam.com','$2a$10$vr1Z4LOL5rQKZsbmRytcX./i8k1azmGkPSOimJJVvx/mV/DRAJOF2','ADMIN'),--qwerty
    ('Corrine','Coverdill','Corrine_Coverdill@epam.com','$2a$10$soN5rm26E0cHV4rc2y9nOueOA3nVVJuD/GB2wmGSWDgkhK3ihVQRm','USER'),--lastone
    ('Gwendolen','Danser','Gwendolen_Danser@epam.com','$2a$10$Y8MYAc6LSAruOYh4NvEo7.AlXAUFko5XwRNep3q3ki.feDP9772f2','ADMIN'),--1234
    ('Lora','Degoe','Lora_Degoe@epam.com','$2a$10$nJFu8AFRcLGfGzMg67NVG.roZy0jgess/5PtI.tqJMbvcY1aiLBVK','ADMIN'),--strong_value@$
    ('Kalindi','Bamlett','Kalindi_Bamlett@epam.com','$2a$10$vjn0UYAQgEQQxWb7YiqhtObpY5dBNKsALgTKj6M5NDCPJ2h/Vciri','ADMIN'),--qwerty
    ('Tabina','Orpyne','Tabina_Orpyne@epam.com','$2a$10$zeurGBBtOHgrmiCgg1NqvO0LPij/SlyRZBEKWvABkdtuVreR.ICIW','ADMIN'),--strong_value@$
    ('Tami','Eastridge','Tami_Eastridge@epam.com','$2a$10$tjDgedxZkW60fIkGp5TNVe8gNte9b1.0NFOQljMYVgLS9.0jSN42S','USER'),--lastone
    ('Harlie','Sushams','Harlie_Sushams@epam.com','$2a$10$ykHtLpHVJswycsYTzdCgbeX7/9uTefnfE7yKk4dmxQhKdN5qYZE42','ADMIN'),--1234
    ('Bartram','Surgenor','Bartram_Surgenor@epam.com','$2a$10$b8ltUlg4IFJ7nFuPe4MCaOeV4jcn2orK3A4kX8s0FfmRVokLmpBQi','ADMIN'),--somepassowrd
    ('Shaun','Jolliff','Shaun_Jolliff@epam.com','$2a$10$cUeYP2mc1fQ7F4137etXa.X1cue0nxwPaysr9q7Kl37R.ts.GErdy','USER'),--1234
    ('Emanuele','Buller','Emanuele_Buller@epam.com','$2a$10$ceRLH8CfjkrmLmSXqjdny.pBjtMrxWOe68ccLAU6oZ6sXhKzeCX2S','USER'),--1234
    ('Carmine','Sergeaunt','Carmine_Sergeaunt@epam.com','$2a$10$jtaBbGYuvFzMMmjI18ZCuu/WHmFLzEuHNnCAoKiKys6N5K3s8WxHq','ADMIN'),--1234
    ('Allina','Gunton','Allina_Gunton@epam.com','$2a$10$BmxF8ebTR4Ld0/byuuGba.BJu/zUqdmlMpV/1NlzqAsinNQAIocKW','USER'),--somepassowrd
    ('Rosalind','Maffione','Rosalind_Maffione@epam.com','$2a$10$A0zPPwWCVpY7D0G3u6FM8et5OdHrwpTlFhzBmxe2cnZVcW6oVg5uS','ADMIN'),--strong_value@$
    ('Lotty','Heathcoat','Lotty_Heathcoat@epam.com','$2a$10$PPn7whQ4l8qluAxSwHRb6uQaqKBndztJKdYTOCDA/P8BVTMu/WMDa','ADMIN'),--1234
    ('Leopold','Creeboe','Leopold_Creeboe@epam.com','$2a$10$Rmv67UznZ/FtWEfkGyjnyuP1buyT/bVG9k3ZK7NTRe8xiEVY2a1UO','ADMIN'),--1234
    ('Rikki','Corps','Rikki_Corps@epam.com','$2a$10$2ieiKQRSZ1JFCQLB/uuxaO9LpGonhYL///aiBrhBkodsfOEMifQRu','USER'),--qwerty
    ('Rosanne','Guice','Rosanne_Guice@epam.com','$2a$10$i/ubZAnos54Ua0QTEM..cOC5cl8ADahDIO6u9cids.sQfQ4hO0cqm','ADMIN'),--qwerty
    ('Dominique','Glawsop','Dominique_Glawsop@epam.com','$2a$10$f9ychdqVFowta7lCjYed0ecMXdljZgNnHXPv9l4o.SkCOEeKqPQMW','USER'),--lastone
    ('Beckie','Ridd','Beckie_Ridd@epam.com','$2a$10$GbvVxPPyZgM50VrQg60EkeHgxT2pkRddSzgLORvEZS9zUNKxxzoDK','USER'),--lastone
    ('Carmel','Gearty','Carmel_Gearty@epam.com','$2a$10$mC6fqiH1uRb2jNlVo0fVlerm3BW8NZjXR9mBJnx/6HjUQMSoTRgha','ADMIN'),--1234
    ('Tynan','Tregonna','Tynan_Tregonna@epam.com','$2a$10$YBsVQ8hSwiDc/96ruEG5vOiVEiIkJ2TOase0ekiGHmj9CiRbkDvJi','ADMIN'),--lastone
    ('Emanuel','Brunt','Emanuel_Brunt@epam.com','$2a$10$.YD9aOW/W5BM5oepj8uBfuszhKyzZX./.keUl85a.0vT0jZtD1mD.','USER'),--somepassowrd
    ('Field','Earngy','Field_Earngy@epam.com','$2a$10$8ERqMy/NvLs3CE7onqxbe.PE1TMVIAxHc2bESavnbomHYoyatzuPa','ADMIN'),--somepassowrd
    ('Hunter','Zorener','Hunter_Zorener@epam.com','$2a$10$vDFKAa/HWpTc.zuSrpUUWO3FfCSOdO.u2.gYyylGaUeL6NUYgfA82','USER'),--qwerty
    ('Montgomery','Rebeiro','Montgomery_Rebeiro@epam.com','$2a$10$xqhSUDMGFo.943gs2bdQiOp8daZLaVxm0AXzTmS.eu.lD6o8zkRXC','ADMIN'),--lastone
    ('Asher','Brydson','Asher_Brydson@epam.com','$2a$10$dQE.Yi6HxGjyOH/T3mMtduy6gBDPkbeej93cP7HW6pTfR7IoKInTO','USER'),--qwerty
    ('Rudyard','Lamboll','Rudyard_Lamboll@epam.com','$2a$10$s56xnb.WACOU4MDZwQ6beOIqBjM2JLbYXS29MaBVioDKKJaozVRQi','USER'),--lastone
    ('Roger','Tabourier','Roger_Tabourier@epam.com','$2a$10$Cs5hpMjP0995TWJxq74oDu.24hl0BhOuEmNmJlUfgtlmEW7cvGbHy','ADMIN'),--1234
    ('Jose','Swarbrigg','Jose_Swarbrigg@epam.com','$2a$10$86MryM4qjL7ueNWuM.VVaedqYDBixwqJoAOWJ3dOAmGIV9Zn5HFN.','USER'),--qwerty
    ('Albert','Burnsyde','Albert_Burnsyde@epam.com','$2a$10$izSSd2nE/MnpHnxLp0PQiuyjVsr7zRjpeu8zAhKhNOaf2eGO/xeba','ADMIN'),--somepassowrd
    ('Fidelia','Sowden','Fidelia_Sowden@epam.com','$2a$10$Xpt8ZFWaZv7.nk6rZqcxBukMklVPrj2c8AIGQ8oddimFrub58ZM3O','ADMIN'),--strong_value@$
    ('Nana','Newstead','Nana_Newstead@epam.com','$2a$10$sP.AtLThZkHDMKclCBDCNOx7GBIB46wFpRKsX.kGbhV.Of48.Tpam','ADMIN'),--somepassowrd
    ('Hobey','Steinson','Hobey_Steinson@epam.com','$2a$10$3lsxoLYnLeODvKXpB83hWebxccHUpcub5B8Peaq/xcNArtUG51OQG','ADMIN'),--strong_value@$
    ('Patrice','Scroxton','Patrice_Scroxton@epam.com','$2a$10$x5xVA6Uf5HhFevzm0q7kRerrtlSc1PvSdlxowNhMmKi/wPj6zXsE2','USER'),--1234
    ('Larissa','Duddell','Larissa_Duddell@epam.com','$2a$10$6DGItUjnnGYLoIbd7YMUMO0.BO.p/CYB6cpjYLZ1hCsnaYQ5z9VIm','ADMIN'),--1234
    ('Essy','Middiff','Essy_Middiff@epam.com','$2a$10$VRMfHvVaOv3dhkiIH7kMmO3e9/o0qfHQIZZ50IaWq3rBDafQbyAli','USER'),--somepassowrd
    ('Julina','Spadeck','Julina_Spadeck@epam.com','$2a$10$6oEAfjfqK/fqcXMK0nEgZuL/Fx/64T6wwnHrYk5gbWyr1rruo991u','USER'),--strong_value@$
    ('Magdalen','Conlaund','Magdalen_Conlaund@epam.com','$2a$10$htkkjfdheq7reMSiWbsAreb.jjD4jRA3WRoyfYwjbrGXztRj6rf7u','USER'),--1234
    ('Zsa zsa','Noquet','Zsa zsa_Noquet@epam.com','$2a$10$B3cfg37uKqeKPe7nfsx3ouBS9YzdRAi9Nz4RA.MVIuKtMpCMEw0jy','USER'),--1234
    ('Kordula','Gallelli','Kordula_Gallelli@epam.com','$2a$10$KI8D6lU4crqsQirI8DY8m.dRDzXV4JjFe1lq4CNvHZj9XCcwVHDWO','ADMIN'),--qwerty
    ('Valerie','Djurevic','Valerie_Djurevic@epam.com','$2a$10$gquZ.ZxuDncsQK8WUqWG7uSTZZOpCI5z/PV3xSRSdKKkbPUI1H7SK','ADMIN'),--1234
    ('Ervin','Baumadier','Ervin_Baumadier@epam.com','$2a$10$u9W7i3Ij63oepHkG95i5R.KxS.VSESdwMWxEc.Q9EMFJuMFetPkve','USER'),--qwerty
    ('Thorn','Tame','Thorn_Tame@epam.com','$2a$10$F3AWFBTtWbtuHjPuAN5zC.mezxDolqc9QtbUZxmX3fC/Bb7jXt70O','ADMIN'),--1234
    ('Yuri','Costen','Yuri_Costen@epam.com','$2a$10$YlQrQk70l1R4pAxtIQIoMuFSqE53/nrg2dLud42U/H3.skqqo2dA6','USER'),--somepassowrd
    ('Alvera','Hyrons','Alvera_Hyrons@epam.com','$2a$10$Xr43v1RVIExFm1mxQyKZ/OvXb1l8hqWMIWidbtevwTz2EUgCnoFJS','USER'),--strong_value@$
    ('Raffaello','Peddel','Raffaello_Peddel@epam.com','$2a$10$.hEMqr/IrWfAuXK6MTrHPeM6miNpR84k.4gndOvgfA3krNBa0HHne','USER'),--lastone
    ('Maria','McLeman','Maria_McLeman@epam.com','$2a$10$ToU9NgLATQxsmLcS9uy4K.kR9Yj2o.emI.vg7gtqhVHVV8y7ogHzu','ADMIN'),--strong_value@$
    ('Gretal','McClinton','Gretal_McClinton@epam.com','$2a$10$joVLpX.s6fkC44Ryn7LVJuFk.8QIZyxpksUxhAovte1ieowrgxm3C','USER'),--1234
    ('Bride','Brogini','Bride_Brogini@epam.com','$2a$10$bDDIJdgqEkM3UOp.uQuTVuvFUbv5AHVXoHvLK7Toa8snptHJyuAcu','USER'),--lastone
    ('Fabien','Weald','Fabien_Weald@epam.com','$2a$10$Rp9jgjyswvzddrAiSe3xiOfkwkIJzA3oT6cBMyINFeHDPajVbF5a.','USER'),--1234
    ('Ninnette','Corbyn','Ninnette_Corbyn@epam.com','$2a$10$wxTx1tIvxsLCsuj9lJxKF.86W0TQageO8yhaViXXw7reKrLlj1jDO','ADMIN'),--1234
    ('Patrizio','Berrick','Patrizio_Berrick@epam.com','$2a$10$ndK6aC2Er/MpAdjxByg04uBg.DTCfu7xzKHq.3tp0Hv8yc7HKGKBC','ADMIN'),--1234
    ('Gardy','Wand','Gardy_Wand@epam.com','$2a$10$NlAitSL1kFNRmtg5KvLIKe2v0ux5hRvUvxu2wBlsYnd7NfjpsIUgK','USER'),--somepassowrd
    ('Sallyanne','Harsum','Sallyanne_Harsum@epam.com','$2a$10$mKQlV.4Qk9VHNVUAJ/PnF.hpuoOJZVr47a.7syZ0/mcTaZOT3c5ai','ADMIN'),--1234
    ('Adah','Pennycook','Adah_Pennycook@epam.com','$2a$10$XdCT.gGVAxGck4Deqc05e.jZtMM6OBZ7t2qRrmFH/ekzaeNCkuMR2','USER'),--qwerty
    ('Lance','Brister','Lance_Brister@epam.com','$2a$10$1oIf33IquPktEqzqFaT/3unpcSrHj0lav1nPCEffWWUbQm54/1FAa','ADMIN'),--1234
    ('Corinne','Fernier','Corinne_Fernier@epam.com','$2a$10$raCsboGuL3pRCCU6JQtiX.ELSCby2CBMq4kOXBm8jJMk.mG47NyR.','ADMIN'),--somepassowrd
    ('Jamison','Reinert','Jamison_Reinert@epam.com','$2a$10$spTAEK55i28/E9Fu27p6O.TYwXPN22hb28c.3LE3jDx./FVF9gtqS','ADMIN'),--somepassowrd
    ('Avictor','Pantlin','Avictor_Pantlin@epam.com','$2a$10$DtwfMz6142zksyIsE358pus4JyannC8ugvX9wWz3Ik7uNAr5D/Elq','USER'),--lastone
    ('Querida','Guillou','Querida_Guillou@epam.com','$2a$10$8Z8xdMGsn7LrYk.LzA33LODxQvgqY7gQoSPim3010Ueggk4B8UCHy','ADMIN'),--lastone
    ('Yorgos','Barnewell','Yorgos_Barnewell@epam.com','$2a$10$HF66ljiLtvTKbHvx3L2hUu8plXRhhBOcgG8NU3ZYatBs1sU6F5hVG','USER'),--qwerty
    ('Fredi','Limpertz','Fredi_Limpertz@epam.com','$2a$10$668DEos2u5ubkfKm5jj68.gJvg1ipLaIXXNBKhANjLB1zkfbwhkwe','USER'),--lastone
    ('Edgard','Benbow','Edgard_Benbow@epam.com','$2a$10$NKOOMiz1W8TSprqUXogACuRVejM/bXsM2qdH5fuBEuBomc95oDyuK','USER'),--strong_value@$
    ('Zenia','Tejero','Zenia_Tejero@epam.com','$2a$10$WNtPoI/WRe6YlcZ4u68FbOuro06fQ04xgXrJkqwKzDg7qWAH44osS','ADMIN'),--somepassowrd
    ('Gabriel','Gravatt','Gabriel_Gravatt@epam.com','$2a$10$bWQH9okC2dE.dXPd9uHsJ.UdshRTI5pzDOot1K81k7qHheG0nntFy','ADMIN'),--1234
    ('Stanislaus','Readwood','Stanislaus_Readwood@epam.com','$2a$10$C64GEKAsLs/xM4nO5f4H9eIOBDFYBQ3FHZps6t.SaQNX7cD8uyn32','USER'),--strong_value@$
    ('Ozzy','Pagan','Ozzy_Pagan@epam.com','$2a$10$rCe6ExY3i4LOsn3wYq26PuoODAizU9y5w53AY..6BMxC25UdLK32q','USER'),--strong_value@$
    ('Mozes','Plumer','Mozes_Plumer@epam.com','$2a$10$ZX/Mrmmebqdy78kaJHkZbeEMZWa8yowcxGqeiz9MdeWcHpFT/Jova','ADMIN'),--strong_value@$
    ('Romola','Edgars','Romola_Edgars@epam.com','$2a$10$ESUT.W5ncJi8EXIY8rJAju03CgrIb0poOHLkv2faKpgP0wyRBKs7i','ADMIN'),--lastone
    ('Rafaello','Durrell','Rafaello_Durrell@epam.com','$2a$10$.1NLtSkaaVSIcZdS6BMBQ.KOgWmQ4EU1a3HD8SfkS0J5wyCXeSLja','USER'),--lastone
    ('Nikaniki','Hubbis','Nikaniki_Hubbis@epam.com','$2a$10$Ew2VzJE.UC/1VK7pSCaTi.uoB9xnOgCqjcjbPjIjpPsa69IAuX.Xu','USER'),--strong_value@$
    ('Celisse','Crosi','Celisse_Crosi@epam.com','$2a$10$OBOORJtaYVKOhW3w0aGhM.Qo.AQATAdi6WoYAfOzX8azuG5EaoeK6','USER'),--1234
    ('Bernadene','Foulstone','Bernadene_Foulstone@epam.com','$2a$10$r.fBSwI7R7WAc/Ekkyzvo.otb9ZpC4saN7qHMg6HrCvTs7OccyuXS','ADMIN'),--strong_value@$
    ('Galven','Dungay','Galven_Dungay@epam.com','$2a$10$gD1Ufi02.fX9nx1N.K8ZiOOErhXkAsdnZH9a/w4hwfn9NKDLI5qFe','USER'),--lastone
    ('Schuyler','Grinval','Schuyler_Grinval@epam.com','$2a$10$1OUauIUZg5LRXb29szFemeilqmRAAd85HherqL8NqjE0xYFgIBmHy','USER'),--1234
    ('Calhoun','Piola','Calhoun_Piola@epam.com','$2a$10$64poyZHaKJkLZAYOKcoh/uCrIu3Sq3BADuuRoZTrv9hSlZLBZSiLW','ADMIN'),--somepassowrd
    ('Albertine','Keppie','Albertine_Keppie@epam.com','$2a$10$VnSE9UPPszISFO2PValp7.yI/iFFP2j4ZjKdf8aOPmIeU/.q2xu9i','USER'),--qwerty
    ('Anatola','Tesoe','Anatola_Tesoe@epam.com','$2a$10$np2eIHxF0ON1a65.p4fkeu4fDhNFhJvHA3S1.pIXUwfF67sKFk3qu','ADMIN'),--1234
    ('Carol-jean','Rumbellow','Carol-jean_Rumbellow@epam.com','$2a$10$OukO9032YHx/szaiQiYsWuye22a/7eV3GR6BaYgKjEuZ9da2o6uR6','USER'),--1234
    ('Fawne','Feighry','Fawne_Feighry@epam.com','$2a$10$FXQAPYW1icC/LB.ttC3sVOC.xAsMBmLjTSEn0JmaaXvVEFIN0a0xW','ADMIN'),--somepassowrd
    ('Cristin','Newtown','Cristin_Newtown@epam.com','$2a$10$Gp2iTin8bo0aSTBzzlR2ue1dqNrHWx8es.vo/YwSd/bHBqtlFqCqC','USER'),--qwerty
    ('Denny','Spensley','Denny_Spensley@epam.com','$2a$10$LW3piWiNdeLbqX9g6wf/ze9/hqOm.4O7S1N1FFlA3NEOh9MFGPPaW','USER'),--1234
    ('Petey','Goodie','Petey_Goodie@epam.com','$2a$10$u49Wryn8/7nKrmDbLk2SuetS6b52nrZgQSf82BcJzyOhiHZLg9/5G','ADMIN'),--somepassowrd
    ('Vanya','Paike','Vanya_Paike@epam.com','$2a$10$xwVzB4/iCfOdNoSEeRvVuOYhetRdD0FG4myWOpKp2RX43xVlYHIPa','ADMIN'),--1234
    ('Marybelle','Jochanany','Marybelle_Jochanany@epam.com','$2a$10$8mK3iPozw43auI9WXUhjXO2UF11hvYcaNm3bx3qznWOVF5kUKgvRq','USER'),--strong_value@$
    ('Boot','Jakoviljevic','Boot_Jakoviljevic@epam.com','$2a$10$iK0aBkjeO3KmkM3mb5juPeaAFrA89R1gGZxVgcrtUQu0hWcvJVgI.','USER'),--strong_value@$
    ('Whitaker','Collen','Whitaker_Collen@epam.com','$2a$10$qlHay/eCTzp2UfbnfoSVreOBVOZzhDEduvR77CxdMPBFw4yo14Eo.','ADMIN'),--qwerty
    ('Harriott','Wheadon','Harriott_Wheadon@epam.com','$2a$10$seSyBPI2..xYDiilE2Qwcu4OfuvVRLLrm5hbhz03kay0V5qGORyny','ADMIN'),--strong_value@$
    ('Jessie','Kitchinghan','Jessie_Kitchinghan@epam.com','$2a$10$e6NBpVL7dC/SjPl7Srg4sO3yTigkZiw19n6NAUI77OUIT.HJcuBse','ADMIN'),--somepassowrd
    ('Laraine','Gronaver','Laraine_Gronaver@epam.com','$2a$10$V7uUsfByd/9fBWzTrOOE7uPdO7DyAZz16.D1TBpVMVWLTMldCcy3u','USER'),--1234
    ('Gayelord','Amiranda','Gayelord_Amiranda@epam.com','$2a$10$Ur27olyKnIgeH.qCgLMTIeI5U7fDXZO2VUapHudaE29HySlWRDEdC','USER'),--strong_value@$
    ('Tawsha','Vaune','Tawsha_Vaune@epam.com','$2a$10$3CiCUfRbn3i03pFsXwvs5udoLreLjST3dxorXlrHlbKPPS98//05q','ADMIN'),--1234
    ('Robinia','Eagell','Robinia_Eagell@epam.com','$2a$10$577YeqXm..f72BDBmKLEze30nJeZThFeDSgAXxN9JY57g8uneGCzC','USER'),--lastone
    ('Johan','Elt','Johan_Elt@epam.com','$2a$10$qCaiWuk8bjURw1q3/5yZ/uILuoGkXzH42RBNDYEGEhXK7v0LFovaG','ADMIN'),--1234
    ('Electra','Lamprecht','Electra_Lamprecht@epam.com','$2a$10$cdw6bG7x28F75zNjNYH2G.bBZYatB2IocG22f9aQHcrjXfuer8Us2','ADMIN'),--somepassowrd
    ('Guy','Di Pietro','Guy_Di Pietro@epam.com','$2a$10$nueUfY1Dd1I1hOaMkjggCeyvR.pTFt81.ZWmOU7qyXd/2Uz3Dmf22','ADMIN'),--strong_value@$
    ('Tymothy','Stampfer','Tymothy_Stampfer@epam.com','$2a$10$A8yxIbJv3LpHmjxfYT/PieLpqlnCUjkKYH5715wp3l.wTJFftPJ4u','USER'),--qwerty
    ('Rayner','Skuce','Rayner_Skuce@epam.com','$2a$10$y3IhbwTYJSLIFQMVs/iAHecihL9O6nucSr7kOFLPFYiDGihvW7uM.','USER'),--strong_value@$
    ('Niles','Lared','Niles_Lared@epam.com','$2a$10$vImsmjkLXK.gt3C5/f0Cm.0Sn0j4FIY.XfhyQPr1dRxJb6xTsKWvC','ADMIN'),--strong_value@$
    ('Lou','Doey','Lou_Doey@epam.com','$2a$10$s.MXIXSrPHBxADSUSsKgKOBu6Aft2XVCTM3Sb6RiAAA/s4KsrGOrS','USER'),--1234
    ('Dunn','Cuffley','Dunn_Cuffley@epam.com','$2a$10$S3lsKTyb7TCXOY.o9Dp5QOBBK/dsocwZum/O4DE48iiPxz1VOru5y','ADMIN'),--somepassowrd
    ('Abagail','Castagno','Abagail_Castagno@epam.com','$2a$10$TS95S5bPmeIBVImLz/CN0OhcjiXAP2OgKSiH8ozDYNGn2rakH01U2','ADMIN'),--lastone
    ('Laura','Ells','Laura_Ells@epam.com','$2a$10$p0kygMwr111slQVTVmgh0eQ1sfSiK38XLDULQUmvQb5mg4svc0sG.','USER'),--lastone
    ('Leticia','Paddon','Leticia_Paddon@epam.com','$2a$10$oMqJejEz9RY0Y9KD.Ebdd.0uxZH7xQpDrYqhxYNoB08N8HCmPR7RC','USER'),--strong_value@$
    ('Hersch','Gorrissen','Hersch_Gorrissen@epam.com','$2a$10$49uq/LaX2Ec9xZP6XWtGoOLSAEpuyc6HZIYvOA9VvWetm70c49wIa','ADMIN'),--lastone
    ('Lynde','Keohane','Lynde_Keohane@epam.com','$2a$10$wwJNg1ibQii9.6L.JFDPdeI3ncgd.SD88bkEJW7fBIdx3LZi2bRTS','USER'),--qwerty
    ('Marika','MacCracken','Marika_MacCracken@epam.com','$2a$10$BZwxQiMMHx6uk9rD16EEHeXn5zTS0GionMlpcva5q4dBynPm8GbSS','USER'),--qwerty
    ('Lisha','Andre','Lisha_Andre@epam.com','$2a$10$8B4eTmJC9O4jovq1BtphsOBjPcg9PeFvVa9IVXciN0TIlOiYGvZvS','USER'),--strong_value@$
    ('Allayne','Streeting','Allayne_Streeting@epam.com','$2a$10$.1vbZ8Q0SNAw4J2kuKVcfOpk/M5pHDxiDLabNKWL5q.NjLkLL/5W.','USER'),--1234
    ('Rurik','Hruska','Rurik_Hruska@epam.com','$2a$10$6Q1OhnSbgnOW1.hpaGDsbOUdr2ht6O.woDJxUuzf8q0mgscMKno52','ADMIN'),--somepassowrd
    ('Jamill','Brierton','Jamill_Brierton@epam.com','$2a$10$sdFZIDVjsX5YHxK0OHisCelJFp2kLyVwMnldL3QZnkD0eUsYikcse','ADMIN'),--lastone
    ('Emmey','Bartelli','Emmey_Bartelli@epam.com','$2a$10$/EuWSPPL4Gzw4zbCoCJfYuEqEDvmiRhlTB0sF7YRnoQqwWPVRMDQq','USER'),--1234
    ('Chuck','Mourgue','Chuck_Mourgue@epam.com','$2a$10$RF44NuLBOsdCgbKe/CGSPuTGv3pSI0TujhrecfKwaRINtr39Zwf.S','ADMIN'),--strong_value@$
    ('Claribel','Kelinge','Claribel_Kelinge@epam.com','$2a$10$C19i.BjUJ3IJUPe24HYxr.WxzwtpwZp3Q8kUJPGSk8jM2YznzkpZm','USER'),--lastone
    ('Carine','Girtin','Carine_Girtin@epam.com','$2a$10$/7gdpSCLpQUR.6EPjSYCgOoH6E0R0hSbpNVlvcDLNYxt2L.pIogYO','USER'),--strong_value@$
    ('Cahra','Janik','Cahra_Janik@epam.com','$2a$10$JiWyEmsIt010M78BhyRJj.wTEMVAr1SB9zqFu89cE/0F3bQlAeoLu','ADMIN'),--lastone
    ('Rouvin','Bruckent','Rouvin_Bruckent@epam.com','$2a$10$52TAETobY7npIAfTJ6PMbOxsbVlcl25Djy9SxHHXZP4fUhiWgRvLG','ADMIN'),--lastone
    ('Ronna','Edmunds','Ronna_Edmunds@epam.com','$2a$10$bv19/eDiWilxZIew/bG6IO7Ux7hdhdM.z3b16dWj1QAKl8QsDW/zC','ADMIN'),--lastone
    ('Emily','Preddy','Emily_Preddy@epam.com','$2a$10$Xm5FLWrObZxgT4Ri/2t.MuQUjpgK98tJodAlUAdT5bLdopxWhJvam','ADMIN'),--qwerty
    ('Edward','Braunston','Edward_Braunston@epam.com','$2a$10$LyBluAwVwWyFwCk8spuWHuQYcGq1yaLKSEAf25rOYQW4vGiI55Ovq','ADMIN'),--qwerty
    ('Jaquenetta','Broek','Jaquenetta_Broek@epam.com','$2a$10$R9GumQR88cT/y.Tp2.qgq.I0ROQGvil4tZUWT2Nl9Svw5MatGvpuC','USER'),--lastone
    ('Dollie','Feldheim','Dollie_Feldheim@epam.com','$2a$10$vekQ8LWQOz4BSbqsbgfdBeqhHTtLlh36kEQoBQcW1XYLFhrUAqMC2','USER'),--somepassowrd
    ('Nerissa','Eslinger','Nerissa_Eslinger@epam.com','$2a$10$lGUJ8wEN/OAFR9TUV90j8u8as7gAY2OEbe7BHoV8yxnB62zcc6KJC','USER'),--lastone
    ('Nicko','Trevethan','Nicko_Trevethan@epam.com','$2a$10$ERwBYuP7hjKw7/Ctd9gRfupeT5VI2Jmf3kkvngq0wMJrQaGsdoGlm','USER'),--somepassowrd
    ('Arlette','Filon','Arlette_Filon@epam.com','$2a$10$Fdvuxe0v0.hC3PCbLC3z1.DRH6jytqnoqM65da3Nq.ZaoqbqIkOHW','ADMIN'),--qwerty
    ('Mikol','Wycliffe','Mikol_Wycliffe@epam.com','$2a$10$7/W7.1KDiAaQ133l9DZEVu5MYtdrti3wK91AKUWJ2wYUPmlt69chy','USER'),--lastone
    ('Priscella','Singers','Priscella_Singers@epam.com','$2a$10$DtJSuJrgBicYmn6NUdkIROuvCZlWJpEwRwYe6gec02BY0IvrP/zfS','USER'),--strong_value@$
    ('Deerdre','Arnaudet','Deerdre_Arnaudet@epam.com','$2a$10$gdNhdvhgx.Uuj64aUMKZoemat0b6aV8pEp4b9LCVO2A8x3Mvh1gO6','ADMIN'),--somepassowrd
    ('Madelon','Nuton','Madelon_Nuton@epam.com','$2a$10$Hc.di3oeiZ.aL3Lk9m92CeUJJb5crpg3ouQtnTZUuTzl7WMe6uBd.','ADMIN'),--strong_value@$
    ('Vasili','Rosterne','Vasili_Rosterne@epam.com','$2a$10$qwgu2nr2LfOIiaAdvP.K5O2F3dCuxQe9GVRgjeZqBWxYkUocHhGTK','ADMIN'),--lastone
    ('Corby','Stockbridge','Corby_Stockbridge@epam.com','$2a$10$3bP3M0vpyD8pbtz02u4lEeF90FmhCeyTBEvn9Per7R2hIXDrCHzqC','ADMIN'),--1234
    ('Carlynne','Berfoot','Carlynne_Berfoot@epam.com','$2a$10$MnsXEQqy4ffeDm5wDANNCOvzn.L5QD3KuxaT0cgjAbGPNho5yVcdC','USER'),--qwerty
    ('Hugibert','Beck','Hugibert_Beck@epam.com','$2a$10$2BOvVyAQwnsMtfG2sL5Omu/.z4rg2S0RJ.a1vc8TQrHlyuGZWiZSC','ADMIN'),--lastone
    ('Cletis','Goretti','Cletis_Goretti@epam.com','$2a$10$hFF94T39liPsUcoCLyzbZusHO7jvD0ZF1PFcbSfKFKW6x2rLGCOc.','ADMIN'),--1234
    ('Allister','Ickowicz','Allister_Ickowicz@epam.com','$2a$10$X1cp/mKXQLC4wBi3HxkFTuYukIy9/f/DBp0N97Zryc0ncswfmjqXS','ADMIN'),--1234
    ('Milka','Danjoie','Milka_Danjoie@epam.com','$2a$10$ZNMYgL/Vmnd5LbMW3oJKWuXG0X1Ic8zotdgMA2psEwgwyvXYihkpa','ADMIN'),--strong_value@$
    ('Antonietta','Outright','Antonietta_Outright@epam.com','$2a$10$pBIRhCcaineZ6j5mt4u5h.riZWdXpydsZYqlJGIvyf5ENtcIMhmRK','ADMIN'),--1234
    ('Tedman','Arno','Tedman_Arno@epam.com','$2a$10$62jQGFk.bn1nOxz1JROCu.1PKSLE44Ug5MMLrD0uHnpMxXzAJB8DO','ADMIN'),--1234
    ('Jeffy','Treweela','Jeffy_Treweela@epam.com','$2a$10$MhRieV80ksVCmCtu62zAe.yVMBudoL9DIWcW2AlmKExHmFif.mtqK','USER'),--lastone
    ('Zola','Vedenichev','Zola_Vedenichev@epam.com','$2a$10$Zpzp0cEXrZRScQX62dw73OQMB8lSMLh.xhXBJwKYaXl5lPlsVU7/K','USER'),--somepassowrd
    ('Mariette','Guislin','Mariette_Guislin@epam.com','$2a$10$gbwjSaUcYtDApuxpwAXpOupgMGb2isa1bUFRIuwijUKN6TcsWhbV2','USER'),--lastone
    ('Justinn','Edland','Justinn_Edland@epam.com','$2a$10$MPGrQCIYVoCTgsUMtSYMD.jjYjuIOm/4Uhb0wTVFK0xMzwCzbQBbu','USER'),--strong_value@$
    ('Yolane','Peller','Yolane_Peller@epam.com','$2a$10$nUqiqBbCcmGKo7KGDvV3R.XFvVUs42KPcyel5Va5/nhlFSdZp0RKa','ADMIN'),--1234
    ('Clare','Varnam','Clare_Varnam@epam.com','$2a$10$aEuyp.bKzlMqoIuIWaJsWOSogdmcFnfkamUM4H4MaajjCUcIHphT6','ADMIN'),--1234
    ('Babs','Blincowe','Babs_Blincowe@epam.com','$2a$10$QesWdR5vdIXj2P9VlG9tbOoz0MRFdXi1OmIIFr6CdzqqSbsHYZuNC','USER'),--somepassowrd
    ('Rourke','Geleman','Rourke_Geleman@epam.com','$2a$10$gdwlHQD2ajWH6XEpGogXIOVa/YGaZMxWr5XAQCpKAdIEGspXpFeOK','USER'),--qwerty
    ('Kristyn','Ferrettini','Kristyn_Ferrettini@epam.com','$2a$10$ecyIHiEAE2YVRfOrX4V8TOrpG7/kMQnvXP2Uyt/t2xlSp0ruzCB36','USER'),--strong_value@$
    ('Donnajean','Benardet','Donnajean_Benardet@epam.com','$2a$10$7QHLtlKg7rXCuD.yovSOKOlvGsTsvo8/nz2IYa4lwZBfp/CwQo/pS','USER'),--somepassowrd
    ('Paquito','Badman','Paquito_Badman@epam.com','$2a$10$Nof87elGpBnCW5sQskUHsec/MYTHcLA9JAyYEdzrNzpKVH3pEzTPe','USER'),--lastone
    ('Enrika','Keynes','Enrika_Keynes@epam.com','$2a$10$UuG/c9cShZ7SpoTN258BgOYqUf55WQAwWEdQIupqVsHvcyPXWGbDW','ADMIN'),--lastone
    ('Cinda','Ryding','Cinda_Ryding@epam.com','$2a$10$AAA4ov1/DCCoD4WzyyXP2.jdVRNNY32WnqIYn7af6mcvGNkNiNPea','USER'),--1234
    ('Gerrilee','Bethell','Gerrilee_Bethell@epam.com','$2a$10$NZol40DtV/xVC89s3lDOtOOs8fJCxSY7NswWLFF5S4U4WpokaGXKW','ADMIN'),--somepassowrd
    ('Corine','Simacek','Corine_Simacek@epam.com','$2a$10$uSXe.ptxsJZdm1agCVdv5uPfAdXuJhimrgpMiGEI00K6rt3Bunf8u','USER'),--qwerty
    ('Malorie','Leggate','Malorie_Leggate@epam.com','$2a$10$iQFRQKvoQ7czAaXbrD4sxOzTDAwxS77Ao0PpKsBSKmRl5zekR8/76','ADMIN'),--lastone
    ('Glad','Airs','Glad_Airs@epam.com','$2a$10$HkRBp7fsv/8UsTBXtA5AseoWEXmPIYhzTAgJSoCXRRGobNkLxZyOi','USER'),--1234
    ('Rosabelle','Larratt','Rosabelle_Larratt@epam.com','$2a$10$Hso8NErMaDl/heDHJXn9K.RZSSgw91mcYr/2aGvNRPUg/BDAjifuO','ADMIN'),--somepassowrd
    ('Dianne','Duro','Dianne_Duro@epam.com','$2a$10$sPupQRus7t8Bc39czaJ0ouClt3/NXyGNRhvykUsfb.hiCIbWLkzz2','ADMIN'),--1234
    ('Malvin','Hallaways','Malvin_Hallaways@epam.com','$2a$10$dlGXUbhXAMdYom44F5/.yO3G2I0poUpALZ81cD.rOer27Mkkpb6kG','USER'),--strong_value@$
    ('Greer','Locket','Greer_Locket@epam.com','$2a$10$dN2xZEQc9xMpbIelHWOjpeYbi6Ck6ZYOr8uvdsJYoGGXNRNdfZ.G2','ADMIN'),--somepassowrd
    ('Philip','Cowburn','Philip_Cowburn@epam.com','$2a$10$OiLRdMJZ7hF5ND9T5BAQaOBdrhFkH8.8HNZXcMfW91dH/pjCCYW2i','USER'),--strong_value@$
    ('Osmond','Hadcock','Osmond_Hadcock@epam.com','$2a$10$QAZ/wnzgEM.f/h/dojF9iONu8uI.UcsJj9qffzY0cGl93tEXIRuHa','ADMIN'),--strong_value@$
    ('Nancy','Shearston','Nancy_Shearston@epam.com','$2a$10$Ja956PtMX7/PNgwbcJ7rueSSk8fyqEdFbYhYF3oT7uFwy2QIq4uNS','USER'),--lastone
    ('Jarred','Ribeiro','Jarred_Ribeiro@epam.com','$2a$10$jZM0PCKrEJK9HkZB4tJuOOn23tiY1F9aCU0UdAuJnX9dvQ5lw9SNS','USER'),--somepassowrd
    ('Adolphe','Mattes','Adolphe_Mattes@epam.com','$2a$10$HfcWE8o34Oxfz8DnOzNWaOPOLUxhgMqOlEQQcN5QY9utkVaPLZeLy','ADMIN'),--qwerty
    ('Currey','Bosket','Currey_Bosket@epam.com','$2a$10$GgbZuG5o7Fw/lPEPixEs8.2XW3O49zBn.OVr9N53gKCG65GyWpGNm','USER'),--somepassowrd
    ('Demott','Dunnion','Demott_Dunnion@epam.com','$2a$10$BT/goRa1eofAGhWpZ/Wnleikq8Iw2nmXAmixVRLWNwSnV8OF5hl52','ADMIN'),--1234
    ('Mufinella','Sked','Mufinella_Sked@epam.com','$2a$10$SKrXYA7ZcfLJaOTy/Mryru99AghuOxkBXiaASBhuwY/GA5/4FI62C','ADMIN'),--somepassowrd
    ('Imogene','Hardacre','Imogene_Hardacre@epam.com','$2a$10$h.DSsXjIbBiPsPQMw5Iswe.P4WuXOxXn/fN6T4HvPC9et2zwQoAiC','ADMIN'),--qwerty
    ('Tabbi','Golson','Tabbi_Golson@epam.com','$2a$10$ZovgN.5k0FvE0KeYuxk32uqeDlrgnnHWdr0HVrhJp7.WACkiAnGWa','ADMIN'),--lastone
    ('Horace','Richfield','Horace_Richfield@epam.com','$2a$10$GVmqZtPtdEMdWSkL4cDPuOOeZs5qo3PygmMQMSK5BV1In8B3WcMyK','ADMIN'),--qwerty
    ('Decca','Elijahu','Decca_Elijahu@epam.com','$2a$10$38lCuFeO5zCnZHkSqvpMQ.49l/lAN/f3zg0hyKRnwNbvX4IZjbqom','ADMIN'),--strong_value@$
    ('Carol','Diggell','Carol_Diggell@epam.com','$2a$10$YPnNQuGHehS/Glqgh8Kzluxs8iolhR4d2yNw5Gw8kWAQU/miJHDim','USER'),--qwerty
    ('Daveta','Radbourn','Daveta_Radbourn@epam.com','$2a$10$xacQiix3UJm0gw0ma0XMm.eMyt3GfunmsQ08JB3mj7V77FXRiqoOC','USER'),--somepassowrd
    ('Jaclin','Thomel','Jaclin_Thomel@epam.com','$2a$10$.r.ikVBTg6HqCgTHPyl7A.udTv0nsAbUudFVEdYUDODW1tU8ELHM.','ADMIN'),--qwerty
    ('Hobie','Brim','Hobie_Brim@epam.com','$2a$10$yQoSTbKxaRjm9Raj.GLik.BH64PZHzqAbHl9Y3TA8IOcp5VzxDOmO','ADMIN'),--1234
    ('Dionis','Ivain','Dionis_Ivain@epam.com','$2a$10$cA/Wu5uH3.wLwExlVxRP6u6Yfa8wc.ctjzJq7pdDwiF7iV0A4rhoC','ADMIN'),--qwerty
    ('Cornelia','Kinnie','Cornelia_Kinnie@epam.com','$2a$10$t4Tk.KnxFAWPxCUzR.aI0u/r9WI8b1e50sGXtFnLD851wJGLRORBK','USER'),--lastone
    ('Egor','Haithwaite','Egor_Haithwaite@epam.com','$2a$10$Mnddx6aTeB9btEmCnrwihOz4wlYYXrhueOKEiWv6D7mJ8u4QPpHoW','ADMIN'),--qwerty
    ('Ryun','Bassano','Ryun_Bassano@epam.com','$2a$10$U0Zz8VB7y4kwzbb9Eor5W.A5YokOM5IihiGYlO52PXMO4bCKGgpCa','USER'),--somepassowrd
    ('Ilse','Wilgar','Ilse_Wilgar@epam.com','$2a$10$.LJ3qvU2wfJKI6kWMs2dl.vDB9K1TzWlJmO/AFoC7O2ux7t1EsxJO','ADMIN'),--1234
    ('Ab','Dalrymple','Ab_Dalrymple@epam.com','$2a$10$9Z8igCnZv/oqpqkSEAfAHeavV8o2k7UnOQtVM1ieIirIKnlu4jhc2','ADMIN'),--qwerty
    ('Wilma','Eschelle','Wilma_Eschelle@epam.com','$2a$10$g045pToBsGhqGVk5z6sWsu/5ga0drvi.OAnkasXzfh.oj8fld/QPe','USER'),--qwerty
    ('Dev','Cowpland','Dev_Cowpland@epam.com','$2a$10$LiSSHijK8dqDBlqgw3wz8OgynyV0ue.uNiLkwKx206iy9lhKV0Na2','ADMIN'),--somepassowrd
    ('Shirlee','Raoult','Shirlee_Raoult@epam.com','$2a$10$8YrDqPLpGkMgp.o650UGi.O2BQnOhadOA3Fv8/cuBRFs9ebt45OSi','USER'),--qwerty
    ('Dacy','Szwandt','Dacy_Szwandt@epam.com','$2a$10$AuOYQgqr1rxUFKnLUcqXRuYnwiR8DLgrX6dz5tfEqS9XGSXlhLMUS','USER'),--somepassowrd
    ('Scarlet','Dunbobin','Scarlet_Dunbobin@epam.com','$2a$10$wYaJFuKj0VXHcQYljWMTJe.b0HVd9m3B2SjRiGYnukVXiiz9OGdDK','ADMIN'),--strong_value@$
    ('Norri','Conti','Norri_Conti@epam.com','$2a$10$YXZF84Dg2JauhKRX5VPfq.Bk6QZjIH.HmZo8d8/1zb4G.f3gJS9Fu','USER'),--lastone
    ('Basile','Synke','Basile_Synke@epam.com','$2a$10$Adwb0qswm5K4dl5KnaMN/OesCwNqg/bI5pYtVpca0McUTSecjNayy','ADMIN'),--somepassowrd
    ('Carmen','Haggus','Carmen_Haggus@epam.com','$2a$10$d8C5Mg4Mo9jHrEYRhu9M/u/Bve.m8Ogz20XrCbJOG5l7KFHvT/V3q','ADMIN'),--strong_value@$
    ('Karylin','Garmans','Karylin_Garmans@epam.com','$2a$10$ofJB1tbeloSoMzag4fEf0.gzrlfQh.Khy/7EjUNl3yoaQtXLjuaWu','ADMIN'),--strong_value@$
    ('Rochell','Le Noire','Rochell_Le Noire@epam.com','$2a$10$hRjFeDjzmkGwsqA58FOzQefmqog7rKd0osBd57.ZuGpcKChbYjsuO','USER'),--1234
    ('Clarke','Cleverley','Clarke_Cleverley@epam.com','$2a$10$PX6hXQdQKjSGh6nknUu6kuhx5pca7pkxFFYnEWe3WMpaHykFKIm1m','USER'),--somepassowrd
    ('Benjie','Storror','Benjie_Storror@epam.com','$2a$10$nqNiKAW9Yjlu6DIBM2wryuGnBkdLhju5oWSuWM4CpTxl6FFMHkfCe','USER'),--lastone
    ('Mignon','Bembridge','Mignon_Bembridge@epam.com','$2a$10$5x0mOu2rdqrUy6Zy0UocLu.v8FJgvGqX2AdsRH87lPEkdAB/WR67O','USER'),--1234
    ('Cash','Leak','Cash_Leak@epam.com','$2a$10$U7J47r46ii.2Bi5DHaAsBuWTRrM3fJJle0w8tR.ksx.HBm0/trFmW','USER'),--lastone
    ('Arielle','McArdle','Arielle_McArdle@epam.com','$2a$10$183qwrSB4L7QeHCs.aP2YuczAXzZasxxF1Tzo497xjXx190zlzhKu','USER'),--1234
    ('Jo','Dulany','Jo_Dulany@epam.com','$2a$10$a6ePYwkZOja02ZWkERv.7uzN28uGLmGC0ehkeLR0QkQ50hUpy0w0W','ADMIN'),--strong_value@$
    ('Hermia','Dressell','Hermia_Dressell@epam.com','$2a$10$IkwOzTAbHks4QSIUzIs3pOLe3VJ4XslpLOuQKT5MqidAyKn/BCOba','ADMIN'),--lastone
    ('Milicent','Dinse','Milicent_Dinse@epam.com','$2a$10$IYwDbrlqMRBM3a4zvAY9wuYxtAdbJ7JFuyRWpLFixnfFtlYIdqu2G','USER'),--strong_value@$
    ('Laural','Prettyjohn','Laural_Prettyjohn@epam.com','$2a$10$tBR9bYOvRCdCzp7i9ZBrv.KMWkWdAbG819LzBnL6wNWuFjtpkIsCm','USER'),--1234
    ('Billy','Acum','Billy_Acum@epam.com','$2a$10$B4EWX18QQoO7GW1TCgyw6OYoMwME.AIRDEy8jqxo2m71hMeTnU6XW','ADMIN'),--lastone
    ('Abramo','Fordy','Abramo_Fordy@epam.com','$2a$10$RSEtY80c5JEhqCtba3M42ONN39PZpHYDGepKXY4.rjM1gBhzU/2Im','ADMIN'),--1234
    ('Beth','Netley','Beth_Netley@epam.com','$2a$10$f2sajMnjgWHjngQDIS5HtO.7UXcRkucPoxMg2YJHI73ABDhXiqfSu','USER'),--1234
    ('Raychel','Sapauton','Raychel_Sapauton@epam.com','$2a$10$.1DG8B7Ytee8CZe2PbPzIuuaGMm88iLaBixeKcy.N0dW7Q4pjdD8K','USER'),--strong_value@$
    ('Salomo','Bignal','Salomo_Bignal@epam.com','$2a$10$DBoktzGazfrXNEsZU3uxTuxa2QH.KjhupHtWMFyG86m9uTVJOSN/a','ADMIN'),--lastone
    ('Reynold','Mellor','Reynold_Mellor@epam.com','$2a$10$R4Y.kjQKKQ64e6h7StJe5O25Mo.ZdlP8c5e1eVoClS/MmPz0BNKU6','USER'),--1234
    ('Regine','Veivers','Regine_Veivers@epam.com','$2a$10$5xB1kNlkq23wjxAqVERaUeYlUK/CRGs/CheX58xqc7t2ATunObJty','USER'),--1234
    ('Chantalle','Aldritt','Chantalle_Aldritt@epam.com','$2a$10$MLwuZAiw9t9lXtwmYgTexOmRTzt862Qgr5aB91ga8kIyzk7ML0.am','USER'),--strong_value@$
    ('Yule','Corpe','Yule_Corpe@epam.com','$2a$10$FQ.ZfGbxLp.cZbZvPz6LLuZ4ZoXHM72ijJzdR5bNEt7dsHtkgutZy','ADMIN'),--strong_value@$
    ('Albertine','Pledge','Albertine_Pledge@epam.com','$2a$10$2HnDHd4DLyZjG5c5dNskhubbKaXKqTfzSCdsDO60YgeQbWbV0yMYG','USER'),--1234
    ('Lisa','Maddison','Lisa_Maddison@epam.com','$2a$10$T.oPMfQHrKzcUG/ZKu..DOEQizqrF4eKMhWGj8quYpJDHMqxoqFBO','ADMIN'),--1234
    ('Judie','Newburn','Judie_Newburn@epam.com','$2a$10$0ghxdtiixjAaVVf78GwQnOTSR6sC3jxmFBDKgSo0WreFqcKqjOzmC','ADMIN'),--lastone
    ('Grissel','Stanislaw','Grissel_Stanislaw@epam.com','$2a$10$dG3BnYpZ.wEoMLwaSVjGXu4HqFX0/yPzRex.hiE3fJLtOzjus115.','ADMIN'),--lastone
    ('Bastian','Deyes','Bastian_Deyes@epam.com','$2a$10$O5jP262M72CPJ.QTMl4.C.z8EbgDmcy8tCNFnc9d6yr84Kpa7iWOy','USER'),--somepassowrd
    ('Odo','Waker','Odo_Waker@epam.com','$2a$10$kteg8U8EtwJkL6ICJ8P0furuJRrK5AtfixNUY2/civFC1TbXa.ZZG','USER'),--strong_value@$
    ('Delly','Sline','Delly_Sline@epam.com','$2a$10$H9TfMBgRotXTod6Iy9VgT.Dyx5gXc/F8Nfdde75iBvBnI1YyZe7ye','USER'),--lastone
    ('Boy','Whittek','Boy_Whittek@epam.com','$2a$10$HQ.4/IAHbEHQSZfHV9k3EeXtyBMq7xN5MZn1bNBCC.zsEqpiB9J16','USER'),--somepassowrd
    ('Poul','Lujan','Poul_Lujan@epam.com','$2a$10$B.OnvL2YHJ7zstbczdHMt.29oIJvn0/RPop2/k5A8WMfH9N9mGKk6','USER'),--qwerty
    ('Shelbi','Fewings','Shelbi_Fewings@epam.com','$2a$10$RH.7WFiwPYoSvGt5V/QPL.H.th2G8leyRSni6Vj8HW0z1QodH6R3O','ADMIN'),--qwerty
    ('Carlina','Bradnick','Carlina_Bradnick@epam.com','$2a$10$eKyh7ToAKU8RP/owa7uoIeZVVslcffjiZUfpauNZfSd7.LSe5aDya','USER'),--somepassowrd
    ('Tony','Angelini','Tony_Angelini@epam.com','$2a$10$uoN9MV.qPoE1xzfADXl8G.RClt5e8sYn7yUeZuWVIr4NMkNY6Aqu6','ADMIN'),--qwerty
    ('Rafi','Jarley','Rafi_Jarley@epam.com','$2a$10$KpZTJFJVL6WLlWBbzUHZBeayJdhSzclm9pn4e2kAzLkevm94MFkXq','USER'),--strong_value@$
    ('Henka','Redman','Henka_Redman@epam.com','$2a$10$1TMohX.5ctT0ztfwJ1aXPuhWY/NmUITLPXP9ro/Rz9gaA7Dt9fFHa','USER'),--somepassowrd
    ('Yance','Yallop','Yance_Yallop@epam.com','$2a$10$DjF6qF6sNnpbkaaYCZkBkeMTgxP6VlBXT6pL.Zi.8AOxpA7/U.3bO','USER'),--lastone
    ('Luz','Dodgshun','Luz_Dodgshun@epam.com','$2a$10$4V5TBttflnQoN9YYZ0qmFuOWSz0UhLyByatthvnQH2hLgnOQDifA6','USER'),--strong_value@$
    ('Bradly','Coltman','Bradly_Coltman@epam.com','$2a$10$Yy7ynttdZiA2HCySuKIekefw5NxRDVvOkZtpHsTij50tm5CdUjai.','ADMIN'),--1234
    ('Connie','Defew','Connie_Defew@epam.com','$2a$10$5UNsrLjKFLhqNuVBwzmKSO0bPNLd3Kd0lU0UWCFB5Ij6UM4frw0va','USER'),--strong_value@$
    ('Herc','Ramsdale','Herc_Ramsdale@epam.com','$2a$10$8o.ydWQAgX9K/DVJpPjX0ePVTqWif7bFzu9m3egr2b77Lr6wTbzs.','USER'),--lastone
    ('Constantine','Wakenshaw','Constantine_Wakenshaw@epam.com','$2a$10$EqELpeqnhnK3oFUWjCqSjuoMQYUi9raZFqUvmCYe7PYg8ypvhJWca','USER'),--strong_value@$
    ('Radcliffe','McMoyer','Radcliffe_McMoyer@epam.com','$2a$10$Vvv8Hb1UjeoR0cjhwfJmOOV1jOdc49o40Y.TJ50Pryt14LyC3/OEm','ADMIN'),--strong_value@$
    ('Tabbatha','Georghiou','Tabbatha_Georghiou@epam.com','$2a$10$aS87YwXa.QR0JP01vM3X5eRKyIxgoml6xZgHy6BIRXMbJfroQeCnu','ADMIN'),--1234
    ('Say','Heathorn','Say_Heathorn@epam.com','$2a$10$vrt.kXF30aFjuWGb.vAgOOVo8LcvKNDL0945Ide.ppsGrIOiAC00S','USER'),--somepassowrd
    ('Annamarie','Cottle','Annamarie_Cottle@epam.com','$2a$10$bhjPXkvfG4HLhwqTw3L94.BhEXdVbTAcyhwjqlPpjbGa9WUT0uUeW','USER'),--lastone
    ('Chaddie','Broader','Chaddie_Broader@epam.com','$2a$10$rld/aTh/QtoMNSgd3zk0MuB2ZLBbcs3pDEW8GEwbwBOGbnmXTkIDO','USER'),--strong_value@$
    ('Zelig','Mathieson','Zelig_Mathieson@epam.com','$2a$10$SEvMUZfdJpcELezs31VSBONCxhLoQLMVEWvSU59Hwa5Up503hM1iu','USER'),--1234
    ('Virgie','Harby','Virgie_Harby@epam.com','$2a$10$Q1an.2Eq5h/Wgm7aOafP7eXMzmUuUEwL8eBHXvtTqTMXG62UhWKdG','ADMIN'),--1234
    ('Clayson','Thorburn','Clayson_Thorburn@epam.com','$2a$10$A.yUdbQw/P.MuciDOe89EuUBruxMUZDHSQaY.dsNC5LM1xXqYhrJi','USER'),--qwerty
    ('Blane','Biaggelli','Blane_Biaggelli@epam.com','$2a$10$1iPyk208MqtxCWO0fipZt.0qy9cR784r57QC3jac/YbSE7mjbRB.i','USER'),--strong_value@$
    ('Michelle','Gabitis','Michelle_Gabitis@epam.com','$2a$10$2JyvkYlxRlW8cTWnecd8x.J7br7aBecfpBBRcUXQ3Q9jnCqwV2/6q','USER'),--qwerty
    ('Binny','Joselovitch','Binny_Joselovitch@epam.com','$2a$10$XWpFi76Pl18XJ1/6Mejr1uHRc7LMWQN2lBcXNXhAsLgw/Kvjp4Vfu','USER'),--qwerty
    ('Rhianna','Yerrington','Rhianna_Yerrington@epam.com','$2a$10$UUqpAxqyFohSmixwU9ub/.YE37uuOq3uCjqV4m9V4fRq3t1E0xbRu','ADMIN'),--qwerty
    ('Arabella','Tellenbach','Arabella_Tellenbach@epam.com','$2a$10$NpAtm5qHvUDsLeB0C6zJHOiYsFXJqzSgEBZVjIjEl.gWB8oLtCNuy','ADMIN'),--1234
    ('Dore','Baythorp','Dore_Baythorp@epam.com','$2a$10$nlAr22IWtDoege5XoB94aeSwl4kIUnsfnG6pFA01FoXbbpqFwRbTi','ADMIN'),--strong_value@$
    ('Chickie','Rugieri','Chickie_Rugieri@epam.com','$2a$10$HiWVCGXBnjbB.EnOG2yyQud/3kqg4Psac3egaXgWa2lHAMsXuTGHC','USER'),--strong_value@$
    ('Hasty','Curmi','Hasty_Curmi@epam.com','$2a$10$L5r5x8QsgZOS433K9eEEMeXt/pNzGovJ4YUauQMZI9XvTjYNNstIO','USER'),--qwerty
    ('Ximenez','Dalinder','Ximenez_Dalinder@epam.com','$2a$10$CgqzaSMyqtQzmNbVxXck2Oi/IY2f2e2dINe6QtROIk7bRmA6WLula','ADMIN'),--somepassowrd
    ('Nicoline','Schankel','Nicoline_Schankel@epam.com','$2a$10$5kXqliAmhU1aTVNVWFpJ8OIfttmFwPb.a5h2u2pUzEWsD3OasK1Vq','USER'),--somepassowrd
    ('Royall','Firbanks','Royall_Firbanks@epam.com','$2a$10$NypPa7TR.5CWqlXnjzrWIOOwfUbaAoI43hSxg6ngnqEcmgi4e5taa','USER'),--strong_value@$
    ('Hedwiga','Lawrence','Hedwiga_Lawrence@epam.com','$2a$10$ds9Q3w1cwB7ZeNtSBISiIe1NgRSbH60vNdmrHwbSP/nrAG.k4xwAS','USER'),--1234
    ('Millicent','Vales','Millicent_Vales@epam.com','$2a$10$yigCLR9pDpOEmKycSIqHfe3hrjPkwyCU8JpbllepIGMsoRg5Dq9IC','USER'),--somepassowrd
    ('Klarrisa','Leggate','Klarrisa_Leggate@epam.com','$2a$10$euXZBDYYdasi9KNq8bT1JelRPlfEN.4aYX.drk4Pq.cKPt/qHNI6a','ADMIN'),--strong_value@$
    ('Meade','Musico','Meade_Musico@epam.com','$2a$10$kHFrnorIrSE058nOf/siA.UFWyDNNcpK..rYmuXz1ZgrLbu9HMEFK','ADMIN'),--somepassowrd
    ('Dorris','Halsted','Dorris_Halsted@epam.com','$2a$10$CWqYW96N8kmWnTWVSoYYYeRxQsiD2yRMB4o8pEmm7PiU7M3m/Iss2','USER'),--strong_value@$
    ('Fabe','Kunzel','Fabe_Kunzel@epam.com','$2a$10$hjdIWPiNluuFph6RlW.A4ehb8KfeQmT8LdoeL9jv23MCLl0YKFY02','ADMIN'),--strong_value@$
    ('Cordell','Bernardotte','Cordell_Bernardotte@epam.com','$2a$10$JPIfmtpVRfTI0kQq4LifEunwair1YEEwkAtOzQTRslg3jlpA2VrZ6','USER'),--lastone
    ('Sena','Ritelli','Sena_Ritelli@epam.com','$2a$10$cARowrGUL64IVTF4yGscrum/T/4A9K/EKigQhQOv.kPYmBexVoHfW','ADMIN'),--strong_value@$
    ('Culver','Aime','Culver_Aime@epam.com','$2a$10$ss1fTnKxiQX4fPzIX6YeL.naerhWcx20YztfVn0ucwdqnoEnooJ4i','USER'),--1234
    ('Klarika','Habgood','Klarika_Habgood@epam.com','$2a$10$smcpgrI.vAPKk676camjxe1vTIj9fuyeDAvqEw1zMaW9m2ZaxxZUe','ADMIN'),--1234
    ('Xymenes','Stewartson','Xymenes_Stewartson@epam.com','$2a$10$D5jCzo7ReD39kK6jcFTeu.ganv6izt86Ig9nNhkldpEKlU86mIdAS','ADMIN'),--strong_value@$
    ('Verina','Mammatt','Verina_Mammatt@epam.com','$2a$10$ChpM9UPOIkTm9rIZZyYTe.m/LwafoU9eOGNtl026nrQtXuFQaI7gC','USER'),--lastone
    ('Gifford','Fleury','Gifford_Fleury@epam.com','$2a$10$HIcynkYalULsvYD.wVLrNOi3QtIUlEVv3LxY5HP7w5P6VLkcJVQu6','USER'),--lastone
    ('Elianora','Gudge','Elianora_Gudge@epam.com','$2a$10$GhxJy4GCJozkZEDdXkfvxum2wAi7lrqVk7/gvi9yIkoTvCDIRATSm','ADMIN'),--somepassowrd
    ('Dara','Cocks','Dara_Cocks@epam.com','$2a$10$TvxEiovN5oNd2E7UYip0gOVZtjF5KcB4tMDOFs9hSDYyCew2wdU7G','USER'),--strong_value@$
    ('Karoly','De Cleen','Karoly_De Cleen@epam.com','$2a$10$BtoWOCH6RMSuOVAFDalB5.OwSgkhYixG/wOdIpPX4Wnzg2mEUPZgW','USER'),--1234
    ('Waiter','Osbiston','Waiter_Osbiston@epam.com','$2a$10$RVR7cjPKJ45AKLNV6VI8KuILtysIB/gj.OcWo7Hb3BX31lUdeTKdW','ADMIN'),--lastone
    ('Cindee','Marfield','Cindee_Marfield@epam.com','$2a$10$a10y9z90mNqLxMzHIPxIiOnkEQHQrHRF79V2qkP7LKyUghjAkt84O','ADMIN'),--lastone
    ('Lissie','Hazell','Lissie_Hazell@epam.com','$2a$10$iDA4PWuSOGLBu08qVM/hnem0pcLv6VToRYmLTMXazYPk24f57KYa2','USER'),--somepassowrd
    ('Andromache','Hagan','Andromache_Hagan@epam.com','$2a$10$uzAyqd7Adnf6OK9umu1jMuHmH8Eq9umM6RTLuAzjwb2WHTCvt79Fi','ADMIN'),--qwerty
    ('Collin','Blakeborough','Collin_Blakeborough@epam.com','$2a$10$coQgaFfc9GxHwJbzO7A7z.LoW2LdiJsiBhQNG08M6/XGsTXP52AlG','ADMIN'),--1234
    ('Leonhard','Fahey','Leonhard_Fahey@epam.com','$2a$10$DBkebQgxaZgOgs91A78tDeMZuKW5fboIJ.tKYBswaRmnO8ot0hx5G','ADMIN'),--somepassowrd
    ('Jessika','Espinos','Jessika_Espinos@epam.com','$2a$10$zVk5b.rmE/8Osy6V8s40XefWss46E4N41D11IJL1y3jfW38uDwFiy','USER'),--lastone
    ('Hermy','Titchmarsh','Hermy_Titchmarsh@epam.com','$2a$10$cc6RnpMhHgDNJJSkZ4jELOt.PSJkiX.6SSkzor7YvcvqTcSAs0ylG','ADMIN'),--1234
    ('Quintin','Giraudy','Quintin_Giraudy@epam.com','$2a$10$td95g0BJci03Nhz1B34maO2NKHP/ovypXP0Nw1cGLqWsqv6KpLoI.','ADMIN'),--1234
    ('Dalt','Webb-Bowen','Dalt_Webb-Bowen@epam.com','$2a$10$TgWxBV7TaZgvuK1dc38vMOEApui7IJfxn2q2ha5jnlEaEXyW/VpT6','ADMIN'),--lastone
    ('Stacy','Chaves','Stacy_Chaves@epam.com','$2a$10$cw0D.ztULmuwoh7UFTbdIuhTAH1EhVvOb4pZ5l54M8qcmTuF2HtBi','ADMIN'),--somepassowrd
    ('Conrado','Danslow','Conrado_Danslow@epam.com','$2a$10$FXrps.hjgcenRdUj/lj3ueRaQre.d3rcNJQUW8n/8tqBipAtMS91.','USER'),--strong_value@$
    ('Wiatt','Gannaway','Wiatt_Gannaway@epam.com','$2a$10$WYftMXNOCtkLwzr54wRbbOZcI2qvzlhL.tPvqNg1UyNCjS12l2Wtq','ADMIN'),--1234
    ('Maxine','Liebrecht','Maxine_Liebrecht@epam.com','$2a$10$9XmpSvNq.Xxo3dE5osa8MOGoOBdD2eolr/NLnOZUWQRgLqhn8DBYK','ADMIN'),--strong_value@$
    ('Johann','Goodwill','Johann_Goodwill@epam.com','$2a$10$OHjO4mSN9BhVL1hh3ssb9OgBoaydD8MKX04NP8AteVeHYk4.daZWa','ADMIN'),--1234
    ('Bree','Flindall','Bree_Flindall@epam.com','$2a$10$rPqGD.AMLGe1/T6aYcDE5.FeWMGr4/wJq0ZDzjB04/sSz5nTJvSsK','ADMIN'),--lastone
    ('Brandy','Skellen','Brandy_Skellen@epam.com','$2a$10$/O1mBwL7ID60vKiV5f.j1ewJUHWUIn0V0zido86DPJq.1QhRUgeRa','USER'),--lastone
    ('Matti','Myhan','Matti_Myhan@epam.com','$2a$10$UWlhaBC7R7rOwIWkr7xwXODaSiHBHd.n/AXNsq.tK5GonYs2FtN4C','ADMIN'),--lastone
    ('Michele','Burchatt','Michele_Burchatt@epam.com','$2a$10$Qw/u5FhBHC73mLWe9gSRd.MoReuz6nbqLLrdUkIi8CT/4Mr/DS6Vu','USER'),--1234
    ('Allene','Briztman','Allene_Briztman@epam.com','$2a$10$x4tCg02V5nJV9w.KT.OhyeY3Zt4xXDSZY0oHeUxzrzfd6fDOL96o.','USER'),--strong_value@$
    ('Adelind','Union','Adelind_Union@epam.com','$2a$10$g4nSk3DAXBimR3X6A4y3seqrzQvpDXlkSxA8V9kGVz8MEZmw4MkOe','ADMIN'),--strong_value@$
    ('Domini','Sinnie','Domini_Sinnie@epam.com','$2a$10$M53LRpbKVwJMzyFT1oqXw.WCrc0uOkw31mfKK118ftQYeX/pt/xy2','USER'),--1234
    ('Blondie','Hoyle','Blondie_Hoyle@epam.com','$2a$10$A/Izwq7cA0kevJ7McJPEzOmhBoWUl41JLeqzsHqOXMVFyRw9Dsj/K','USER'),--somepassowrd
    ('Stephie','McCrann','Stephie_McCrann@epam.com','$2a$10$gO3bPfE0KVLwjZdgm47l3epp0fr4/0KCZVqIB4ZmZN1/.xvm53Bo2','USER'),--lastone
    ('Bar','Smouten','Bar_Smouten@epam.com','$2a$10$w1l/Bey/MbCwUGXd4.SXuO2xc5YGf2X7jY9B5tb2oIK8sQYD3QwEC','ADMIN'),--lastone
    ('Francisco','Halse','Francisco_Halse@epam.com','$2a$10$Y/PiVRjyxyXsHVru3x/KQ.PAT3a7oTg8VVpc6ua7H9RLsVDaZCgLu','ADMIN'),--qwerty
    ('Merna','Sundin','Merna_Sundin@epam.com','$2a$10$3RRybXSh9pa3bE718aiLqOkYMYE0rKjMrUPn/4FnsMmnVz8lYIao.','USER'),--qwerty
    ('Cecelia','Hobble','Cecelia_Hobble@epam.com','$2a$10$cz7wWinmniz7LIfUoTat3u/KWwC2obNzsHYrSqWtciiYTtsNPYEmK','USER'),--strong_value@$
    ('Dorri','Andrioletti','Dorri_Andrioletti@epam.com','$2a$10$.UzURtJXCU1dmAMbLx6T8.tlRH4u60azzAXQxYUyioE7cH1vl4R0a','ADMIN'),--strong_value@$
    ('Redford','Risso','Redford_Risso@epam.com','$2a$10$XcLbNsVjnqvMV66x3CsAfOMPnZj3XoXjlaD6tQRwdAxdhiteadPUC','ADMIN'),--strong_value@$
    ('Kelli','Kerss','Kelli_Kerss@epam.com','$2a$10$CqHLwcRQggMfcL6JPHlk3.8sX4b2/h0rnmBULYVauhrPYDuL4i16K','USER'),--1234
    ('Lorinda','Mayho','Lorinda_Mayho@epam.com','$2a$10$dULaBTkn.Y1WvFwqyXAWPO9UZ4vglfzzipjaAv1Myd8UXA1Y19JXq','ADMIN'),--somepassowrd
    ('Zared','Renish','Zared_Renish@epam.com','$2a$10$7WNqJf3FE1z8g5PI6FyeFuMGI38tJ/0.q1VCANlcVmejb53xmeBB.','ADMIN'),--lastone
    ('Chadd','Landman','Chadd_Landman@epam.com','$2a$10$1uWnW0V0dwgRNPcLFCK7ZeTFiZpa4zhpMtLlUmQCKCLIsFU.hwPji','ADMIN'),--1234
    ('Andres','Miskin','Andres_Miskin@epam.com','$2a$10$L4myKSVfNYETGdp7kPijqeJEUmibtAvM00a9DrYC8Tvf5FbQoqCxC','USER'),--qwerty
    ('Salli','Mattersey','Salli_Mattersey@epam.com','$2a$10$0mdWJUwcAm31iI5zQB/L3O.Dr158LrfhrD7lI2VUw1yxSOHMMAMVi','USER'),--qwerty
    ('Hank','Newlands','Hank_Newlands@epam.com','$2a$10$FpcwLpt/5OvIKEOdd1/qB.CvGbMdOv8vhiqhUy.RNingZohDBGkpm','ADMIN'),--lastone
    ('Templeton','Finlan','Templeton_Finlan@epam.com','$2a$10$83cV4ghx40rARg7mS2iEXOYqWtJteMbX5jAghPjqGDKSnC/YzuucO','ADMIN'),--strong_value@$
    ('Bertina','Glavis','Bertina_Glavis@epam.com','$2a$10$ur3wtHt7DCrmFQceqHZF3eX4FpYeAsueN846Tbeo8CELEQpyXKKJG','ADMIN'),--qwerty
    ('Wayne','Gaiger','Wayne_Gaiger@epam.com','$2a$10$1OCiIEDgdrwEwAvthrYxDOyKvBxmhu9Mg5ExkKWX1Of.Oe1rM/QrS','USER'),--lastone
    ('Vinson','Liggons','Vinson_Liggons@epam.com','$2a$10$DBViJmzbFjV58JSJE8tt/.cXpKpP2Ncr4Fhz4jszKOsIkbYHzBghO','USER'),--lastone
    ('Boy','Cote','Boy_Cote@epam.com','$2a$10$KnB9Y5lTyy5YyKdTQ9AHieJw9l3Hpb83b2EPmlahjlmQXvoEFz2Um','USER'),--qwerty
    ('Burg','Ghiroldi','Burg_Ghiroldi@epam.com','$2a$10$uUp7d1zEvGDKY0./B0nvrOKYb6OcJTAWRWvz5IxPbAMJuEdurn66q','ADMIN'),--1234
    ('Wilton','Brunstan','Wilton_Brunstan@epam.com','$2a$10$g7iXT/z2j/YI5JOEjnxf5.UnZKP8H7UYkOrCU6Tg7bxpE1vfxJMz6','USER'),--lastone
    ('Fionna','Mayall','Fionna_Mayall@epam.com','$2a$10$iosdmJ.VBr0U5rmR4PoarOvJzNqkgVSOHNM1TfrJdYkc07EmFIcrS','ADMIN'),--qwerty
    ('Isabel','Cresser','Isabel_Cresser@epam.com','$2a$10$ep0zlZz3fOx6JPacS3DlD.YKarAoFuTKJSwX2hrovCgO7JTIcGUxi','ADMIN'),--1234
    ('Georges','Knevett','Georges_Knevett@epam.com','$2a$10$x8ylCIrjOONsBnUCX7att.HPdG8HgRjvHoRMOgl1ZYlRA.zobgC..','USER'),--strong_value@$
    ('Abby','DEmanuele','Abby_DEmanuele@epam.com','$2a$10$RL1yIvOt9TdENpEG5v5e/uGD3t7o0q8g7/llUU7ZfIGuj5Yees4wW','ADMIN'),--somepassowrd
    ('Tracie','Heare','Tracie_Heare@epam.com','$2a$10$IRup.wheo5xZ1ey65n0q7.YPfVLDFFIcZ1l90u9VFJCJCtnVCZGp2','ADMIN'),--strong_value@$
    ('Ashely','Massinger','Ashely_Massinger@epam.com','$2a$10$kOlTcqlQeAcA1Gr6ICRX3euH17YVSQJ5kBtD0guq9Dxw.eyUSmRmK','USER'),--strong_value@$
    ('Betteann','Paffett','Betteann_Paffett@epam.com','$2a$10$6ahKDRM5Hu7sftELzorFsu9MoL.NIt2.snEx69e/woMvfAX5OUn36','USER'),--lastone
    ('Arabel','Ockendon','Arabel_Ockendon@epam.com','$2a$10$Mzq2NdqVyXXlwtbkY3tZbe1bu7RQCdlf5/oXn9JpNVQK.M13KoF4S','USER'),--somepassowrd
    ('Sam','Munnings','Sam_Munnings@epam.com','$2a$10$TdUidDDAHgT1W9Ikt1s1welUg2tZ34AA6L1HJaRFXajamrVzBaZHi','ADMIN'),--strong_value@$
    ('Alvy','Harcombe','Alvy_Harcombe@epam.com','$2a$10$krXdHzdrZtWF4wRuQ9rwV.ZLB.nSqfBG1O/.kqbQyLCId0zPSiam6','ADMIN'),--1234
    ('Sandy','Titford','Sandy_Titford@epam.com','$2a$10$0BsyOcY/KaGWdvQaqFxC0eLPTTPjMw3WDZX.RVnWxVpK1mBJ.3dUq','USER'),--1234
    ('Byrann','MacHarg','Byrann_MacHarg@epam.com','$2a$10$tIqk3S0Jywm6Pt5dRF2wuuux/fD2ztsE0YKHUiMM2bP7zCcEdY2Xm','ADMIN'),--somepassowrd
    ('Julienne','Knowling','Julienne_Knowling@epam.com','$2a$10$bVAJ2SolGkwxX50FZwyrSuXS4/HUR3DD9LCiFA6d54XmQmuHXhLEm','ADMIN'),--qwerty
    ('Adiana','Belham','Adiana_Belham@epam.com','$2a$10$XKJHTMFv4WULuMufyO7TyuCa2KkUAk1bwW39GiR9kuYwGppxye/Vu','USER'),--qwerty
    ('Roger','Northleigh','Roger_Northleigh@epam.com','$2a$10$6Jlw1jH1xwAOqwy94CY4EeGo1mNepjmNhlwdeVk3EHqaJNx8yEqfS','USER'),--strong_value@$
    ('Dian','Blewis','Dian_Blewis@epam.com','$2a$10$vhysRlED7OO35ennJBEfueGeUfJvQUyU8R05DVyT.nxiEpHSRq8/m','ADMIN'),--qwerty
    ('Mindy','Jervois','Mindy_Jervois@epam.com','$2a$10$gPNkPYJDIYhrwUPCAhkw8.8/bjx68w6QdI6RngvFMBYl6QIdGEC/W','ADMIN'),--lastone
    ('Kalil','Osselton','Kalil_Osselton@epam.com','$2a$10$BgSe5LvJHVsdzG3mfNJa/uOrHiyZ6ac/jTPdVulqITJHzsDK74TnK','USER'),--somepassowrd
    ('Libbi','Jacobi','Libbi_Jacobi@epam.com','$2a$10$ul0hNU/arWIRKFA4aGTmX.bVsA3QEtSVh6DsGgAl0xUpwgcWJPYFC','USER'),--somepassowrd
    ('Rodina','Neate','Rodina_Neate@epam.com','$2a$10$E4EXsNOJr3pfKz7DuDJc2eXwsZ0e0irALBBCKUjrFfuXDA2yQrsi2','ADMIN'),--qwerty
    ('Bernelle','Dever','Bernelle_Dever@epam.com','$2a$10$dh7wmz0gSQGoWHIj2/DBhOxS2GlqJGFIDgR2WxPDWPHvuyd24JzDi','ADMIN'),--1234
    ('Tarra','Bailiss','Tarra_Bailiss@epam.com','$2a$10$YrxQ3lJo4mtKZNkb53scc.w0zyiELWIbPEmHr3E.1GsFVeVIK2cYS','USER'),--lastone
    ('Ciel','Quarless','Ciel_Quarless@epam.com','$2a$10$doi6YwCxUm319ogz/uz/tObTdB0in1t2Ex/pG.iTX7UfavvHZTpni','ADMIN'),--strong_value@$
    ('Franky','Gonoude','Franky_Gonoude@epam.com','$2a$10$3ZUM4XvvqWcqydbOvx6S4OeIiMROU0tJTy5iLY4IBZM9BP6Ynbg4G','ADMIN'),--strong_value@$
    ('Laurel','Bartosinski','Laurel_Bartosinski@epam.com','$2a$10$JaUSLH9WvhnvVVNYvEMCsesc1QEiqNQ8mG0srIX0R0vdtu/DX4ovK','ADMIN'),--1234
    ('Leodora','Biasetti','Leodora_Biasetti@epam.com','$2a$10$3icJVk2cFYpbuRy9Dn3TYuoje35PJdI3pYBpZC.75IQALiblWzBIi','USER'),--somepassowrd
    ('Kienan','Foskin','Kienan_Foskin@epam.com','$2a$10$u0RDAYXEB8raEbsAq5t7P.784ySbybFvd32fm9MNpsORaLCBKliry','ADMIN'),--strong_value@$
    ('Neilla','Elen','Neilla_Elen@epam.com','$2a$10$uJRSs0gv2mI8XFKmLfFzQetPJqKhXF5p9M2sn4CrcMQeCgo5zddyq','ADMIN'),--1234
    ('Carmita','Gyenes','Carmita_Gyenes@epam.com','$2a$10$AxcVmhljZQtl0AB1bac.8e6mSOSz25ZI1Pe/uQmd3S63fNenabWuG','USER'),--qwerty
    ('Devan','Fishleigh','Devan_Fishleigh@epam.com','$2a$10$.FL1WCyprBrO5bSU09mWYOlc9xVKSfC4SjFcSCdEDTUfv.zgDN86y','ADMIN'),--qwerty
    ('Ruttger','Matys','Ruttger_Matys@epam.com','$2a$10$2082UJtMbH6QVjJnz/kElOJVSWaR/du0iS1m/FGL5uHIvJqsPblhu','ADMIN'),--qwerty
    ('Koral','Fulford','Koral_Fulford@epam.com','$2a$10$hjR4ElI8eoLDQdJozCMr7.T.sg/m5YdYf30z/Q5k9wowyAURUKzaG','ADMIN'),--lastone
    ('Bobine','Bonnin','Bobine_Bonnin@epam.com','$2a$10$n1MgWg6Ibii6/p3TszeVrOzSgsPySMf4IM7Ie1Cam1OmmmJ9/s3wa','ADMIN'),--qwerty
    ('Kin','Bellerby','Kin_Bellerby@epam.com','$2a$10$hiiKV9DMobi0MRWu80y4Ceoc/sNwrFj.FniiGuFlFGygsukWX/jli','USER'),--somepassowrd
    ('Fredia','Soden','Fredia_Soden@epam.com','$2a$10$b/InD47GPoY5Wi3GtC6CiuGnNOTtSPy3apVpV5m60GGp5gcVpXVmG','ADMIN'),--1234
    ('Melvin','Pacher','Melvin_Pacher@epam.com','$2a$10$Aszg159I76VXhYU8o3jmlOLGbIS8MBuxaTtnefqwxEZ2WuzZTvTAm','USER'),--strong_value@$
    ('Gerladina','Libermore','Gerladina_Libermore@epam.com','$2a$10$ELK189tyVRdQbs1kuGBOk.kBXRZRekKTOBumJfxEJxXV3mDpBHEKe','USER'),--somepassowrd
    ('Charla','Gillise','Charla_Gillise@epam.com','$2a$10$q24PVBocO3gjIcmHde2qP.MdijpZDoATKSrbkiE09S9Uv3DNQGoQy','ADMIN'),--1234
    ('Carolin','Buffham','Carolin_Buffham@epam.com','$2a$10$xunoCloVPXu5xt2D89sxPuRQhunuNwEeuw21w2ILFE7S517u.Xe9y','ADMIN'),--strong_value@$
    ('Dani','Kinch','Dani_Kinch@epam.com','$2a$10$sPwl1uzaT6xgAwSuJrpFTujLoK3KOEG8gUixgPV4V2E3Xa8OMevdK','ADMIN'),--somepassowrd
    ('Danica','Urling','Danica_Urling@epam.com','$2a$10$tLfMvrpuGKqtN6PwIr/DQ.qj7HmLoe4hmlXdSWFV7cNNhbrsVMRoK','ADMIN'),--lastone
    ('Emmalyn','Innot','Emmalyn_Innot@epam.com','$2a$10$td55kYfWplaULuOyQO5gmeFyw9cQpYF9vYVQUQxYENh8i8NdxGRN.','ADMIN'),--qwerty
    ('Fabien','Bredgeland','Fabien_Bredgeland@epam.com','$2a$10$9OT4jg63K6zNE9S5gLrH4O6vagzknNhNCu6DMTd.7M3NDF6E5i6su','ADMIN'),--1234
    ('Yasmeen','Linford','Yasmeen_Linford@epam.com','$2a$10$hdCThASQky4rcerSkiFr0eEfLoSdMftRGZw/5uEC1xxgyowzJLcOi','USER'),--1234
    ('Freddie','Aldrick','Freddie_Aldrick@epam.com','$2a$10$Xa6FZZsPM0BlDDmU60CT4ehr1pjjJp27lMglWB.twrH.ycvBR860m','ADMIN'),--lastone
    ('Mel','Jako','Mel_Jako@epam.com','$2a$10$hQT0a.8Yn6CZ05tDJ4i0CuHqDYiwBNHtTqGl7pqeHfdl3TavwfvfO','USER'),--strong_value@$
    ('Murvyn','Pettifer','Murvyn_Pettifer@epam.com','$2a$10$SMGF/rp5hjgm3s1q58tef.wDGWXgLd3Tak29DNAQCKZ3mJ4sUg0Ni','USER'),--somepassowrd
    ('Kaile','Abercromby','Kaile_Abercromby@epam.com','$2a$10$i3BvSjdb94uRy7KsFfKzjuBdM44ZTJOMViyBZOLyay9x43CVm0zuC','ADMIN'),--somepassowrd
    ('Gilli','Neat','Gilli_Neat@epam.com','$2a$10$bLYgNUT/4IIdX5iXMCA.tO..6gt9mniyQyzYaEsBa/7469AibIQZy','USER'),--somepassowrd
    ('Suzy','Heymann','Suzy_Heymann@epam.com','$2a$10$GUbJyNmh59ne1GVE3OUIwu7c30gXAyaOpHUAHIgeGnTTCmNiFp7ay','USER'),--qwerty
    ('Veriee','Aupol','Veriee_Aupol@epam.com','$2a$10$Nsey28xNoyh1RsmhhRFcVe0XO842/0EhL5Rh3PAt9thO1jcF0w9ku','USER'),--strong_value@$
    ('Gladi','Jeandot','Gladi_Jeandot@epam.com','$2a$10$88BBzCPguxn8K4opW3Shi.lbu8VNH1ZrYT91wPefLaJCcwWvgBUsa','USER'),--somepassowrd
    ('Elayne','Halegarth','Elayne_Halegarth@epam.com','$2a$10$XYCB3XYrbP0wDY2JABZi2.NlySGAjQPVs98zeSmYqLZDckNe3ndiW','USER'),--strong_value@$
    ('Malvin','Ouldred','Malvin_Ouldred@epam.com','$2a$10$hZmvF8dqUQMCqFqhNiPlD.sZAydN.sYD8q0xl5QLiUoJaaNRJbZU.','ADMIN'),--strong_value@$
    ('Sabrina','Pooke','Sabrina_Pooke@epam.com','$2a$10$UZ2yiHE3alvm3rsBt2gOqOv5FOUZ9kiwzA77D5xtkbZ9GInwTRR2G','USER'),--1234
    ('Umeko','Rissen','Umeko_Rissen@epam.com','$2a$10$jwIV57pGF0OIT8CR.7/eQ.O.2dRMI6nh4WjfQiqZnoeANAuI6SCqC','USER'),--somepassowrd
    ('Kalle','Neem','Kalle_Neem@epam.com','$2a$10$UOpwLZIvAgFQ/gSEhzhFQOS7NXqHt2AK55GgRUS86jHtWI/9EjPeO','USER'),--qwerty
    ('Marleah','Blowes','Marleah_Blowes@epam.com','$2a$10$Ap2bHL6nvGlCbC5YvCqAnulxdnjUYG8OCFNmBosDOdigOsjeuFwgO','USER'),--lastone
    ('Sena','Eisikowitz','Sena_Eisikowitz@epam.com','$2a$10$3DtzNQjaHxxIg907gOVyI.8QfDyJImtyJM/oAgR2ig/t0vQh2R/AO','USER'),--somepassowrd
    ('Albina','Peltzer','Albina_Peltzer@epam.com','$2a$10$eCeA.c5zw5XCRR6GqP0VqutzTewopxKB5aJX6.jXIqfyjKCem.bxu','USER'),--strong_value@$
    ('Allayne','Rapi','Allayne_Rapi@epam.com','$2a$10$lpZACByz1JnYdhkHpTunk.y/wiBrxPqDXhmnfDO94voRNGCk.I8Q6','ADMIN'),--somepassowrd
    ('Renell','Starkey','Renell_Starkey@epam.com','$2a$10$h5kA.vEQtu/YdR0qqUx6mOwL2xrNhugqYuoJfV6fAa4czruJg8nB.','ADMIN'),--qwerty
    ('Mal','Pickerell','Mal_Pickerell@epam.com','$2a$10$OxPL4DDlp6wzZSikKPTzKuEIWN799heRqONRe6VvYj3iA.CJ7wuNu','ADMIN'),--strong_value@$
    ('Ulberto','Moncey','Ulberto_Moncey@epam.com','$2a$10$T2eeqSF4KkNheLzax/NPielqHoh1TUJRHMqGq22qAKtQdBK94x7u.','USER'),--somepassowrd
    ('Elena','Godly','Elena_Godly@epam.com','$2a$10$sp5QGyCy3aLsDOwotX4xnOBmljb34hQJh9kvwmxwpTMglsPsKMYpO','USER'),--somepassowrd
    ('Honey','Feare','Honey_Feare@epam.com','$2a$10$oiG8madA7gnEHr9sKIKtHefgWvMK/fskb34c95Q0iuzAu4/cjUB/y','ADMIN'),--lastone
    ('Osbourn','Daveridge','Osbourn_Daveridge@epam.com','$2a$10$tlSRTddy0yuZUS/OFsZbcOWwR/doE67uesvUrz9d11zyOgOqXG2tG','USER'),--qwerty
    ('Abran','Lamplugh','Abran_Lamplugh@epam.com','$2a$10$NYvoqy6RqkldGRed0v5douR7rQKzeMdFmhlRW1uANHhZaOuor8NhG','USER'),--1234
    ('Vonny','Franz','Vonny_Franz@epam.com','$2a$10$Sd2n4akwXp8u/TY/7eDpbeQwUNy/9Yaau1tbAsSfVDccsVL0aVhY6','ADMIN'),--qwerty
    ('Roberta','Glison','Roberta_Glison@epam.com','$2a$10$XaunR0sEQ/bBIHXYsCWG9.LaUuEanoBmiaNu9ygCxjqKhevuDE9lC','USER'),--lastone
    ('Nollie','Benardeau','Nollie_Benardeau@epam.com','$2a$10$pwYxsjQz.KZffgsRpFset.TuP2LNwDBhf4wmBOMhoYkgznth4LkXS','ADMIN'),--1234
    ('Ameline','Swetenham','Ameline_Swetenham@epam.com','$2a$10$ZLnXjazgYQay79ePaO//k.ngM636N1NzCfewnwIVzWtRwNbdZHJZy','USER'),--strong_value@$
    ('Estel','Ballinger','Estel_Ballinger@epam.com','$2a$10$zrV1eKlIV9coX8SVy6kFheArLt/qaGgDY02L.MXqBHTHPSzGS6uMO','USER'),--strong_value@$
    ('Suzie','Janjusevic','Suzie_Janjusevic@epam.com','$2a$10$2QGrNOCTC5r6S9WAt3eHKe/gTp/wlXpTIYQJAccih3hcRUzJzv44K','USER'),--lastone
    ('Trudi','Swatheridge','Trudi_Swatheridge@epam.com','$2a$10$//t59psAkOR7CSEdnq5mquzna77k.h8lvzL58JIF8zzMGSuGm3FLa','USER'),--1234
    ('Kally','Fotheringham','Kally_Fotheringham@epam.com','$2a$10$xm8iD2swqKuhBAh1/Y/UOe9MyJfdg6pqVXGY8N3Ee811jVdCRBKiG','ADMIN'),--lastone
    ('Beilul','Bestman','Beilul_Bestman@epam.com','$2a$10$qm.asRCFvOx2.VCZYgLENOdijo.USSVh4NDJBFOC5gbfA2PZsef2i','ADMIN'),--somepassowrd
    ('Berti','Cleife','Berti_Cleife@epam.com','$2a$10$8LwNakLJRDUMQe8uzZe7vu4u1HwTxl.ioxG5VYk3gdMrO10z44MFi','ADMIN'),--1234
    ('Christopher','Bruty','Christopher_Bruty@epam.com','$2a$10$haNZoAoeiXP/QoW7zp/fy.JpUG3dCdO5c5izS1eolfeL.Xjiq8m9S','ADMIN'),--qwerty
    ('Dinnie','Sirette','Dinnie_Sirette@epam.com','$2a$10$0cgn0j2LWKHS.rgPKPsZZeALJNeftnHXLurpiM2YmrTwNqLgLai8q','ADMIN'),--1234
    ('Wayland','Simpole','Wayland_Simpole@epam.com','$2a$10$oTrjNywy3zmoM71wvWm8SeQUnqMJmddRN7Bf6EbABYHmq7OFEQtei','ADMIN'),--qwerty
    ('Vassily','Hartin','Vassily_Hartin@epam.com','$2a$10$WRGorez8hGdcCXFoS/Dhd.KQju11T8QpLtHJqEEak/PblrxwZv21a','USER'),--lastone
    ('Jacki','Bilbrook','Jacki_Bilbrook@epam.com','$2a$10$AoYY0PSOjyFNkEGx6rM0ieoA1RHQrc5PLDUizkkPVeHLjQfHhwi6y','USER'),--somepassowrd
    ('Katti','Sibbons','Katti_Sibbons@epam.com','$2a$10$6jApArUBbsAf4FhxAtpjNO8ovENPSr2qa9ojigMlLub4Tm7kmmzoS','ADMIN'),--somepassowrd
    ('Hanna','Korfmann','Hanna_Korfmann@epam.com','$2a$10$8NsdibmGHmU71r3zu/eUzuGg/BKVoFXw49cTSgQM4Zo.epvn/2XZe','USER'),--qwerty
    ('Yetty','Ludford','Yetty_Ludford@epam.com','$2a$10$LVwomi9dIHbDUObQpnhIVOgWJfB3LOuy1Z5jZMMhHZ9o8ZCzse10C','ADMIN'),--lastone
    ('Romola','Alflatt','Romola_Alflatt@epam.com','$2a$10$S85tUl/JiwrBxGz94rUQj.9Q1FY8SHmiprMpgKTlxWnb3SjHfIsoy','USER'),--1234
    ('Silvie','Greally','Silvie_Greally@epam.com','$2a$10$tuPAB/.JEb7LvHsiC0dg4e5CeAZZUHErUjP0UFIkOjPE.iowbCaja','ADMIN'),--somepassowrd
    ('Cordy','Whitrod','Cordy_Whitrod@epam.com','$2a$10$J0.5n5hkFKJ.b/eYCKwSheadZYgc9mAP5zbPuqLCgs3d536enHMMW','USER'),--somepassowrd
    ('Thedric','Rebert','Thedric_Rebert@epam.com','$2a$10$RHMBNU9QXPS.gYPONrx..O7pjYAeXwnhr42Tm8LN6KA01W7QGv902','USER'),--qwerty
    ('Kerrill','Lasselle','Kerrill_Lasselle@epam.com','$2a$10$KKk/ip3rpaOnA4yrkqAV0OTuXcIo.2Pxd5lKsLWrqwEIqQcAFgz5O','ADMIN'),--1234
    ('Bride','Bassingham','Bride_Bassingham@epam.com','$2a$10$1ATsJHVTRFBGS8TeCPrAPu1KSmPAWvbyHlbBRkpWLMDN8OStr8VCW','USER'),--1234
    ('Elly','Ilbert','Elly_Ilbert@epam.com','$2a$10$gQRV.67NMgOdbQXXeMm6U.rYaQ8paPMad/iT8Qi8XClnFooweTuae','ADMIN'),--strong_value@$
    ('Silas','Lauridsen','Silas_Lauridsen@epam.com','$2a$10$V3/OS/3S1ffYErJ.Wx8NteNjSUe6.GGBncyveyLcXEvkCpUnNfT62','ADMIN'),--somepassowrd
    ('Britney','Doiley','Britney_Doiley@epam.com','$2a$10$ERwAa81ToyzsZQJ/YVsp5OuPXC9r5rHQN2N0j2v71l/poEVBxxZje','ADMIN'),--1234
    ('Auberta','Crotch','Auberta_Crotch@epam.com','$2a$10$WZBlbP48S96lvdE2MOqal.MpD710OfVfKX6zbJw8BJUmc0e4b2S7a','USER'),--qwerty
    ('Murial','Bowness','Murial_Bowness@epam.com','$2a$10$3E/.MO6bIE0GVa85wP30nepw6fD5htqnGei6f06FwGIpdLwTeDvbO','ADMIN'),--lastone
    ('Elisha','Colqueran','Elisha_Colqueran@epam.com','$2a$10$cQbYwB2YgNGo00o92w./FOchIbbvad.AVrgB4zTiLleAKa11RbfyK','USER'),--lastone
    ('Ginnifer','McGiveen','Ginnifer_McGiveen@epam.com','$2a$10$pWF3K/9F3U50QT7VvySFYObKLmg20RcMlNlCqukfNd0hjWcHLhPnm','ADMIN'),--strong_value@$
    ('Armando','Fold','Armando_Fold@epam.com','$2a$10$uFTDh/L2aypqBDCVMMlWV.iJGfNb12Bw1lfmQ6UiFI3v6xA1uVo82','USER'),--somepassowrd
    ('Jeff','Pietersma','Jeff_Pietersma@epam.com','$2a$10$GuMWcWwXq7bN3tOQGtO62.w/Hz1UAIyjViULMevik6lhu8coAknHG','USER'),--strong_value@$
    ('Deck','Nassau','Deck_Nassau@epam.com','$2a$10$Im5KQ0DvsGx81by9BPWK1.0vDf5WN63aId1ew2SFxd3MK.HR9c4aK','ADMIN'),--1234
    ('Upton','Gadault','Upton_Gadault@epam.com','$2a$10$zi2J1jd/ng4UplLzuU7KRu80f2hzSyr1FNZVPfXRVVwBPV9uVksDS','ADMIN'),--strong_value@$
    ('Fan','Gilley','Fan_Gilley@epam.com','$2a$10$p0UQoO5SbWj3LBEsieSj9ewwZ7xGS2ZQORIkrDubonGA9HJDnn3IK','USER'),--1234
    ('Fairfax','Danzig','Fairfax_Danzig@epam.com','$2a$10$sq1uhaN2Gv8eNwzuvwcBz.tzOgK24qUEiratXDbwTkrkn/FCsnJme','USER'),--strong_value@$
    ('Svend','Seedman','Svend_Seedman@epam.com','$2a$10$kIpIYHwnfRaEnL5ABvpf0.bTtSMmTr88U5Aizsy.mSsf.7djVpcre','USER'),--1234
    ('Inessa','Treadgear','Inessa_Treadgear@epam.com','$2a$10$bCnj2mGhBYUbzsh77EV2hOQQSOy9AGGp8T2eRrEyrQpe0jReFvM7y','ADMIN'),--somepassowrd
    ('Joel','Lennarde','Joel_Lennarde@epam.com','$2a$10$mqTLvpJ0jCcAmddj1i09s.5B5smsqejMJRDztlvwodAI2hRH6Ycyi','USER'),--somepassowrd
    ('Arman','Darben','Arman_Darben@epam.com','$2a$10$1Mr9QFUzVew4bBIVTfsg5uvuEXIrQkfPDbPF1ziEX92PXc4xZQ.OK','ADMIN'),--somepassowrd
    ('Maximilian','Lee','Maximilian_Lee@epam.com','$2a$10$rGB6xrpOEPiuuomtFGDPkO4Q1VzmuJmXXa73pNSEX8i8dEmShmas6','USER'),--lastone
    ('Roselle','Danslow','Roselle_Danslow@epam.com','$2a$10$Nn9K3MWw1VAkjPqq0xjAX.b4hiVkM7YkYPlIJwQEVPkg.OjuTPo5i','USER'),--somepassowrd
    ('Waite','Joysey','Waite_Joysey@epam.com','$2a$10$ksO8naLlAuT6gmphRJymo.CiCeWZGsXUfNHW8nCiLhPkAcaMT3WXu','USER'),--somepassowrd
    ('Noby','Warratt','Noby_Warratt@epam.com','$2a$10$IA0DhGhr6ODEl5B9XyhRmOc7vaHhItMQqj1Q2.LVEssiEsV7LYNPi','USER'),--lastone
    ('Lorri','Forsey','Lorri_Forsey@epam.com','$2a$10$d.MItJ2hbIAN3PekLmT9TOCa8HnnXgD2U2Hwac0ATtTViiPEkkoZC','ADMIN'),--qwerty
    ('Holmes','Claridge','Holmes_Claridge@epam.com','$2a$10$9tjYNDk.4kwQBCVkkVlZwOLAqbbFGKPRVV8rHlJB98CPB0DyMn7VS','ADMIN'),--lastone
    ('Syman','Nystrom','Syman_Nystrom@epam.com','$2a$10$ACw3KtW2FG7pAftKT815Oe7xN07STERnDIp2Qr0ERRvJolGLTFaTG','ADMIN'),--qwerty
    ('Alika','Doy','Alika_Doy@epam.com','$2a$10$zxlBJjzphIgWhHD.ju1p/.kMrbUUpub4UzrsUtF86kDJsdTpm5A/G','USER'),--strong_value@$
    ('Tomaso','Musso','Tomaso_Musso@epam.com','$2a$10$vj5.U9C76A9/8YV/uzRZ.e9V3IGlM66IK5SSTHMQgY7gmoipPR6ua','ADMIN'),--1234
    ('Berrie','Abrahams','Berrie_Abrahams@epam.com','$2a$10$8i30yLoolg9eprxRVUZ/q.ojs.LOiy3h8PlCagV28t/H1m.SedQBi','USER'),--strong_value@$
    ('Jedediah','Cattenach','Jedediah_Cattenach@epam.com','$2a$10$1gaAuOgH8LFF0hNLZQY8MeGlGvSDnAgQu2ynXraIjMvDNzpgUji6m','USER'),--strong_value@$
    ('Humfrid','Garstang','Humfrid_Garstang@epam.com','$2a$10$LHPGSnxkzZ/MVTVKVn/yjOCQMW7hi80WAtHR75K1lNgPDlWK5eqAO','USER'),--1234
    ('Gale','Osgardby','Gale_Osgardby@epam.com','$2a$10$qd/T0onIbJMlPZLYuruQ/egMgvJBVnJpUWq87/lT2GVqxHIexFPym','ADMIN'),--qwerty
    ('Welsh','Greason','Welsh_Greason@epam.com','$2a$10$jnY.MA8iJyFg/iGdvDNtsu4PQUsdTEUpC..V5.QMLlCRksIX23QRe','USER'),--qwerty
    ('Harmon','Velten','Harmon_Velten@epam.com','$2a$10$hWhxS22QSJGth1hnLfsAm.z2Eq.UkermNd4Yc6bZSbRtGvwQSSLO6','ADMIN'),--strong_value@$
    ('Camilla','De Biasio','Camilla_De Biasio@epam.com','$2a$10$T3qEWveW9OEh5vlvch8T..Tv6ixn.psqu4tNf7g1bBhz5luPP.8DK','USER'),--qwerty
    ('Helge','Ogelsby','Helge_Ogelsby@epam.com','$2a$10$e1Q0dirHC66HXTjOvWxyi.jTovY7IMWSV39J0fiZhtVzeDDe43xsa','ADMIN'),--somepassowrd
    ('Kora','Baddeley','Kora_Baddeley@epam.com','$2a$10$HZ83BY1e4SF/PpBGnGno5.Lph94StezrbLNlNHiJeSxnlVobbaAKe','USER'),--lastone
    ('Erv','Golly','Erv_Golly@epam.com','$2a$10$jGdClGckawvvrrNyMZChYOGcE.87UKco3Z/KdKztb8sHz0u/PcbTy','ADMIN'),--1234
    ('Germain','Darragon','Germain_Darragon@epam.com','$2a$10$xxQrDm3DBCfQ6Kj52QtyneOXTRxrRrTq45jKQWyuO7wD6sdeIe5be','ADMIN'),--somepassowrd
    ('Darcy','Crichten','Darcy_Crichten@epam.com','$2a$10$ivClCOchSd0p.0fpOFg6k.wJDIDU5bA3/mLWGp0I1cojEIAoGdEgS','ADMIN'),--strong_value@$
    ('Finley','Boocock','Finley_Boocock@epam.com','$2a$10$sYx7Yvs5giE92PNggKLAhe0Gn2ERUaQlZo33TNlspJ.vdlxqjAmfi','USER'),--1234
    ('Dacia','Hewins','Dacia_Hewins@epam.com','$2a$10$8FzoDrS1UgYwlxfZvxvS5uk4g/nCWGyf4dF/uPjWdvF3EnPcp4AKi','ADMIN'),--strong_value@$
    ('Rutger','Royl','Rutger_Royl@epam.com','$2a$10$Uop3hSbWPa2syvxjqIaG1ugQyYllK5JYwimFvMUOwgCw/w./BewNK','ADMIN'),--1234
    ('Cesare','Grisenthwaite','Cesare_Grisenthwaite@epam.com','$2a$10$67pa3VqK/qS/omNLLd7Az.n6mFgZsojLR8T3TeB3rQ/KXPIKQazSC','ADMIN'),--qwerty
    ('Abby','Odams','Abby_Odams@epam.com','$2a$10$PfSNNEU.I62uP5zBA.Y6SORLbpPZIXwcs8l4nqCFPWe.N4u6T6q2u','USER'),--qwerty
    ('Enrique','Pryce','Enrique_Pryce@epam.com','$2a$10$e70FufWQaFChRLUA/M94ne4AKsHHy5Q15i5gzwnSgUUaHOZDaZBl6','USER'),--1234
    ('Ichabod','Bozier','Ichabod_Bozier@epam.com','$2a$10$GxMKkTKby1fchU8WNVFG6.qcyCFDtRPBWHLpoAMw.UWF.dBktc8pe','USER'),--somepassowrd
    ('Guthrey','Portsmouth','Guthrey_Portsmouth@epam.com','$2a$10$mlmLgnUX4yWAF3RA2Z8LoOMTGRLrm6x.hliV9UxwABY7aoAbxuvki','USER'),--somepassowrd
    ('Faye','Guilleton','Faye_Guilleton@epam.com','$2a$10$w1lcgfqC4pt6OmF2G0m4sue6luhr4UNfv8N4ZVfPXFnN3iIz99Gqq','USER'),--lastone
    ('Clerkclaude','Battleson','Clerkclaude_Battleson@epam.com','$2a$10$5jRazWvEIIxVytIfYwhxiuGRNUaqcNLdg1wUtKBcZbcbhfgKVk06S','ADMIN'),--1234
    ('Simone','Beldom','Simone_Beldom@epam.com','$2a$10$PPREa8ovXEI03B/D/6vkj.BHbLfYE9dBp2ydiD9Ha2jugL6j8ftjK','ADMIN'),--qwerty
    ('Anderson','McPike','Anderson_McPike@epam.com','$2a$10$KEEyp34pR64N1bVfxh9R4uQvp7utT/6pCt1IRvt9K49VzajWMvOva','USER'),--somepassowrd
    ('Harli','Codling','Harli_Codling@epam.com','$2a$10$NT/OO2cyyCciqbBrYkliPe7kvqbusZ1etXHuVS7/wUtcKjmsRieQu','USER'),--qwerty
    ('Josephine','Chestnut','Josephine_Chestnut@epam.com','$2a$10$51kgEb4lo.kb3fepkm.zben5t82fnn8Iysrb.B7E7/1o6Q1Pq4JnC','ADMIN'),--qwerty
    ('Luke','Jirousek','Luke_Jirousek@epam.com','$2a$10$Ta/6oqGgFMmKT7lN/5eGkeOAvq2xo/JtkajgL1AchsaOoPlky8Rjq','USER'),--strong_value@$
    ('Theressa','Human','Theressa_Human@epam.com','$2a$10$lS4.3JndSkoHrdXzFlLarO3PLL1y5im2IO39.UErPQhawzKf8jfRu','USER'),--strong_value@$
    ('Starr','Isenor','Starr_Isenor@epam.com','$2a$10$DyxaMKeitjUxxFq5inc59e64PIdx0xR3fIUMdRzOxWzKTYeXZRtou','ADMIN'),--strong_value@$
    ('Chrissy','Dalrymple','Chrissy_Dalrymple@epam.com','$2a$10$xCB.zUNYDUpi7j0uZhl2suJkAhCYo1Jo.cS5P2AAKLbK27UO31cjy','ADMIN'),--strong_value@$
    ('Chandra','Wyrall','Chandra_Wyrall@epam.com','$2a$10$brLoiq8xfPWJYcIVliE3QeIZJ/wJmRi1qoWn6I9ODZ9t2.CZ6IAm6','ADMIN'),--somepassowrd
    ('Gretna','Trank','Gretna_Trank@epam.com','$2a$10$2f4EWyBFNjiBSikSrMIwU.WaQRHJg3OJLLbQHFa.N/80pI9yfAus.','ADMIN'),--strong_value@$
    ('Twila','Gowers','Twila_Gowers@epam.com','$2a$10$2rMhR3VMZjK8Of.qXgXds.492sTVsYQNAyZ7GW3b.JHdlzFxPlQkC','USER'),--strong_value@$
    ('Lianne','Dyter','Lianne_Dyter@epam.com','$2a$10$PkA17qvFK.e5VcGRgGOnPeJMDxNdDs3KwBfYunNff0iD9yq/uXf56','ADMIN'),--1234
    ('Derek','Laddle','Derek_Laddle@epam.com','$2a$10$nHz92c4s3HLO/rAH9ZKtKOvxoob49OGAyurUsil6ql.eDpPCaxUAS','USER'),--lastone
    ('Linell','Birchall','Linell_Birchall@epam.com','$2a$10$cRpcBudqN8NDIATxh2TVCOyHMswRf.gmzrqEjnetxew.0XGRaEJiK','USER'),--1234
    ('Hyacinth','Espina','Hyacinth_Espina@epam.com','$2a$10$JLAHQfmk0aXmDeqxGBqlGeM88IEdRhK42j.K6MJlydcUq6x4dlM6y','ADMIN'),--1234
    ('Ilyse','Keasley','Ilyse_Keasley@epam.com','$2a$10$Ts/jPO96qfi4NVc7jescMuqrvXleuCxcLIy5etB6RIQjYIGMNSWn2','ADMIN'),--lastone
    ('Vachel','Capelen','Vachel_Capelen@epam.com','$2a$10$uswg9h0KH6vF2kh3sT2GeOJAb8WUgqC664SWbwGoXUH0.TeNBRdLa','ADMIN'),--qwerty
    ('Kellyann','Liebrecht','Kellyann_Liebrecht@epam.com','$2a$10$89Qtm4ENbApI3Zm4DcAKxOYlN88MB8TmIoA2QUEPm27P8JYZqX7di','ADMIN'),--qwerty
    ('Ashby','Stratiff','Ashby_Stratiff@epam.com','$2a$10$GFkhN.1HkUp3CQYxiLl54e3y9hHK5wmqyi6IeSovZ1YK9Qo3.g3Ta','ADMIN'),--qwerty
    ('Matthus','Walshe','Matthus_Walshe@epam.com','$2a$10$0ygVIjlhRLiBovdXpmVYa.pp14fNZRodDG9IVrscx8fTWWrUiSWtS','ADMIN'),--lastone
    ('Dollie','Missen','Dollie_Missen@epam.com','$2a$10$Zp6fnzY6jDVKanFr6oniY.dStfuxAHX.MTHoA2H55Jp3yQvlOkqIq','USER'),--lastone
    ('Shirleen','Lowthian','Shirleen_Lowthian@epam.com','$2a$10$Tq0PKnkDidpAyZkGBPj1Ru.7K73Ikopr7uqRaGQX4/yDZ1dfMnSfS','ADMIN'),--1234
    ('Pearl','Huske','Pearl_Huske@epam.com','$2a$10$NKgjXBrsbkSkbgTZCMVio.LC6Bfpt8HrEQsUEDp1VRgWA45HIIC2K','USER'),--qwerty
    ('Alic','Crank','Alic_Crank@epam.com','$2a$10$rLPvgQsba546jiffjoN6e.p74hT4nSmXucuu03qsr7PthYRS1PBsi','USER'),--qwerty
    ('Haven','McCutheon','Haven_McCutheon@epam.com','$2a$10$kJ.BnZ70HzWy7ToaZKaMK.kRPsOiAGL7oizS8XuqRjotGbwbw0Kxe','USER'),--somepassowrd
    ('Harman','Hrycek','Harman_Hrycek@epam.com','$2a$10$BcFSkw7zLQ5cr6xuNIkzUuPuo6C7AN1Bj/A2nb6pbULYO6O79fliG','ADMIN'),--strong_value@$
    ('Roseann','Alp','Roseann_Alp@epam.com','$2a$10$vvrrzepdtqh7R80n9nhWUu6eNyjot0RAtHXVP.9zAhfJb4DeARMgq','USER'),--strong_value@$
    ('Gram','Chenery','Gram_Chenery@epam.com','$2a$10$f2FoeaJQnaAIwEEX/9wZlurHWSlbp.rdIMUxoN/cBAqLPgB4ixhZW','ADMIN'),--strong_value@$
    ('Prudence','Hulme','Prudence_Hulme@epam.com','$2a$10$usZRahtyg9XltWS4c2DorefG6FOaPGR6jM31P09hN1uKcjrj0oA7S','USER'),--qwerty
    ('Amalea','Hartill','Amalea_Hartill@epam.com','$2a$10$oIt/hk01vsR9X.fdZwruFeCKf67emCGNeZdW2HzCl3oQNi5dV1qXy','USER'),--strong_value@$
    ('Brynne','Bottoms','Brynne_Bottoms@epam.com','$2a$10$QHk0w8xkekN9l7Zxi1Gc8.019qOzPQzp2OwMbBJBuvj1rQh.pDbNe','USER'),--somepassowrd
    ('Di','Borles','Di_Borles@epam.com','$2a$10$ZNIYzijgiy73pWF6FLqc3.KZgK0IxuC.62ZRLchir7HvAkbY4G4li','USER'),--1234
    ('Dorena','Sherbourne','Dorena_Sherbourne@epam.com','$2a$10$r7bzrcapOqhaOJEi.vOvaeBqlso7JWujC/AcMlA3tAro9FdOBRJky','USER'),--qwerty
    ('Cathrine','Kindon','Cathrine_Kindon@epam.com','$2a$10$2BvVgaCesmKJbkCDp/667.4vRAUI0iu4/2EgpC09m6Jn3/9oMJOGe','ADMIN'),--qwerty
    ('Jaye','Ren','Jaye_Ren@epam.com','$2a$10$cASrFOz2MsrJLIn0s5sruedOx9Oop9Jf1PDVvX4nCRrleaMoKtqRe','USER'),--strong_value@$
    ('Nicolas','Dwane','Nicolas_Dwane@epam.com','$2a$10$Qayb6a2R8WiQrr9VFN/KeOSpALQ25/iTcJR35rs2m1ErD2ctAzh9G','USER'),--1234
    ('Conny','Monkeman','Conny_Monkeman@epam.com','$2a$10$mhrNqSeNfU2VTZCry1nd2ebqzFYmxvzQ38fobI15qxAhrgzFdkRve','ADMIN'),--qwerty
    ('Franny','Curran','Franny_Curran@epam.com','$2a$10$6oZvm5pGvF/C8XxQFz/K7uAUjfWxlX3NFDOPsb8FjLcH/bbigDoqS','ADMIN'),--1234
    ('Guthrey','Ivanishev','Guthrey_Ivanishev@epam.com','$2a$10$Mtzx7j1IzJsoQsyMmjUsyuuvxnxJT4hTrPKh9Ad1mzNz/9w2.Pd5i','ADMIN'),--strong_value@$
    ('Allis','Bolstridge','Allis_Bolstridge@epam.com','$2a$10$AVIxJyGmN4qPAZAWT8F1e.OlS/zp9LchMdaSI/LMaub.G9gDmxLF.','ADMIN'),--somepassowrd
    ('Anett','McCorley','Anett_McCorley@epam.com','$2a$10$DjvIrmFQEmkC6V16Sh0dRuE2IgXGqfYhfaUjjzylXdrugcO9GZ/oq','ADMIN'),--lastone
    ('Cindelyn','Culshew','Cindelyn_Culshew@epam.com','$2a$10$GTjsu7INOuWzPFHXxgSccugXFjcGTy1ThCjr292DCcNKgbPzASn5G','ADMIN'),--1234
    ('Julienne','Bolter','Julienne_Bolter@epam.com','$2a$10$WrX5bhrHt199qhfyXLmJzeliQt7LkfTlNbyXsEzf/HPV/wodXJLk2','ADMIN'),--lastone
    ('Bethena','Siberry','Bethena_Siberry@epam.com','$2a$10$zg6WxkCfPTsdAPnirr1kfOxnQtSZF7o2OJUa0XNRa58GSlWwCSNAG','USER'),--somepassowrd
    ('Barrie','Vyvyan','Barrie_Vyvyan@epam.com','$2a$10$RaegYhKrR/LPfBXRMxz/8.xg9Lan1GlmALeBWpkAV1a5HHwmCqji2','USER'),--lastone
    ('Eilis','Streets','Eilis_Streets@epam.com','$2a$10$4tTng6kSVx1q690J1KpDquXtxd8g3gzqkOUVLppGI3.j9ckpzxkza','ADMIN'),--somepassowrd
    ('Curr','Marlen','Curr_Marlen@epam.com','$2a$10$DuJT0eE16boBQ67PnoMI0uB421RfElSJBkX44R/CRaFAt6SJ13GZG','USER'),--lastone
    ('Suzanne','Fishe','Suzanne_Fishe@epam.com','$2a$10$BebQ8JkwYNvAB03eVCyszug/HopT3XZ6NAjIu0j/WGW7BDJM899ry','ADMIN'),--strong_value@$
    ('Calla','Summerhayes','Calla_Summerhayes@epam.com','$2a$10$GY3EQAUny.dRkBJS1d5JlOIrP1.kpPo20kSBVkYuWwd5P.YsZgv0u','USER'),--strong_value@$
    ('Erasmus','Petrasek','Erasmus_Petrasek@epam.com','$2a$10$joeDvmCG7rc5uw4GriQkoeR6RS4LxE5w/luU6LZ33cUDeOuOe1qUe','USER'),--1234
    ('Levin','Dugdale','Levin_Dugdale@epam.com','$2a$10$DARAPJt3W4C/3C2sOHjh0.TJfxyGSZdXmB1.gHJofc7m723PMG/V.','ADMIN'),--qwerty
    ('Nadine','Younglove','Nadine_Younglove@epam.com','$2a$10$cbaUFMr0.nt10qUpbyO1Muy/kPfKziCkdRbuwKFpyX6ZvFLm/cl02','ADMIN'),--qwerty
    ('Donnamarie','Foan','Donnamarie_Foan@epam.com','$2a$10$sUpC3moPj3rT9qbBuGNGTOl6OWKH/1e3kgOe6qUOXwU1dCQSpR6hO','USER'),--qwerty
    ('Ange','Muehler','Ange_Muehler@epam.com','$2a$10$cCCnq.32Pq6WK2u.x7Hc2..5mTmfB/9DmH2VgP9/ZhBH.51Op8uE.','USER'),--1234
    ('Laural','Howgate','Laural_Howgate@epam.com','$2a$10$sFvukB5vTBzgUPdSeBU/UuVdmSJspplmzMfx/Zb94z2CJk4AotGSu','ADMIN'),--qwerty
    ('Ambros','Ainsworth','Ambros_Ainsworth@epam.com','$2a$10$WMbWf3vWcV9msjyghMXu2OBfiWCwZZkHgJE2qpnY2yGOJx5a8.0ES','USER'),--1234
    ('Perrine','Jarry','Perrine_Jarry@epam.com','$2a$10$k5oJKZA8WxlDRlqWSjmB3.AuOJ7teRAXt3EtfApLDA2GBWH0onoNi','ADMIN'),--lastone
    ('Saundra','Jacke','Saundra_Jacke@epam.com','$2a$10$JUCk2XGJmOswaky3Vebuv.6dT1DjQVKTDOUkOVxke26kiZp8WE6Pa','USER'),--qwerty
    ('Maggy','Stebbing','Maggy_Stebbing@epam.com','$2a$10$KjdO8O2RgWw/8BPeGIMO0OciqzaYmSiVcUdle9h/wGrapKANG3A86','USER'),--lastone
    ('Domini','Munt','Domini_Munt@epam.com','$2a$10$OU7ZPEuRY510FHX1Q1/EIeiXYfKp8ZPR.xz00CpWM/iezppcyFhwK','USER'),--1234
    ('Angie','Gitthouse','Angie_Gitthouse@epam.com','$2a$10$fi3iia16x3e6v9AcdXphw.JJ5a57YkWbF8VzSJxi.BpE.btJmFEsG','USER'),--1234
    ('Kimmy','Daubney','Kimmy_Daubney@epam.com','$2a$10$w62wllNTMdZo8/vrchGkbelrEdUnwGA0gkq6D81KwxTyRB0bI6Hc.','USER'),--strong_value@$
    ('Abby','Carrington','Abby_Carrington@epam.com','$2a$10$VziFvogD8BDRQ6JtD2QQaerfM5JEBOdHmKg6iJEoD7SMa/pbESCLm','USER'),--strong_value@$
    ('Zea','Tokley','Zea_Tokley@epam.com','$2a$10$hFAAYQk4i2hiv5yuep8ZOu2t/0YKp8AxYdqjpemzqkA8f8/vvHJhS','ADMIN'),--strong_value@$
    ('Morlee','Hankard','Morlee_Hankard@epam.com','$2a$10$iWLXpn1Pyx2AAfw2QGD0meubFE34Al6GNP.V9iiNvl1oTHjyDPHre','ADMIN'),--strong_value@$
    ('Tobe','Cossom','Tobe_Cossom@epam.com','$2a$10$LpO47tcP5HiNOhH8b1zM/OAq8O8poLvxCrlQNnHk5NuNPR.RCK3Ge','USER'),--lastone
    ('Grayce','MacPhee','Grayce_MacPhee@epam.com','$2a$10$QztuFe4t//e6byGQigzlDusUutu25zGMzb8C.3akx6qzr1UVmmVyK','USER'),--lastone
    ('Inger','Luna','Inger_Luna@epam.com','$2a$10$eSzdRWja1X.0YFYx160uyOYSGppsNP4aPTbPqsKUkgmdnd/qoixLC','USER'),--somepassowrd
    ('Randi','Mansbridge','Randi_Mansbridge@epam.com','$2a$10$srbR/CtIhTasynEQ92QADuD6pGwFjWnihMve2ZQeoB2b0G/mDVzBm','USER'),--somepassowrd
    ('Shaylah','Waggatt','Shaylah_Waggatt@epam.com','$2a$10$h85TFMqOI2kNNzCiaYnbS.EUkh7IqKjpIIdl2B4H42PmVHxJ2tMd.','ADMIN'),--lastone
    ('Darcee','Lakenton','Darcee_Lakenton@epam.com','$2a$10$oqkbKeTINhjZ4BuoffpKm.AtotIsN/wmXLIDPIe9S30s0QZ34OZB6','ADMIN'),--qwerty
    ('Clarabelle','Bilfoot','Clarabelle_Bilfoot@epam.com','$2a$10$f2t5dhbCDr69gUqtVIM7IuV/9NJC/PO0MjPG1vg8NesncobU3.Dqq','USER'),--somepassowrd
    ('Sherlocke','Gullan','Sherlocke_Gullan@epam.com','$2a$10$0oWAhmDUlMwsl/nAL5K3FuJpHdC8LVc8y6hdtpoTV2pmngZpvyBH2','ADMIN'),--strong_value@$
    ('Suzi','Waggitt','Suzi_Waggitt@epam.com','$2a$10$cEvaOIurrEZ3GUi2kfQgqe925J2ei4Ipce/tgSNm/WmbKMQSSwlUi','USER'),--lastone
    ('Jervis','Blesing','Jervis_Blesing@epam.com','$2a$10$Rs8B/5stXWz3Al2zjzvAP.89cN1N4Xcj7iEixcjkHO0uUUYm5tlka','ADMIN'),--lastone
    ('Belinda','Springett','Belinda_Springett@epam.com','$2a$10$05HdBds5MaMbBLB37NLNe.yaqSsa/wfE88caqSq.Xnd9QzypQ4hye','ADMIN'),--lastone
    ('Gibb','Lusk','Gibb_Lusk@epam.com','$2a$10$4isaPgvJZ8.uOnG7zB.TiOCe.S7XijdTbDHs08k4kq.KmNSTzjY.W','ADMIN'),--1234
    ('Wallis','Lassells','Wallis_Lassells@epam.com','$2a$10$.TB3dVcALcBBQZe0AMvcmeTcdyVbA1w371KDHK4N0okBaMqvhyVti','USER'),--somepassowrd
    ('Isiahi','Bentley','Isiahi_Bentley@epam.com','$2a$10$rray3qnFg9BUv9347/yTk.iRgC5Qj6x4qy1C1nZQCy/.4k.FpCxx6','USER'),--1234
    ('Lynnea','Defau','Lynnea_Defau@epam.com','$2a$10$WEnqe2Hbt3DljYUMTrC/Gutq57TkeEovRN9KdwmXh8tk/Yfh9zVEi','ADMIN'),--1234
    ('Arlan','Bettridge','Arlan_Bettridge@epam.com','$2a$10$Bw57tn/Rc9fauND3dOrlyOm2QXG1MIbAirJWtnpnTb7kzkHSQCoDu','USER'),--strong_value@$
    ('Rina','Mews','Rina_Mews@epam.com','$2a$10$gmJ/a3ix9rVZFQHSravgvem.P1hr5CF8HTCGUrSZ0q6q0jIoIJW1O','ADMIN'),--1234
    ('Atlanta','Corbert','Atlanta_Corbert@epam.com','$2a$10$PTK3TPfPC/9G.SAyvPJMu.o3MztSy9wAqQ7EgzLi1MPMRsEH1F16a','ADMIN'),--strong_value@$
    ('Nelle','Nelm','Nelle_Nelm@epam.com','$2a$10$r5i58flZ8J3aXvfakemrqO5E89IElMz6FMsI6kZw8rkVn7ztaFmmK','ADMIN'),--lastone
    ('Calhoun','Costanza','Calhoun_Costanza@epam.com','$2a$10$hWmOGMCHkcUWbIrcO6j5JOMzw6AUiFQ.o2reVKWz8KTR5nKcUeY4u','USER'),--strong_value@$
    ('Rogers','Yuryshev','Rogers_Yuryshev@epam.com','$2a$10$AaV2sA.sqWRSgldGzg7dpedT3LaXJ2i1TB0IVCu/EormRNf6AeTpe','ADMIN'),--strong_value@$
    ('Rosabella','Decroix','Rosabella_Decroix@epam.com','$2a$10$iK38a81PZAWSKHKTmxVgJuGAmEGDuvxjpnFTLrW94CRwOwBhszfrK','ADMIN'),--lastone
    ('Farlay','Skirrow','Farlay_Skirrow@epam.com','$2a$10$/G9TejRGGDxfg32jBagAg.2huSDHxcmxxZzBk62w0hg5Oqk6MA8RG','ADMIN'),--somepassowrd
    ('Jessey','Gamil','Jessey_Gamil@epam.com','$2a$10$ByVFH8w5bBjnEyp48jkxFe809NmIyCfLjlh5wx/6f/cNVMsfQc7Li','USER'),--somepassowrd
    ('Linda','Whereat','Linda_Whereat@epam.com','$2a$10$RDdIToMzwGoAyIAHF6u1QeG9k.wnY2n0XTgPwPTExS6xFW6yPEWtm','ADMIN'),--lastone
    ('Harmonia','Sprosson','Harmonia_Sprosson@epam.com','$2a$10$ImGg0N/47Kn/K2BjTdzleeifx2Zf4cNngrnFjDfS8xDpFgfEPTlCW','ADMIN'),--strong_value@$
    ('Jenilee','Camerana','Jenilee_Camerana@epam.com','$2a$10$SYuKwbwCJu9EnsMcdiH3wuiwkeBZKSQDBjtXujtq2Y3QWKFcGlYX6','USER'),--lastone
    ('Vanda','MacKowle','Vanda_MacKowle@epam.com','$2a$10$Gkhj14Y8HqUKFJUqILD4Ve7209zecG08veMbe4qIeT2ZavSraudMG','ADMIN'),--strong_value@$
    ('Joela','Pickover','Joela_Pickover@epam.com','$2a$10$qW4k5YqlPEg6WUvD9N3u9uDSixk3bl7cTGgZPJA2qU3ECk4cLEzAy','ADMIN'),--1234
    ('Sutherlan','Chamney','Sutherlan_Chamney@epam.com','$2a$10$OrtpzFXIeVP9FKYfz0Uo7.I1pOUjneGVNKCEOLQYlXTyztJysqpj6','USER'),--qwerty
    ('Celinda','Spoure','Celinda_Spoure@epam.com','$2a$10$FwnvclPw4GJAzu9WTbB.dOmXST83ycDyHx7FfiWqqcF7WXlE5ZREK','USER'),--strong_value@$
    ('Cointon','Dwyr','Cointon_Dwyr@epam.com','$2a$10$LH52SrgiXRrnJnW1MV6yEeX1coGerkE1sulrr8kw2HD50fIjbW64G','USER'),--1234
    ('Olympie','Pilling','Olympie_Pilling@epam.com','$2a$10$9L0WiR/5l7H.u0WoNNcChu3/nTYutZGhKE2x8zHW4ZbR/M8o.Rera','USER'),--qwerty
    ('Gregoire','Larrington','Gregoire_Larrington@epam.com','$2a$10$vDoQoYU1GZtokdLa2xfOjuyTkYF9AhwpKLT0heO6FBeVWhQH8raDq','USER'),--1234
    ('Dennie','Bischop','Dennie_Bischop@epam.com','$2a$10$U.lodv9fw/4JsdBHm.z2suDkzxJOz.SsX36MQYQabiDDltQWIxjZK','ADMIN'),--qwerty
    ('Fallon','Wilsee','Fallon_Wilsee@epam.com','$2a$10$NSfycCXK3WtHBFAejMgooOsOF9wfJgBp26OOFiqcDc6Oycsgq4SIG','ADMIN'),--somepassowrd
    ('Dalt','Vedyaev','Dalt_Vedyaev@epam.com','$2a$10$QhTcA/6QtGfuvabEnZOjWOhVT5.B/OEGNux5xCt4rRuhTm.nukTNO','ADMIN'),--strong_value@$
    ('Elsey','Jamrowicz','Elsey_Jamrowicz@epam.com','$2a$10$zPPnqUPZZdDFdj/L5eDbF.MuQ96qH.bKpsb9n9LDCW/uUjNitFT9O','USER'),--lastone
    ('Aube','Benallack','Aube_Benallack@epam.com','$2a$10$7Uf7mFhrHcaL7ZEgKY323.ruqpuZr86d5Un2MLvSEQuKOC8aBFMQW','USER'),--lastone
    ('Nannie','Handes','Nannie_Handes@epam.com','$2a$10$dfS/voD1ONkb5kMjK/27X.MMXALRSUrg..ikdnYRVQJ3oVT0qa/ju','USER'),--strong_value@$
    ('Leslie','Pear','Leslie_Pear@epam.com','$2a$10$tv761XtcY38n8tk9Y813feK0cy6yIkqxofOAEUDP/Yoi9taoBWa0C','ADMIN'),--strong_value@$
    ('Nicolai','Stanion','Nicolai_Stanion@epam.com','$2a$10$6.tzZgoUOYJvPgn.sLpnOOhEjbYwMk6wLFlle.1dtHT5CvkqCj85C','USER'),--qwerty
    ('Rhett','Mowsdale','Rhett_Mowsdale@epam.com','$2a$10$OwrQJOFZRgT0odE8jm7m/..3ds.J2Tj0GFQiBqDelOpkCckR0Fj7O','USER'),--somepassowrd
    ('Ambros','MacCambridge','Ambros_MacCambridge@epam.com','$2a$10$nFKvS/r3F2zitVH3aRyrO.cJNqm3eJgxU4HYv.fgio2OJ9H5T3aFS','USER'),--qwerty
    ('Gabriell','Langhorne','Gabriell_Langhorne@epam.com','$2a$10$aeHJ5VSnUxBEdi/RvaglreSHxosI8kpVTFW2XyhuQB4dUS50y/tSK','ADMIN'),--somepassowrd
    ('Gretal','Polglase','Gretal_Polglase@epam.com','$2a$10$NBXGJIbwfq93JG.j.TORtu6V9UzF/r5GPcQn6/jNXVKHhp3/vQIqG','USER'),--qwerty
    ('Lina','Silversmid','Lina_Silversmid@epam.com','$2a$10$PtBWLeFRNSEMgkfz3u4rHO35WmEZd4Wm0j29eXIYGW.JBupWaq0zW','ADMIN'),--1234
    ('Mariquilla','Crew','Mariquilla_Crew@epam.com','$2a$10$S3YmcuVSJ4JH6IkQSiaPDu61HT3Ht/xohATgJOjWRrUmIChoujgW2','USER'),--somepassowrd
    ('Erasmus','Sodeau','Erasmus_Sodeau@epam.com','$2a$10$ACHikYIbKl.pRRXEaXXKPuutMoetMcmVq..lbTnRsKbIKKIBKgpZG','USER'),--somepassowrd
    ('Augustus','Chastanet','Augustus_Chastanet@epam.com','$2a$10$xpRfyDTw20NML38KLTJShuVDanDT64dXuRNRKrYda9c39Slow7cku','ADMIN'),--1234
    ('Bekki','Conniam','Bekki_Conniam@epam.com','$2a$10$.Nnfclb.3sQsimXJbuybLei1G0.1YvcGIiILxAdklJmfWu6EMpgfG','ADMIN'),--qwerty
    ('Myrtle','Reynalds','Myrtle_Reynalds@epam.com','$2a$10$RBe7VxYc7HdoENQl5uyEP.nH98HRbJ0pWzhkCtPruqobOvBggK/5.','ADMIN'),--lastone
    ('Silvan','Crinkley','Silvan_Crinkley@epam.com','$2a$10$jkrLwX3U1bsoZVc2muJ.MOyaOeo81po9lEShmmq0GNDAlYGQ/8o9C','ADMIN'),--1234
    ('Nita','Fetherston','Nita_Fetherston@epam.com','$2a$10$Jt75w95xcTCLVzYnIRML2Od8VICuZ772yLmA4xWnW1hwIBuuRsUme','USER'),--somepassowrd
    ('Felizio','Diglin','Felizio_Diglin@epam.com','$2a$10$EmndRFyTVsskFCuuJ27Jx.9nugLMS5fiR7bf7lyHs3yu0ovVjC0KW','USER'),--somepassowrd
    ('Kessiah','Squibbes','Kessiah_Squibbes@epam.com','$2a$10$11yjdE31OfNhFb2PBDT4/e9WQ16Rm9Em0Z1EOEvefNeWPfHlAfaxW','ADMIN'),--somepassowrd
    ('Krysta','Northing','Krysta_Northing@epam.com','$2a$10$K0LfNYNGwCye9T78pWdR8e0FSR1kSayViLjA25wcP9pO0x.gbjl0e','ADMIN'),--1234
    ('Elie','Bolstridge','Elie_Bolstridge@epam.com','$2a$10$AY81EyckrZhAXxjp/FMDeeBvkXrOGlv3BDpZytQe6f5ntuCqtmFR6','USER'),--strong_value@$
    ('Elvin','Milbank','Elvin_Milbank@epam.com','$2a$10$sxOaykN/hMCd6DtA7Z8yxubKUGKhQ5dc2XqWm6yqNHjzS.eHHj7py','USER'),--lastone
    ('Bren','Steanyng','Bren_Steanyng@epam.com','$2a$10$JzlWFS3hkJgVRCMAE5L7YeBVVI4HLqMgB18eRdzxDZv1q3d6yVORm','ADMIN'),--lastone
    ('Derick','Kingzet','Derick_Kingzet@epam.com','$2a$10$Jb9srekg8/d6S0NOQeOAJ.fLRULDd7m0W7rcOcRyZjj3CzdNnPreu','USER'),--qwerty
    ('Gerianna','Bamblett','Gerianna_Bamblett@epam.com','$2a$10$/ezJbbFQbv2JePicZf3CeOSu29x0X6QvQVS21qEPST2ZZM45ctV3O','ADMIN'),--1234
    ('Moreen','Fasler','Moreen_Fasler@epam.com','$2a$10$jDIl.A6YU1fHx8eXn5KVleMjVrC5371P9SOp16hopUO3xk./CGryG','ADMIN'),--lastone
    ('Elnar','Zmitrovich','Elnar_Zmitrovich@epam.com','$2a$10$hkoWUy0245Pyww3DJFDwIe4wGSdKdEy0sJPjqGSPTD2sJ5AqwJMx2','ADMIN'),--somepassowrd
    ('Ariel','Berisford','Ariel_Berisford@epam.com','$2a$10$pUDrFNuZDaR5trBH2eQQGu6HKWl0bwr5uE400UWFO5JFdKrWSkSUq','ADMIN'),--strong_value@$
    ('Elka','Moseby','Elka_Moseby@epam.com','$2a$10$q4sC1Qgbr31hUgWlcUgIZ.Aq5/N6.kUEb7wqSV7JBMqw.OmWzmtom','ADMIN'),--strong_value@$
    ('Dallas','Kinsey','Dallas_Kinsey@epam.com','$2a$10$cC2TNs5Q0zdmgNgukRFph.MqCsHzI7pCYwPE7L5l.OYBm7lME/UyC','USER'),--1234
    ('Dorey','Bonham','Dorey_Bonham@epam.com','$2a$10$AvJoutdOdN5WOb44rN7kDubLHzptLllh8gM4T2QzGuyrxYGlTNCYi','ADMIN'),--qwerty
    ('Collette','Pinnock','Collette_Pinnock@epam.com','$2a$10$kvenqgI3BHgqtvRlfOtBAOyeYX4s.6nuqVxtyC5ejX0Fx0WzwXBxK','ADMIN'),--strong_value@$
    ('Elspeth','Ryland','Elspeth_Ryland@epam.com','$2a$10$t24DlPX6RUP3K7zI9PVX9.iWDGab5vRUr76I5CVT3QDlvcdOpIvSm','USER'),--1234
    ('Klement','Dowden','Klement_Dowden@epam.com','$2a$10$kt6Lg/pyfW6/fWAkdnh8ReyXNvc7GJtLUtID7kqDLtnSTpj/3BRzG','USER'),--qwerty
    ('Spenser','Whithalgh','Spenser_Whithalgh@epam.com','$2a$10$0uBaiM0PBEPauNEFlQTpLuo63q4I7IKv4lfQpbOk/FwkW5B8s0jHe','ADMIN'),--strong_value@$
    ('Jarib','Gateman','Jarib_Gateman@epam.com','$2a$10$EELI62GmJb9gR81bGkXyB.p2lV/8sMgHjm/EbrWZQ.RYoXxJTEOH2','USER'),--strong_value@$
    ('Stephanie','Shorton','Stephanie_Shorton@epam.com','$2a$10$R56CyHoXdctQ7HFVC5yqPuzYykHZ.y5MVZB9pkbD.rD.poiVyTyHy','USER'),--somepassowrd
    ('Theo','Birtonshaw','Theo_Birtonshaw@epam.com','$2a$10$H.hBdco8j8KTztyzzcrPWe3BuPGGlYI6XghbLUJAbq71lPkyUNCYS','USER'),--1234
    ('Hendrik','Sudron','Hendrik_Sudron@epam.com','$2a$10$QPdfJ/kAFNwpyamhJ6cdG.7//ChfW4R9PCbIDJbw8SfGkegd9FMA6','ADMIN'),--1234
    ('Lavinie','Fortnam','Lavinie_Fortnam@epam.com','$2a$10$pAM0PFz.DxmC8Nx4X.2vD.rd5iTOlyd4RHx92lBzKYbb6fn/d2ql2','ADMIN'),--strong_value@$
    ('Diahann','Storer','Diahann_Storer@epam.com','$2a$10$mknhVDOIRkXm5roHErSxKeCy.G1wjeNe0yjeV2gEYOsXua58qLr0a','ADMIN'),--qwerty
    ('Nevile','Gommes','Nevile_Gommes@epam.com','$2a$10$SArNmjFYzr9iGaN3RaDbbe.MwZo9tw1KPigk8s5dqBhUMyoDd3AOG','ADMIN'),--1234
    ('Shawn','Aslam','Shawn_Aslam@epam.com','$2a$10$LJh1w9FjyDVvXnw5.ziS8uMC8p.Ohx.DEl9hwdjXjEZj.OUeY9CHW','ADMIN'),--1234
    ('Minnaminnie','Spragg','Minnaminnie_Spragg@epam.com','$2a$10$DSKhIsljxQcOCMhTO2U.9OkFdQp4cpMdA7h7h2/SC0195c9/L6gdG','USER'),--strong_value@$
    ('Cinda','Delacourt','Cinda_Delacourt@epam.com','$2a$10$j5tLkDE2lHNxDgY8XQTJWuBWaXdJjoZuYJ0e1HSzZKFeTUFyxruy.','ADMIN'),--somepassowrd
    ('Keir','Dybbe','Keir_Dybbe@epam.com','$2a$10$c9a5Hsno5xnPtx76n1RrH.tz1v6ntt8WWWdayhmuuUDUAdfOj0Plm','ADMIN'),--strong_value@$
    ('Tracee','Genery','Tracee_Genery@epam.com','$2a$10$LCXXJJrO6f.pYd36bAaDKezZtCbrn/f3tUoEIomTV8pZGQ/28sL3C','ADMIN'),--qwerty
    ('Justine','Hallowell','Justine_Hallowell@epam.com','$2a$10$cwQGpOLhNjaecldci8clAO0x66DirFRKIYp.UGrsvVLxdxKSO3PMS','ADMIN'),--1234
    ('Sylas','Lautie','Sylas_Lautie@epam.com','$2a$10$C9JVCkYyscHR08RUSdditOvPQB3GdPZdBf0fNuMgNJaMBLse88o8y','ADMIN'),--lastone
    ('Benson','Torres','Benson_Torres@epam.com','$2a$10$4OJevjlIw/WthXa2rm3TWO6S/A22FDNw3CApVG8mkwR8viuxRgqJe','ADMIN'),--qwerty
    ('Chrotoem','Castledine','Chrotoem_Castledine@epam.com','$2a$10$bIAZ2Ygl45YMB8S45NVhu.QBk.PCCK9cWu81O91x6K9FA6mY/bsWi','USER'),--1234
    ('Willie','Dicken','Willie_Dicken@epam.com','$2a$10$TBjCd.xoYs7G93xqoQPileTKou3cIrXBBPzNomphOBCKdpW5bn.BG','ADMIN'),--1234
    ('Enrico','Legge','Enrico_Legge@epam.com','$2a$10$AcJoo2FsNoyjGyvsFq2UvuHRens0MwiZxAgAcet/U5jDIPHQeYd9i','ADMIN'),--strong_value@$
    ('Rania','Menendez','Rania_Menendez@epam.com','$2a$10$N.ts78QtOas9qUBNBQB8NuBCdv92GLQpftvZZ6v9n5ie8eDGte1WO','ADMIN'),--1234
    ('Koressa','Chettle','Koressa_Chettle@epam.com','$2a$10$vnGMvhevW9xY.y6ANCtuIOCIuXnYDFe3cBAmyYD/wt0JMnbawjh0.','USER'),--qwerty
    ('Sandy','Gambell','Sandy_Gambell@epam.com','$2a$10$a1aBgCdDF6ImZaOMGAi72e0qcgBOVYPzLX6JqEaeI4zXQtiLCTp7q','USER'),--strong_value@$
    ('Winnie','Haselgrove','Winnie_Haselgrove@epam.com','$2a$10$oi2pTjazAqXkC.4ow4vRJ.ri4OvqSpWvk.gPlAExEbIwUO3RgNKAK','USER'),--strong_value@$
    ('Vi','Giacopello','Vi_Giacopello@epam.com','$2a$10$3BeEMg2vm4A3PWgBr/XRSO25Hx14RqdFRPv7qgoS4NGm8fVY4om1K','USER'),--somepassowrd
    ('Lonnie','Frenchum','Lonnie_Frenchum@epam.com','$2a$10$oeuiU2CMqoyFI2JDTc3Xhu6zC9SpiERfj3qVmLBQHro2r4aPJvp0q','ADMIN'),--lastone
    ('Alica','Cawthra','Alica_Cawthra@epam.com','$2a$10$JHxOPE/N13/JMip2bOknO.zkgtY5Uppzv02BM9suVlTMMJuXZz4Jm','USER'),--somepassowrd
    ('Tallulah','Domeny','Tallulah_Domeny@epam.com','$2a$10$4MTPgNe21hNx3QddO0wvqOjzyoVZBvHWapUaXM5h49FRqmR4YPAem','USER'),--lastone
    ('Celene','Bonicelli','Celene_Bonicelli@epam.com','$2a$10$ufQIxh7Fkkv4VtlisIfPVO4ycoLBoSDUCSjdabG1OVjKWefcOk4Pa','USER'),--strong_value@$
    ('Marijo','Duguid','Marijo_Duguid@epam.com','$2a$10$MPf/QCjBp6QuAsf26A757.2HKBrSs1WrlMfd1XXFQEjq56gzOTbDW','USER'),--1234
    ('Terri','Barrable','Terri_Barrable@epam.com','$2a$10$CPaSjhp6c6bBzsU1Cz924.ht/1KS1LWkW4ygGOs7T383UdAa2Dpjm','USER'),--somepassowrd
    ('Joline','Abrahamovitz','Joline_Abrahamovitz@epam.com','$2a$10$PAkVDdx8ZQ.hE.yWLa2RgeqTl42NcgCGI70sC6Jjkbx8rfvljU.qW','ADMIN'),--strong_value@$
    ('Claudell','Gaither','Claudell_Gaither@epam.com','$2a$10$8Ff0FpGut9hl77szfEvFfObGJ/7fbBYRxK4uvkbCdB/DIQNRPqlnK','ADMIN'),--lastone
    ('Ainsley','Gorse','Ainsley_Gorse@epam.com','$2a$10$jBL/5Gn6lGr0RTIl/8iN9OI3Z0XfFtEp731Daj9CsruPKn71Txjw.','ADMIN'),--qwerty
    ('Freddy','Sprott','Freddy_Sprott@epam.com','$2a$10$VQy5q3swbUrVTaqRPtMRc.yQc3OaIfyWD4SrqyGP0pPrIKE9W6uom','USER'),--lastone
    ('Anson','Jeenes','Anson_Jeenes@epam.com','$2a$10$PIGyd6jfzDDbli1QNVTPSOj9PfwN2zyiYQRwZvSR7uF6yL7h6VZXG','USER'),--1234
    ('Morgen','Shorbrook','Morgen_Shorbrook@epam.com','$2a$10$HfjYFa8UcoWYwCFhPD21kO6zR6FLH6q47NZAA6Mi3Ue8jNF8swr3S','ADMIN'),--somepassowrd
    ('Emmerich','Eastham','Emmerich_Eastham@epam.com','$2a$10$cnZLOvKbdX5ximbx8xXR1OXl4ZSUn.aMSriAvGNLffpSlcH5mKAbq','ADMIN'),--somepassowrd
    ('Buckie','Guirardin','Buckie_Guirardin@epam.com','$2a$10$JWMLEPuLrpRmQhVTA9C9Seus3tiFlWh9k0HDh1MaQ276cr1hCLF9q','USER'),--somepassowrd
    ('Esdras','Adan','Esdras_Adan@epam.com','$2a$10$YB39tDQZczAHkK/dq8vqCu2wh/Sfxn/JFmdlLSGHMZlQiw0vCCB5i','ADMIN'),--lastone
    ('Titus','Ackery','Titus_Ackery@epam.com','$2a$10$2kKsfeeNdl9bmdEVzpg3a.EuQZ6wo1bkRI9fHNbONhbHHeyUWBxT.','USER'),--somepassowrd
    ('Rozamond','Chastey','Rozamond_Chastey@epam.com','$2a$10$dMbkuKDvIqOmigFFpr9vaOtUewRoQLRJY2HEKCEz.YWyraYj.6F2u','USER'),--1234
    ('Baily','Eastbury','Baily_Eastbury@epam.com','$2a$10$pMkYJqSqeUuLfijFU/tAt.PblYpN6436tokWMsWEPzAjQLBE/6jEC','ADMIN'),--qwerty
    ('Jeramey','Keable','Jeramey_Keable@epam.com','$2a$10$AJM8u8/thvXTR020c2WhBuA7JKjgWyVsmG4PVbzOfvwldS/hQ2c7C','USER'),--lastone
    ('Darnell','Deniseau','Darnell_Deniseau@epam.com','$2a$10$F31jju2Fm9J6UlAmIEz8F.tIoia3VOM.ah1vnPmcchzVc7kOFl//.','USER'),--lastone
    ('Linda','Raynton','Linda_Raynton@epam.com','$2a$10$ScPqTqWc/Ulm/aSci8F4eOAnl./VN/XHOdLRcTL5gaxiyGn/0i2qO','ADMIN'),--strong_value@$
    ('Edmund','Feathers','Edmund_Feathers@epam.com','$2a$10$au5Zh7IQrh7wQRWG5Ks3xemgfLlt9vti1gDHp1TGP/5R/tni8Z196','ADMIN'),--lastone
    ('Gradeigh','Formie','Gradeigh_Formie@epam.com','$2a$10$ZFlgZtI9Ic/jTJ9bbdOBmOLfDizL1Wdcb8nAcqhTaaaAE6W4UjPri','ADMIN'),--somepassowrd
    ('Nevsa','Caulliere','Nevsa_Caulliere@epam.com','$2a$10$HU7vpbibpvYq0vOqs/tJOuOMghcz/RfbOTr2fhrJoogOTCTwbRYVu','USER'),--somepassowrd
    ('Tim','Howchin','Tim_Howchin@epam.com','$2a$10$lYZLQwd1PI1xR.3F5d6F6u/LVQranyRxHzWwocqCZ5noDnhV4nWey','USER'),--somepassowrd
    ('Cyrillus','Goold','Cyrillus_Goold@epam.com','$2a$10$RXokuqNZIN2S13TKtphaDOJKVX8avWjpQoy3eitTJLDO/f/LccxfK','ADMIN'),--lastone
    ('Marjory','Steptoe','Marjory_Steptoe@epam.com','$2a$10$DSkMax.DBr8zLhMB1O1aW.Mru0459j/aij1f3eZY4Ys7D4foftunS','USER'),--lastone
    ('Ashly','McMenamin','Ashly_McMenamin@epam.com','$2a$10$bEYEMipOoiM5.sMdy6fxqeqfaysLOMr4dykkgIX.mugL1ceaNl70y','ADMIN'),--qwerty
    ('Monah','Brudenell','Monah_Brudenell@epam.com','$2a$10$HERNpjTxnvFjwoaJvcsy8OiMO5j8KWBU7Y1LPyS2yLB9ueKOF3rJe','ADMIN'),--strong_value@$
    ('Dionne','MacCleay','Dionne_MacCleay@epam.com','$2a$10$CL/TgKqPgozmnrcsd97gTOAWY.x2g0u8HbuBF3a2sca1r7oKyQr9.','ADMIN'),--somepassowrd
    ('Leticia','Greenaway','Leticia_Greenaway@epam.com','$2a$10$SPd4PGiqtzIJ7x1F/9c0tuO1nCVTO7unTk9JuyU/bfGcxXNMSlAte','ADMIN'),--somepassowrd
    ('Arney','Wrathmall','Arney_Wrathmall@epam.com','$2a$10$Gid/Tn5YrOKxd4cgQN7ovO9XcP4Vv/HNeBRSgHrvy8tAqoeoQ/Rwa','USER'),--1234
    ('Cindy','Baynes','Cindy_Baynes@epam.com','$2a$10$0O0x2.eMfmD9K5llOszAl.YWt0SSgSXK5eKkiVttDf.TadRzoJipq','ADMIN'),--lastone
    ('Lesley','Cavnor','Lesley_Cavnor@epam.com','$2a$10$PsFv67eYZQwJ5v8eyvY.b.dEpd2bTUbmDj7VcOGFaL5BSuMGWEa.m','USER'),--qwerty
    ('Seymour','Devil','Seymour_Devil@epam.com','$2a$10$tCUlLKCcQ6Hr1e8lsIqwkerpxGI6trrs83NrFShqO1Fo45tkdYxIG','ADMIN'),--strong_value@$
    ('Sanders','Larvin','Sanders_Larvin@epam.com','$2a$10$NBfmhq.syxbX7GmQfbcuqObnTygmktF02dL65uguDgItcf62r/cxK','ADMIN'),--lastone
    ('Della','Buttel','Della_Buttel@epam.com','$2a$10$Y6mUm8lLl3nnjuaf.sHkI.H745/FYeGFVThPpry73IyYyWK/R3FMq','USER'),--strong_value@$
    ('Ogdan','Rosenbloom','Ogdan_Rosenbloom@epam.com','$2a$10$V3OMbncBpFO8xQ6P/bgzdOX5YNDioEMPlgjtkMbbyLsE0WKzILyfq','USER'),--1234
    ('Avram','Korf','Avram_Korf@epam.com','$2a$10$Y8mOPlVdEchhftpn1FYmhOfiR8Er8bhzdkTCmV2F7J/.XvksJtP7G','USER'),--strong_value@$
    ('Morgen','Mullan','Morgen_Mullan@epam.com','$2a$10$gzGUYhSyZhCoNNL3HmrCpOAXz4t37iwihn0kgeVq42TO1C/jL5oi2','USER'),--somepassowrd
    ('Oliver','Spaight','Oliver_Spaight@epam.com','$2a$10$TpSp5MPpAKJg3I.VCqnI3e/eDfSFs99uJ/Zxz2X0bg.nvhgLJ2YIG','ADMIN'),--somepassowrd
    ('August','Bewsy','August_Bewsy@epam.com','$2a$10$J/Ct76AvyrMn6LvRypOki.p2qF9xj6XzCHmVeqpBTm7LpjsHjkvGe','ADMIN'),--lastone
    ('Nerissa','Reaper','Nerissa_Reaper@epam.com','$2a$10$itE7aTKiCtMj7c4wrW5WLe/pDInyCNizKIMRYDcrqP7eqaWSr996G','ADMIN'),--qwerty
    ('Kanya','Stenet','Kanya_Stenet@epam.com','$2a$10$FoyeCKbD/HgjWUKdzV6B.eYnVucIMtZCyDCqxedZFehtgTY7re.TK','USER'),--lastone
    ('Iago','Hyland','Iago_Hyland@epam.com','$2a$10$trG3sNO061RKdK8r5YtkeuKuKwrLqjqDEWNC.S3iDyp9pXZ/iPdBm','ADMIN'),--qwerty
    ('Joby','Clarabut','Joby_Clarabut@epam.com','$2a$10$eN30GKRYtn7Os7aZQAHqJe9brchoT8/YwwCiuoka4g8AJYj5mGgU2','USER'),--strong_value@$
    ('Ardyth','Gulvin','Ardyth_Gulvin@epam.com','$2a$10$UYGTx1SLdHvwH0hTTZP5K.NKX/ny1m5Z2SvyvdRGTtyNfoeHFlwYO','ADMIN'),--lastone
    ('Claudie','Maskell','Claudie_Maskell@epam.com','$2a$10$9PGBwIDjQN.eTjrFUd4D5.ggJTP0FJhCEK2KWqIejghm6M9rN8iwy','ADMIN'),--qwerty
    ('Rosetta','Toward','Rosetta_Toward@epam.com','$2a$10$BOWQEhDRUGM6ffUKbzMVVu0JxbuhT1fNSHqNw2KSc7gMawcGXm6VS','ADMIN'),--somepassowrd
    ('Mikkel','Sherborn','Mikkel_Sherborn@epam.com','$2a$10$VXJo.qxvClYApBNHk28yk.343ND7fJvQbawyPcv8IMlVl/Qg0YuSa','USER'),--qwerty
    ('Mohandis','OHegertie','Mohandis_OHegertie@epam.com','$2a$10$pnf0LHHvkqEzsfxFO/oWXOWVgaHOBLm1QEF/.nDsDyIMm10o5frqC','USER'),--strong_value@$
    ('Petey','Shale','Petey_Shale@epam.com','$2a$10$RY.cg1ctRbd25Xf.mqSYBOnK1uQWzE983vjfjCmCRjYU51GgNDVQK','USER'),--strong_value@$
    ('Kissiah','Gors','Kissiah_Gors@epam.com','$2a$10$VXOGj2F8wPRKo5JXur9beupfpSTdMkR4CyC/qgH9zWKkItAXcgIYq','ADMIN'),--qwerty
    ('Kinnie','Ailward','Kinnie_Ailward@epam.com','$2a$10$edArpxwl5YNa7DvBJlRiQeQiNjA8VjbcXNiJ8iBbpEXYi2Zx4x//W','USER'),--1234
    ('Diahann','Boyce','Diahann_Boyce@epam.com','$2a$10$qPW3N86mV.rkGtYhYSjD2uV2N8AE0/nbSdCmq.dgBkrnf2iCn2ZwC','ADMIN'),--strong_value@$
    ('Madelin','Ledwich','Madelin_Ledwich@epam.com','$2a$10$VVVhCT1sINyjmekesgd.G.4lVIf./7ik9LN4R37Z/B6hv/g/9a5Ty','USER'),--1234
    ('Danila','Spitell','Danila_Spitell@epam.com','$2a$10$DPNirBMY2o0aDWmh5QHAoe3k2rMjasx/C4Va0DM4sgOWBRPhhiRca','USER'),--somepassowrd
    ('Claudie','Yushkin','Claudie_Yushkin@epam.com','$2a$10$RVrCYaWvAZQYFMc2diKW5eHFbDkoJvtWqFPWH5nHro7CW5L29J.1u','ADMIN'),--somepassowrd
    ('Jessamine','Rodie','Jessamine_Rodie@epam.com','$2a$10$nSSqh.8Qnc41N8GgP25lu.wXtLscVndXjnWeNZOvTtWbI5jqMyYvm','USER'),--1234
    ('Lucie','Geale','Lucie_Geale@epam.com','$2a$10$Bf1iNLW9XQXLMyyQK.H6Ke57/UzxWQTMkXL.U7dG9eM2CKZtn3dAa','USER'),--1234
    ('Guenevere','Feifer','Guenevere_Feifer@epam.com','$2a$10$IuLpUIT2dWShinZ9Ql7fl.Uxc5lSrqtZ4pTJfYnNgZDuMAh9UUiky','ADMIN'),--somepassowrd
    ('Freddi','Elvidge','Freddi_Elvidge@epam.com','$2a$10$/2RNdbOSEUjoqneyKruJe.V1YA7r/.CYnfA7JTudFopwocN2Mv4La','ADMIN'),--lastone
    ('Roxanna','Corona','Roxanna_Corona@epam.com','$2a$10$y8v07fpXSZpW5/Bc2ByG/u3bjcVl6qaarbGS.DoJVMxdeRHAVQIy6','ADMIN'),--1234
    ('Abdul','McCrow','Abdul_McCrow@epam.com','$2a$10$D4Ei3fjCz9RDzqjNMsukiujc9pj8DeO2pzEzmwzxD5fN9zf9DdO2i','ADMIN'),--somepassowrd
    ('Gerty','Leebetter','Gerty_Leebetter@epam.com','$2a$10$vEHIWi/qUr5ts49GiLxlh.Iaanjg49WRMU.8EHqZG8OLDRfATY/A2','ADMIN'),--strong_value@$
    ('Quillan','Raffeorty','Quillan_Raffeorty@epam.com','$2a$10$/L2HZliFw4tGDt/6hpUAkuxSy6nH/7rblVLBDWnFa9UJPEDNHOlo6','ADMIN'),--qwerty
    ('Hulda','Dabes','Hulda_Dabes@epam.com','$2a$10$pxj.Tv4G2beFN8eX4HEv8eFvtJiecxGJUwuthS6mm15my2DtaP.b6','ADMIN'),--1234
    ('Roxie','Mucci','Roxie_Mucci@epam.com','$2a$10$1jpoAHSkpUSj/Ajjq2HlZOEkt4F3abEooOs.5MJGbAsosyP4/PTSi','USER'),--1234
    ('Marnie','Arrigucci','Marnie_Arrigucci@epam.com','$2a$10$P1TkHnyBXCgLVLXYuDCq9.qXh9Ld9U9TFKXKxqAM5xMxRTpBAqLFq','ADMIN'),--1234
    ('Robinetta','Chessel','Robinetta_Chessel@epam.com','$2a$10$f/SqDwZUz1ALEoi5C4sR/ehu2SjJDSkrBgRzsMzHmGB4NCmksYasm','ADMIN'),--lastone
    ('Vallie','Vanyukhin','Vallie_Vanyukhin@epam.com','$2a$10$ZxZjifTc7Rbw287IwqtFxuuBPAluEYGD4/4H0BzL1aNqUwel.V45C','ADMIN'),--somepassowrd
    ('Sully','Tomaschke','Sully_Tomaschke@epam.com','$2a$10$fMjw9qh2OWsBInwKBo3WeeJowjF6tYBPa0NhSBigFalo5EBXvxuUy','USER'),--somepassowrd
    ('Leia','Scadding','Leia_Scadding@epam.com','$2a$10$isBEUoxaI9z1EvkNussfw./9AnV/RGf7li3M3uZ6BYR7G.T8dXJsO','USER'),--1234
    ('Remus','Galilee','Remus_Galilee@epam.com','$2a$10$s0zP1mhd3OzoiZQux7VUbuBOPUgSl6bwKe4JzJG3wnN6cDzQUrHKW','USER'),--qwerty
    ('Electra','Foltin','Electra_Foltin@epam.com','$2a$10$FiS5ZfUVE4wZwK5R.z8gv.IkLgGt7/929aecbDAOmyr.Hpv3XGERq','USER'),--lastone
    ('Melany','Morrant','Melany_Morrant@epam.com','$2a$10$ZquT.8Go8.BEoIrj.a7w0exEy5DrgG2NG/e69Nc6Wm21ntVSWdKBS','USER'),--lastone
    ('Dane','Menaul','Dane_Menaul@epam.com','$2a$10$kpTbtICv.ugQjvVCtojP/u3aBncOUJlV/Sw7iuIxlS8MNGjg4dkDO','ADMIN'),--somepassowrd
    ('Glennie','Howton','Glennie_Howton@epam.com','$2a$10$g3lr9MuLaKPpjHEer81G0eIDNFCwds3KN8c1fULl22XWSbdNUkHTe','USER'),--1234
    ('Sari','Leisk','Sari_Leisk@epam.com','$2a$10$wCRZ9U1GSXJPTL9VxmWHUubyaqxTBraI2I.CMkVf0PxY2IShAJ0jS','USER'),--strong_value@$
    ('Caril','Minshaw','Caril_Minshaw@epam.com','$2a$10$i1sXbxdIAHA2Z4dpnzUyDe6KLT05ASKGpnF/we82oah9roue1Av8q','ADMIN'),--qwerty
    ('Heinrik','Timms','Heinrik_Timms@epam.com','$2a$10$vLCfvoKgPR9t/V/Pm6y58uXE2uSD2knKh0I4l/3q6pAoZhWwup6Oy','ADMIN'),--qwerty
    ('Aidan','Francescotti','Aidan_Francescotti@epam.com','$2a$10$10nHKQ3hu6R9V216qTfIjOvlygwuMXSTwdAAFPOZNchVnpUhlzKcu','ADMIN'),--qwerty
    ('Raphael','Verrier','Raphael_Verrier@epam.com','$2a$10$rxeSCHWsscHQmEEELA0XguMrO2O.BCFB/5KCczUOBovkH.mBnl2nC','ADMIN'),--lastone
    ('Emmy','Lamartine','Emmy_Lamartine@epam.com','$2a$10$SXU8DwRT82rzKJZ.trc7e.DujWVZHpeRH/QvycdrNH6bzwfSILPqC','USER'),--qwerty
    ('Davey','Turgoose','Davey_Turgoose@epam.com','$2a$10$U.vQEdfFDcsnA9Pb3NVlzOTB/Ia13cchKb9Fvx3yvxVZSrlToF4sC','USER'),--1234
    ('Rosella','Cookson','Rosella_Cookson@epam.com','$2a$10$b6c2DBXh/FVx5tokDd5kaelccd28wTSB9ZxrWcBNbbVJHB0jKMqie','USER'),--qwerty
    ('Travers','Vereker','Travers_Vereker@epam.com','$2a$10$ZopCJnc2HXqw4snEwR0WFu73F4L2qi6MmMOPByOoRevLX5blv2q3S','USER'),--strong_value@$
    ('Devan','Bick','Devan_Bick@epam.com','$2a$10$7flcLzTS1z3hO14xPoSV2uPPO5FppvGYHIiR8oTjCOyjlhFWFnFw.','USER'),--strong_value@$
    ('Yehudit','Helin','Yehudit_Helin@epam.com','$2a$10$W4E9rYROJ33yGX4ZIcnTFubDEhKtqpn2nj9fb.n29P46uYHTEGp.O','USER'),--strong_value@$
    ('Jamison','Dellenbach','Jamison_Dellenbach@epam.com','$2a$10$FIcwzVU3Smo8sQDqCj3J5eMDCBRf4J7G064uUbPLA4CNBASLSatP6','USER'),--strong_value@$
    ('Thornie','Spaice','Thornie_Spaice@epam.com','$2a$10$XO26.TtEyzaN3muVl8yg5enfydNd4SY0jxkX/z7GqSBBsOflgu43a','ADMIN'),--qwerty
    ('Nickolaus','Bagshawe','Nickolaus_Bagshawe@epam.com','$2a$10$LN7eVnaEBE4tK.rrKfvD.eu2zzq8dGR9tyWWbh1mVeQgVy8/MN7GW','ADMIN'),--1234
    ('Jesus','Daingerfield','Jesus_Daingerfield@epam.com','$2a$10$QJ/iSMZKyoqFalT0/6UyFeqoqOjJBOGMc8i4N.dv0bkIBUjA./QuG','ADMIN'),--somepassowrd
    ('Arleen','Menloe','Arleen_Menloe@epam.com','$2a$10$Z71z7DysUTHJVYB.RT2pJO00ct6yFiLWIFbUT0IibvXKH3ZW9oWA2','USER'),--1234
    ('Marketa','Aulsford','Marketa_Aulsford@epam.com','$2a$10$LrwNPJZyhYjgVClzbxpSZ./kd4ux59N8O1Y2J67mTiQv.UjeFK2gy','ADMIN'),--1234
    ('Sibylla','McNeachtain','Sibylla_McNeachtain@epam.com','$2a$10$u1ty6nNkTrWvQD/VQmD9pOKEsQunqOI8J8LnIjze..bsd3xNJnfG6','ADMIN'),--lastone
    ('Koo','Phlipon','Koo_Phlipon@epam.com','$2a$10$illU3ZEX1Uhgsrg5tq/Js.nuVsdXF2dPZ99piFmR3SndKZj0dPf0q','USER'),--qwerty
    ('Leonore','Cully','Leonore_Cully@epam.com','$2a$10$ZcItHvlB34GnOs4v6uMw5.V97nn28D5QW0.ZAEUkb9fwmYYdwT64m','ADMIN'),--somepassowrd
    ('Payton','Armitt','Payton_Armitt@epam.com','$2a$10$3s6MErUZWJUeMcIiC.mCM.iiw638qxLO5Q/gabyhp2dQZUnzA1RNG','ADMIN'),--1234
    ('Axe','McTrustam','Axe_McTrustam@epam.com','$2a$10$zY0zqd8yOu9y0Gik4fBOHeYzQqSYo1rFGh1TmkvOSOO/7fR4ZaGAy','ADMIN'),--strong_value@$
    ('Merlina','Disbury','Merlina_Disbury@epam.com','$2a$10$q/R5g0caZTrQN3/0kO5CvehjuVuQ2PJlGOLzeS3.qIcN9cMCIKf7G','USER'),--lastone
    ('Euphemia','Frontczak','Euphemia_Frontczak@epam.com','$2a$10$yjLMh9oqdWllyxnUmWdEm.CpegmU7K50w0IvTiHUbdcpIFYjuS9ta','USER'),--qwerty
    ('Zebedee','Prinne','Zebedee_Prinne@epam.com','$2a$10$oTP4/eDD.pm0H4B2in57P.A/VBATKRKEtt9tbLFUUd1fTHm.YZZz6','USER'),--qwerty
    ('Garrek','Baser','Garrek_Baser@epam.com','$2a$10$cMw7PKLshAKG.Eqn14FW8u/30.JafAV/mbgzZJP4UUybwMx0STKIu','ADMIN'),--lastone
    ('Cornall','Lantiffe','Cornall_Lantiffe@epam.com','$2a$10$QUpmBW8LkxC8le/tm3Tz9eNuxUiplcVuEXn338GBg0Q8mqk5yk2F.','ADMIN'),--strong_value@$
    ('Jayne','Shales','Jayne_Shales@epam.com','$2a$10$OsCH/DCIyGWU1Wi0vbNQ3.MqmTm761xFkRKquj/cxoiT3C3xzXaPW','ADMIN'),--lastone
    ('Angela','McKiernan','Angela_McKiernan@epam.com','$2a$10$qDnlK6uZVYuSBe2BwzDBMu05ZRIQ0YX40QhZ.OMaoWij9lHUiE4WW','ADMIN'),--1234
    ('Mollee','Giacomazzo','Mollee_Giacomazzo@epam.com','$2a$10$d6jLqzz1.WiAD5PRzkQv0.0Pmq1GEOZaPz6LzjpUm3I/WRzXhMZu2','ADMIN'),--qwerty
    ('Moreen','Luesley','Moreen_Luesley@epam.com','$2a$10$AEjhsFie174aRkwauSThiOsjvMHSM8.OYvpBPt2gaLFvFIY3uEqSq','USER'),--qwerty
    ('Audry','Whickman','Audry_Whickman@epam.com','$2a$10$n8AMLFYNqN9oYfAsApw.N.3C3EHQr1A3tIEJ.GtyuHKhtaSOPFbDi','ADMIN'),--somepassowrd
    ('Jennie','Loiseau','Jennie_Loiseau@epam.com','$2a$10$I8BZLYRW80aut7zY4iuZmePVVGdInZnbDwJtXUJcLrkBMEBPQ25jO','ADMIN'),--qwerty
    ('Packston','Beminster','Packston_Beminster@epam.com','$2a$10$Tv9i7La2TFG/uhVLAw4.zOru6wWJG785zh/DjcS8CwfrN1KVnxrH2','USER'),--lastone
    ('Cam','Sallowaye','Cam_Sallowaye@epam.com','$2a$10$F6BiT4hf7IFYQkveeAWPRO4EEt4Ebdo9jEtJC4NhOkvZTn.Y.WyKm','ADMIN'),--lastone
    ('Ximenez','Pinnigar','Ximenez_Pinnigar@epam.com','$2a$10$Hv8OO9OAzE93ogVfbG.bHO5p26sMJ64HJgp7aKB3TEeV9U7z1fbd6','USER'),--1234
    ('Padget','Lanham','Padget_Lanham@epam.com','$2a$10$8J4GPSu6/oc56R9mZaq.8en/ds.E7RKy1skY8B8KYHQE/iUXEPd0O','ADMIN'),--strong_value@$
    ('Kaleena','Toffoloni','Kaleena_Toffoloni@epam.com','$2a$10$I2DbOFQmKeR86HEmio9o9.iNVB6ix6G1QdqfxNyu0SP2l5DppKYk2','USER'),--qwerty
    ('Murdoch','Applewhite','Murdoch_Applewhite@epam.com','$2a$10$gIFqJNGWqgGvW6y4qbVqYuoUgr4D71RVrcCOhkV5XH961pPJutXxS','ADMIN'),--somepassowrd
    ('Cristin','Holbury','Cristin_Holbury@epam.com','$2a$10$cRi2CgoKZQgkbkZwWEqQ4.fYQQakGsov60eg/w0hxCr5XWHcKnxRi','ADMIN'),--somepassowrd
    ('Mehetabel','Stoodale','Mehetabel_Stoodale@epam.com','$2a$10$iM9g7jpMcXxjKfwVdOrxt.8QHY0D7xAemVxlw6EakFt8ufu9BS5B.','ADMIN'),--somepassowrd
    ('Vassily','Barabich','Vassily_Barabich@epam.com','$2a$10$YfFN9FnO7L3zF7135Roi0OzHx4QcbkycDHBzWE1wFPPawbmfXv0ky','ADMIN'),--qwerty
    ('Dana','Greally','Dana_Greally@epam.com','$2a$10$TYzpsGgHZYPF9dRtTpuCS.gAa4j1DfZrplV5.QFtwCdv2z.VMhnz2','ADMIN'),--1234
    ('Anne-marie','Hannond','Anne-marie_Hannond@epam.com','$2a$10$nZvnFyoxVzt6pIiEl1hRWukOMFKVosH.vEiwPdS8zLWuv8TlZfj8m','ADMIN'),--lastone
    ('Crissy','Sturdgess','Crissy_Sturdgess@epam.com','$2a$10$pbM5TSTf5zcT0BpQjU826O.JyxEZCzNw9I4VGC3b3DLqMnhhaCZlm','USER'),--strong_value@$
    ('Maggie','Pearch','Maggie_Pearch@epam.com','$2a$10$9grJikcVYkUrQV1tULpNHO1NdVYokEWtQ3xskDap66I9ovinjvRuO','USER'),--lastone
    ('Melantha','Tackes','Melantha_Tackes@epam.com','$2a$10$9LH1F425nivfVoboAOsiv.ctfQ0i2.0t3EGgdF0njHpfJayEUvTbW','USER'),--qwerty
    ('Oates','Hudson','Oates_Hudson@epam.com','$2a$10$vnpIbWV6HJHEJP8n6yZjCustwIPzkQe6kz2FEf785rbHkQs0doiTe','ADMIN'),--strong_value@$
    ('Stacy','Franklin','Stacy_Franklin@epam.com','$2a$10$hG2P5M2VoakK.AyCGPzEFeC7DRvsJafufb9Lrl9JlF5CGHIdSMyMG','USER'),--strong_value@$
    ('Alanna','Lorence','Alanna_Lorence@epam.com','$2a$10$hanCm6ApQghalDdeZdANvey.uAu3CVnIS2RLZRqa5D0zHIMBy6r4W','USER'),--lastone
    ('Aviva','Goldstein','Aviva_Goldstein@epam.com','$2a$10$zMcmPLx8zr0/lvegTchQMOm4h9/nE2E23h2tHrzpNAjrBwg.EqUFq','USER'),--lastone
    ('Currey','Serrell','Currey_Serrell@epam.com','$2a$10$h2FsM9A/mf/0.PeAGcZXIuaTEWqcitiLifEC8fJvLD2NAoK06zrNe','ADMIN'),--strong_value@$
    ('Nita','Loverock','Nita_Loverock@epam.com','$2a$10$LhnxJrYhq8twDx91Ew3Lkem9LCsCLcM4ySS.RkNY2NvIiVqsSfox2','ADMIN'),--strong_value@$
    ('Jethro','Bridgement','Jethro_Bridgement@epam.com','$2a$10$jc9MauG..sBYpZ33JXrmHegvpc9m60ZZVCBB2rzphzvY3dKZ.fpoS','USER'),--1234
    ('Katusha','Baldoni','Katusha_Baldoni@epam.com','$2a$10$OrQ5WoRV1I3BS35.P6yng.zej8dz/K2s.RftmESFzp/ue8naz1OBe','USER'),--strong_value@$
    ('Granthem','Elias','Granthem_Elias@epam.com','$2a$10$z0XCroSWn9fcz9jJHbzcqOfTlvG.WJRChFgdmFk2H/oRMSF3jhssK','USER'),--strong_value@$
    ('Jule','Radwell','Jule_Radwell@epam.com','$2a$10$VALkkgBfb4ZuPA7UqEwg8OxPlAEOxtX2RBD8glYapY3ZrA/wFj5qO','USER'),--lastone
    ('Roseanna','Sammonds','Roseanna_Sammonds@epam.com','$2a$10$vNCxdHuwq45uXKWCwTPga.zGbX/uyrvggh9RXR.DXNgmPIq/8SrXG','USER'),--qwerty
    ('Orlan','Atkin','Orlan_Atkin@epam.com','$2a$10$STiwGA0rnuxwgOpXJvGMpO5T5bH/9RV28m7gVXcvQtBQhyThTOdie','ADMIN'),--lastone
    ('Kakalina','Bew','Kakalina_Bew@epam.com','$2a$10$2W5vB/mrhqywezS03kFwzOmxVixf9kjMS/ALqxr1IkTeG.lRcURrC','USER'),--1234
    ('Farrand','Sheehy','Farrand_Sheehy@epam.com','$2a$10$4Ws0xdHRqiPVFd0aN5.bWOvc1Xr/vTRzF09I13iH77urS.RcbXFwu','USER'),--somepassowrd
    ('Ammamaria','OHearn','Ammamaria_OHearn@epam.com','$2a$10$jQ.zZdhyPgbAtVK20Z7Zp.x3..OfojrHg3QJG7uHR77bekVUCm3be','USER'),--qwerty
    ('Hyacinthie','Sarsons','Hyacinthie_Sarsons@epam.com','$2a$10$ET9bRuXjTnG.03kPgo5P4uWj5G.Y6gnUuAPrjTcDbqYLd7YuQjnQG','USER'),--somepassowrd
    ('Robinet','Swinden','Robinet_Swinden@epam.com','$2a$10$chH3CwIQ4RuB7MIu4K6JZej8hBj8J1nuEp4TGB/pqRAU4UA6JBoHu','ADMIN'),--qwerty
    ('Neala','OKane','Neala_OKane@epam.com','$2a$10$WaPndwo4l6dUn9oM4cgR/ugeqQ4XmF5EwH7zYlQjWcFbQx7nM4Le2','USER'),--lastone
    ('Loren','Plunket','Loren_Plunket@epam.com','$2a$10$IV9J4Hi2s6lG6hr/AJq2b.liCorcN8XwJvpqRbiWe7Ihc.m50jJFC','ADMIN'),--strong_value@$
    ('Blane','Culwen','Blane_Culwen@epam.com','$2a$10$j1WVxI0bUdEMteBPYUyRmu.uNWuGOfwa.4PRjPbNH2ClVV6.8BTsG','ADMIN'),--qwerty
    ('Almeta','Hankin','Almeta_Hankin@epam.com','$2a$10$mym5mIKghSBlVsMgDEACFu2.fLP08.qiEzQhuQdoOw9WtJBQdl/rO','USER'),--somepassowrd
    ('Natalina','Napthine','Natalina_Napthine@epam.com','$2a$10$VwlsYYhHBuZY9RLCX0o4V.lH/Hpe.PfPaZG8GOUnqYgit5Rd5uWv6','USER'),--strong_value@$
    ('Rab','Demeter','Rab_Demeter@epam.com','$2a$10$/OZCCvL0NAtNLH68uXM2p.4tWuYB4y2mDcMmjJkxUuU1DX36FpfYC','ADMIN'),--somepassowrd
    ('Filide','Kuhndel','Filide_Kuhndel@epam.com','$2a$10$ZWbux6gnKqkFcG/jpJpRb.LS3Qg3OUcnYzJVR1em1xWT43Co4oFUi','ADMIN'),--somepassowrd
    ('Tybalt','Besque','Tybalt_Besque@epam.com','$2a$10$Hyz6jqE.bRZ.j5INxwqqU.13aoVHAtkvZPUiorvkMjYmgoJlhtHpC','ADMIN'),--qwerty
    ('Lian','Stedall','Lian_Stedall@epam.com','$2a$10$lSsjx.ijAUhZLnmaiA9LKuVY.rgjztXtN9CPymlkZkRs280oIl8GK','ADMIN'),--lastone
    ('Sidonia','Corrington','Sidonia_Corrington@epam.com','$2a$10$/CA5wnWx.C45ofYGNdFSWuGtdm/l3IQjop2krj/bJrqOT596ThTgu','ADMIN'),--strong_value@$
    ('Keriann','Iffland','Keriann_Iffland@epam.com','$2a$10$2SBFTCmEBi.JOEUhurIYee/rRlqnUCqETKqPmHBcXD01zaaQP5dOm','USER'),--somepassowrd
    ('Deerdre','Tomkins','Deerdre_Tomkins@epam.com','$2a$10$Wc1k721mJPem6knfiYT2i.0x5Efm7uXO/ADnR0gLwCi8es1Tpy/EK','USER'),--qwerty
    ('Mellie','Gerwood','Mellie_Gerwood@epam.com','$2a$10$GTm6imuiF6P7mNfXSpEYceQ4z1P/4PLtzYHpvGnp7A3pCk0UGsUz6','USER'),--qwerty
    ('Cristie','Kinze','Cristie_Kinze@epam.com','$2a$10$jb6uGa5fnT5G9wuXwJIkU.dHSqf6rRVjI7YtgMPhBp4g0wNiOZCui','ADMIN'),--strong_value@$
    ('Rachael','Barnshaw','Rachael_Barnshaw@epam.com','$2a$10$bbBnETt8jLmVY9ffPzxzc.VdSrQO.9iZfQPz2mqb6C1n7TpjQrkSO','ADMIN'),--strong_value@$
    ('Frederico','Swatton','Frederico_Swatton@epam.com','$2a$10$pFaBvj0QcfxCGGdRLqXNfeEJeg/Fp7GxjgrasQEyn3qeTKC8S9FMO','ADMIN'),--lastone
    ('Woodrow','Stoffler','Woodrow_Stoffler@epam.com','$2a$10$uRc8/6X3NJj22a2yjufIzuTwRknzCjMMr2RSEMQC.w9fg8WaEzihi','USER'),--somepassowrd
    ('Camellia','Pullman','Camellia_Pullman@epam.com','$2a$10$F1aMqjsvUIgxT/Ouqpf8ue3ajqRmEQ.IQJFYtHs0Hu1BSkmrXW48S','ADMIN'),--qwerty
    ('Julianne','Skittreal','Julianne_Skittreal@epam.com','$2a$10$15hyP2nfZGunhKKkGoeMMOdXqgAFaBB2CdHyO654COTMCJcXzEla2','USER'),--qwerty
    ('Gay','Auden','Gay_Auden@epam.com','$2a$10$Pmivo7yh2fybNS7SfTJkseZCLXSGJ6L5QyTsbdfSxBvUlqRL89PGq','USER'),--1234
    ('Daniel','Muirden','Daniel_Muirden@epam.com','$2a$10$g2Z58UGfjyvI5Psh99YDbuWY.EisDpyhacpIgJ3qgFnd.j8ARBG.G','ADMIN'),--qwerty
    ('Leodora','Skeermer','Leodora_Skeermer@epam.com','$2a$10$is2tB3XLWvLSqbaMkQCyU.F5d/UAoJhveBERdzjhEmxfqWiCvhDva','ADMIN'),--lastone
    ('Roth','Wybrow','Roth_Wybrow@epam.com','$2a$10$L9e0h0zEJmHL6xBtaxfWiuPO7hjUGWu1A4Ah9wv3yo8OcwFG1s/1m','USER'),--lastone
    ('Ario','Terry','Ario_Terry@epam.com','$2a$10$0mjQXLHfDQi.kWsZPHFJ7.cGVB1jHazPUjYDWEKzpZ.O7ppRahfZK','USER'),--somepassowrd
    ('Hedwiga','Freeland','Hedwiga_Freeland@epam.com','$2a$10$N5Uxy/Va7Zv.M5jb0Ysin.moXrZ96KbW03/bhIDuO2nLQXJugac6G','USER'),--somepassowrd
    ('Broddy','Rean','Broddy_Rean@epam.com','$2a$10$34F1.t1XB8kP6nkMzk6gYugHRj4J/BsCI8VYSoL6NbNWOgxv1vHuq','USER'),--qwerty
    ('Norby','McTurley','Norby_McTurley@epam.com','$2a$10$5V65AFWMKaImsGOpqxIL6uGqmzmqhjd8ctKefRk12u2JM3iO/5YYW','ADMIN'),--lastone
    ('Cristina','Coushe','Cristina_Coushe@epam.com','$2a$10$ZmoKhuBQnBbtlbOh3oZvSeHborPr5OykZBgIWN3XPPvpuvjupNTFC','USER'),--strong_value@$
    ('Rachel','Tipens','Rachel_Tipens@epam.com','$2a$10$XDn48YG8URTR6mUsRUzeaeNs/NH3ot7tHyR2DyWRhvPHRw9xhhuS.','ADMIN'),--lastone
    ('Daveen','Rivel','Daveen_Rivel@epam.com','$2a$10$M1YG4p/6m6ct7hVyFBbdAu7zCFzN78zgfahwe2rXwVuKeloy0FORC','USER'),--strong_value@$
    ('Hurley','Bernade','Hurley_Bernade@epam.com','$2a$10$cJi/4nEM4ZVS9/Mo3jZUdOlva1MZ0G/nC1yt20vyZAYUFLESU1Yia','ADMIN'),--lastone
    ('Oliy','Graddon','Oliy_Graddon@epam.com','$2a$10$IqHETWQ9Y92n4WQM6rxs.ep329SLqyVaLDuH2wU3XilQclo31cB2C','USER'),--somepassowrd
    ('Desmond','MacFall','Desmond_MacFall@epam.com','$2a$10$6jRmzif.L7YSoP4u/BXxa.c/KuJBYm1R7WQwlxSYegV3oaLoEwjQW','USER'),--qwerty
    ('Loleta','Latter','Loleta_Latter@epam.com','$2a$10$qq3F6nOqstyYGkoUCE3vweVQPki19GGJNINEfshaFHH6AzL8khDMu','ADMIN'),--somepassowrd
    ('Rory','Madeley','Rory_Madeley@epam.com','$2a$10$o6wlYqAdSjeyjRfU1RVPdehYZc3/kxii5i7JuPUQYPdawYh/X/anq','ADMIN'),--lastone
    ('Bartolomeo','Lofts','Bartolomeo_Lofts@epam.com','$2a$10$.9yJn7tJtGIbMGmzIqDbdOQrQocFNUjk2LgoaN6UZWADp0ThyC9Cq','USER'),--1234
    ('Seward','Favey','Seward_Favey@epam.com','$2a$10$yUuKaSJOP6m4yNw2hD7aPeP1RrLrK1dDTQVdCnl7tc1bqaOM3Cqti','USER'),--qwerty
    ('Aube','Surtees','Aube_Surtees@epam.com','$2a$10$A42KanWx5G7sgGU4hrDE5uPlkNy7qxEowYfv9hmgItWLlJHFPltIW','ADMIN'),--lastone
    ('Klarrisa','Eick','Klarrisa_Eick@epam.com','$2a$10$XidbK/FCHz1wUmX014O0Sujz6Yc2W.BkkXEwnzAuKvP3gTE3l2ZWG','USER'),--qwerty
    ('Lora','Cicculi','Lora_Cicculi@epam.com','$2a$10$UkEN1n6SYVZMgpaZcm8AEui4k/VCwe7BrswwFkk1MDoxA6d4/PVRq','USER'),--qwerty
    ('Alleyn','Lavielle','Alleyn_Lavielle@epam.com','$2a$10$M0BaUpVqZnE70vOPAoK/Ne0//.QXrbuLYi/cniVt1CvdpJ7ScwiX2','ADMIN'),--strong_value@$
    ('Tracee','Degg','Tracee_Degg@epam.com','$2a$10$P2lgn2FwTv3HaUg8ipw9aONtOqVeI7Tpcz6TIGBGVnMZsF2ibnY5m','ADMIN'),--lastone
    ('Jessalyn','Best','Jessalyn_Best@epam.com','$2a$10$ipP8HdU2VynRoqib5iG9p.Xvty7oNlNzU2gv8nL2DOelOzLowv2PO','ADMIN'),--1234
    ('Salim','Grammer','Salim_Grammer@epam.com','$2a$10$xtCQZvBxVs5nfa.ETgMFeO3dGN9bCd07mPb/xXO4DbJPTmngET2G.','USER'),--strong_value@$
    ('Lydie','Dawltrey','Lydie_Dawltrey@epam.com','$2a$10$KwiFI84PFsCwbgnk/icviO9T3jPFcHaEl//NMwQlMCJhkl7mqU/dK','ADMIN'),--lastone
    ('Bran','Vicary','Bran_Vicary@epam.com','$2a$10$YFzMrDmoFtxAEBCK5jQHludot3QjQX7Ou//Rzb9Xb6yxa.vkXKPCW','ADMIN'),--strong_value@$
    ('Grannie','Lagden','Grannie_Lagden@epam.com','$2a$10$ZP89jCtDto4CajfCD2C4Bu4g7EPyq4achUEiYE0ttd07HHJ23xr.q','ADMIN'),--somepassowrd
    ('Elvis','Edowes','Elvis_Edowes@epam.com','$2a$10$hhRi4.M8gte01GYRi3q7KOe7KEoErE0VPWYm0VaINt5/LNJW4trKe','USER'),--strong_value@$
    ('Etta','Kopf','Etta_Kopf@epam.com','$2a$10$KcQfzyDUbDUnWVNncPCbzeL28vLhiNtcmaMrcJlEfI1RkgVVcA0Ru','ADMIN'),--1234
    ('Stephie','Shackleton','Stephie_Shackleton@epam.com','$2a$10$CmMifjKVgEUxJtBjLp.RcubEw9wKuX4EbPD1ju9WWTbczJ8.65cTi','ADMIN'),--qwerty
    ('Armand','Quarterman','Armand_Quarterman@epam.com','$2a$10$Kn7/3HNJ5Li0oiFjP/gol.9WPZ4xa6OPtt27EQ1/GMN78.byVzwNW','USER'),--qwerty
    ('Sigismundo','Rafe','Sigismundo_Rafe@epam.com','$2a$10$CYYabrZU3WtfV5eaywArUOVrictIZKYNC8ldymDOPSh5eqWO/LIHC','ADMIN'),--strong_value@$
    ('Kylie','Evershed','Kylie_Evershed@epam.com','$2a$10$jCXxzFtyIS4kV5bDzcXmE.ZUk8iZ2JojbAuks2khLDYmbPW43Uuo.','ADMIN'),--lastone
    ('Claudius','Swindley','Claudius_Swindley@epam.com','$2a$10$6xEk1TsfZ/OzmVCiIVhnLuMVcCf3yWa74NNpfbjZhwxJaY65LrMgq','USER'),--qwerty
    ('Basilio','Dowty','Basilio_Dowty@epam.com','$2a$10$hCTvaBzKGmGF3Qe80ulb2uwwLcLdfe/HYrtPRR9YZn3urYbgjhVLy','ADMIN'),--somepassowrd
    ('Ingamar','Sigart','Ingamar_Sigart@epam.com','$2a$10$j7yWHSaz09vb3B/Gfp/lMOZdtmlqpD1.FYqdWufrWtVCoXwOgGkmy','USER'),--lastone
    ('Randall','Ryson','Randall_Ryson@epam.com','$2a$10$gCRRIZmrYWdDGSk1NYSXO.rbNEiFkcwM8/7/CZs0iqqWBYyN5U7Lu','ADMIN'),--1234
    ('Abramo','Kynforth','Abramo_Kynforth@epam.com','$2a$10$eZCqqM0dVVj7yongjs77EejGRsfVzXzLesL.DkENfG/vdkHWvvI7a','USER'),--somepassowrd
    ('Janeta','Yelyashev','Janeta_Yelyashev@epam.com','$2a$10$I2SIHdzmuIE1HtDgfXpHYubFzQFmAEO7.tphaXMVy5mjTgjXapOxq','ADMIN'),--strong_value@$
    ('Nyssa','Speer','Nyssa_Speer@epam.com','$2a$10$NTmGDOOQsMsDDf7v0AYts.Qh8Q7NTCHcIici9Dy1W2sD1QcnqtZz6','ADMIN'),--qwerty
    ('Hayward','Scripps','Hayward_Scripps@epam.com','$2a$10$fKMNDJfTMEiKwvrc6kjcxuk800bFqoz/liWBFnFa5j7eNQdBeJCDS','ADMIN'),--1234
    ('Martynne','Croutear','Martynne_Croutear@epam.com','$2a$10$Gtab0B99HOwoFJ6TkEhAU.D42dOBxKcuLnyO4H3swP8mlzQnxsJ9e','ADMIN'),--somepassowrd
    ('Cloe','Bigrigg','Cloe_Bigrigg@epam.com','$2a$10$CAJf/FQWbY4.hFW3xLG4/uCQljp8Yh0qCspUszwBJ5vMJs/6LO5OS','ADMIN'),--qwerty
    ('Thelma','Burrass','Thelma_Burrass@epam.com','$2a$10$oorNacrQ0HflSEd7toGjregFd5FthRkqzt3RWPTA6iuh2FFnce7oi','USER') --qwerty
    ON CONFLICT DO NOTHING;

-- count: 1005
---
-- isNew = true count: 259
-- isNew = false count: 496
---
-- first user new count: 1
-- first user approved count: 3
-- first user disapproved count: 2
---
-- second user approved count: 1
-- second user deleted count: 2
---
-- total number of vehicles with status 'new': 259
-- total number of vehicles with status 'approved': 244
-- total number of vehicles with status 'disapproved': 252
-- total number of vehicles with status 'deleted': 250
INSERT INTO vehicles(number, status, user_id)
VALUES
    ('1_NEW', 0, 1),
    ('1_DISAPPROVED', 2, 1),
    ('1_USER_APPROVED', 1, 1),
    ('2_USER_APPROVED', 1, 2),
    ('2_DELETED', 3, 2),
    ('k560ci727',0,525),
    ('r517cv323',2,473),
    ('r673xu694',0,342),
    ('i822xj302',0,772),
    ('q137xp566',3,644),
    ('w041tc943',0,205),
    ('r688lk165',1,488),
    ('l472xs115',3,898),
    ('i220yu891',1,530),
    ('m553df928',1,446),
    ('a819yd926',1,386),
    ('f171pz087',1,986),
    ('g825ja015',3,740),
    ('c286gh394',0,695),
    ('x748yu772',0,958),
    ('w730lm804',0,61),
    ('e347ua843',2,357),
    ('z474ma436',2,33),
    ('g630ej959',3,696),
    ('a540ud073',3,438),
    ('i471ml421',2,985),
    ('a124rd969',1,924),
    ('f194wg720',0,410),
    ('i722ku855',1,882),
    ('a399sy989',1,970),
    ('g820qf979',3,427),
    ('k039vg577',1,998),
    ('l461br308',1,153),
    ('i125wd448',2,979),
    ('q111ob777',2,941),
    ('s808qn153',2,810),
    ('g568hx098',1,895),
    ('x516fi115',0,351),
    ('u304uo124',0,467),
    ('k425jz224',0,211),
    ('w589ba639',1,466),
    ('o549ji984',0,209),
    ('v509ru615',3,482),
    ('j394nz188',3,233),
    ('m226sd331',0,437),
    ('n302fm959',2,634),
    ('c976hu878',2,425),
    ('e123xz905',3,872),
    ('z403el220',3,875),
    ('i519qt592',0,844),
    ('v849ub379',2,580),
    ('v477sb332',2,789),
    ('a008jw315',1,406),
    ('n367dd939',3,322),
    ('t040nq023',0,233),
    ('a769hg990',2,545),
    ('d158wv265',2,464),
    ('e401rg964',3,534),
    ('g081he649',3,375),
    ('x111ul919',0,437),
    ('m051mb788',3,432),
    ('q193xm641',1,42),
    ('e121pp797',0,733),
    ('c889bo886',2,218),
    ('t957ch195',2,186),
    ('k967vf907',3,936),
    ('i236xp600',3,400),
    ('d063wz917',3,169),
    ('h809fx610',3,698),
    ('z516dm968',1,533),
    ('d181ta295',3,102),
    ('k907tu644',1,341),
    ('g177fx109',0,307),
    ('m030fo460',1,363),
    ('u695sb263',0,998),
    ('k284jk506',1,609),
    ('c543bl692',1,166),
    ('d859co234',2,51),
    ('c710fg754',2,606),
    ('p604jv432',2,383),
    ('w532sx256',0,945),
    ('q875yz507',3,58),
    ('q894di569',0,611),
    ('g081mo608',0,726),
    ('m164mn397',2,687),
    ('f721pz512',3,883),
    ('b473br711',3,378),
    ('n663zz840',0,98),
    ('c799ey857',0,376),
    ('l424be206',0,160),
    ('z272di107',1,291),
    ('y536lq258',3,906),
    ('f072ul426',2,613),
    ('n216qu063',3,625),
    ('t233uu719',1,823),
    ('v905um225',1,148),
    ('l296sm630',3,271),
    ('w209mr270',3,967),
    ('c828cu747',3,31),
    ('m925rv841',3,536),
    ('k392nf922',3,101),
    ('i156uw635',1,473),
    ('u068fb988',1,750),
    ('v394pl395',1,570),
    ('z408jl275',1,186),
    ('v059ug377',2,138),
    ('q133sr318',3,891),
    ('m181dz070',1,627),
    ('x851qa394',0,830),
    ('g434tc560',2,922),
    ('j085vi053',2,974),
    ('r190pa477',0,313),
    ('v525nn460',0,25),
    ('g887ry115',2,47),
    ('c003wt617',0,254),
    ('j789ng249',0,942),
    ('c656vb897',3,707),
    ('w689fl862',3,49),
    ('w932fb177',0,13),
    ('e916dy293',1,380),
    ('u962ec619',3,981),
    ('k283ca330',2,580),
    ('q139zc506',3,536),
    ('b455ay907',0,102),
    ('y233pw447',2,853),
    ('o509pq615',2,537),
    ('l697aa969',2,763),
    ('d265wm948',3,214),
    ('n842bu820',3,431),
    ('d954zp429',2,764),
    ('m714gb449',2,33),
    ('h695fi619',1,962),
    ('l466im407',0,208),
    ('q904ru299',0,193),
    ('q799xj513',0,830),
    ('s541ij246',0,720),
    ('y144ix344',3,124),
    ('u881ym506',1,96),
    ('z245nb040',2,583),
    ('x904rd947',2,693),
    ('d460cs298',1,390),
    ('n187ek625',0,733),
    ('r019lo482',3,615),
    ('n410bm313',3,288),
    ('q129fj235',0,113),
    ('w098pl019',0,727),
    ('d839qk930',3,35),
    ('h102py658',1,125),
    ('a870gf665',1,889),
    ('o191ou646',1,395),
    ('y379wm368',0,919),
    ('e378np065',3,493),
    ('o406ek774',2,575),
    ('a114lp564',2,320),
    ('t490xc738',1,962),
    ('r780vu452',3,506),
    ('w551oa810',0,703),
    ('m218po468',3,79),
    ('h218hq053',1,144),
    ('e183ic690',2,232),
    ('e751nd084',2,818),
    ('t584kf468',3,944),
    ('d787nk682',0,972),
    ('c165cl182',2,511),
    ('v771yz157',1,271),
    ('q264fr314',1,184),
    ('b535ed533',2,907),
    ('o022ql051',1,113),
    ('u060gk860',0,28),
    ('c998ko580',1,893),
    ('a457tf741',2,870),
    ('d038xb216',3,761),
    ('c725ee458',2,547),
    ('d228hm705',2,511),
    ('j834mm594',1,395),
    ('g444bh546',2,576),
    ('y328ky202',2,390),
    ('u500im625',1,92),
    ('z575uf752',2,895),
    ('y682iv019',0,476),
    ('q556ab648',3,843),
    ('s730mv455',3,797),
    ('o318xi368',0,291),
    ('p289eo998',3,671),
    ('k492yg522',3,18),
    ('u039vq709',2,184),
    ('j610oz465',2,345),
    ('k538wm651',3,22),
    ('j490ln819',2,358),
    ('s969bs136',3,342),
    ('l402py670',1,960),
    ('n123rb607',2,676),
    ('c304sb496',1,878),
    ('b244dp222',1,645),
    ('m716ej118',0,922),
    ('x273od111',1,872),
    ('p769oi162',2,403),
    ('a642rt046',1,302),
    ('v717ln461',1,364),
    ('x179ye069',0,756),
    ('z308nn593',0,240),
    ('w277yk807',2,750),
    ('p738it900',2,936),
    ('y104qy605',1,675),
    ('a549ca914',0,647),
    ('x794rr796',1,945),
    ('w955ok827',3,329),
    ('e203ya716',3,964),
    ('j242gn647',0,629),
    ('n448kr936',0,568),
    ('i192sb078',0,644),
    ('i959lw012',0,889),
    ('r275mq977',0,198),
    ('f004nl434',0,717),
    ('v658xp046',0,108),
    ('h341gy350',2,39),
    ('g451wy897',3,212),
    ('i469cd118',2,704),
    ('e615ms205',1,920),
    ('a104nt804',3,682),
    ('d042rj192',2,721),
    ('i720fd473',0,103),
    ('z745bm972',0,336),
    ('v988ni215',2,76),
    ('m699qe482',2,135),
    ('x332gk773',1,365),
    ('w461qm474',0,343),
    ('i349rr820',3,189),
    ('c637np379',3,494),
    ('p697ei473',1,710),
    ('p373wz459',3,955),
    ('f305th915',0,149),
    ('n230ye009',3,294),
    ('r740ib437',1,262),
    ('n436cq589',0,708),
    ('p471fc034',3,654),
    ('v076bk726',1,932),
    ('k080ve820',2,237),
    ('c090bt626',0,400),
    ('r491if606',3,296),
    ('t638yt481',0,155),
    ('r000zz446',3,7),
    ('b696ud988',1,290),
    ('g588vo893',2,864),
    ('n538to460',3,35),
    ('o721jj119',1,932),
    ('b815qd387',1,512),
    ('g316ca033',1,754),
    ('g984eq514',2,256),
    ('z878os058',1,613),
    ('l236px023',3,552),
    ('h177gh708',2,562),
    ('o420fg104',0,771),
    ('i575fn702',0,22),
    ('j960qs282',3,312),
    ('r721lv946',0,730),
    ('h259hi183',1,449),
    ('d440bc174',0,813),
    ('k415ny730',0,823),
    ('i518ob599',1,673),
    ('t241xo714',2,672),
    ('y725jk068',0,153),
    ('w658cn272',0,924),
    ('d932cn731',0,571),
    ('l554zs412',3,807),
    ('r629ea844',3,207),
    ('e410ou656',1,1),
    ('z547of936',3,937),
    ('l062mi887',2,811),
    ('t387hv153',2,368),
    ('b504ei334',0,221),
    ('e716lr492',3,501),
    ('u199ws731',1,832),
    ('d482ks438',0,618),
    ('f553jo013',2,96),
    ('k993gj776',2,777),
    ('n931ha525',2,437),
    ('o465ip133',0,26),
    ('x286tk575',3,379),
    ('v822uz554',1,421),
    ('n353nm931',3,410),
    ('j988mp300',3,487),
    ('b739nn150',3,442),
    ('z004oj929',3,226),
    ('t181mi367',2,294),
    ('k222xm697',1,554),
    ('a932kg714',2,982),
    ('n464gh107',3,601),
    ('r593oj703',2,572),
    ('t015qg685',2,60),
    ('f307xl330',1,546),
    ('h668kh383',1,436),
    ('t482iy099',2,907),
    ('w379lw301',1,874),
    ('s165ma215',0,288),
    ('o269be896',0,985),
    ('m839rp990',2,978),
    ('m515vr277',2,792),
    ('o817lr302',1,697),
    ('y568io886',3,237),
    ('l506pz122',0,619),
    ('z713xv075',0,400),
    ('z271qp347',1,331),
    ('e718ij250',2,442),
    ('w044me342',0,473),
    ('t835jn976',1,954),
    ('v165eu043',0,279),
    ('g843jy570',3,41),
    ('c269hj537',0,4),
    ('t160xo230',2,34),
    ('z587lq639',1,766),
    ('i341qp634',2,474),
    ('h190zt327',1,745),
    ('e002rr826',3,284),
    ('f307pm851',0,80),
    ('n384fg272',1,376),
    ('w207fm632',0,798),
    ('o464ua857',1,83),
    ('g294vn221',1,693),
    ('t733fv303',1,148),
    ('k657ln543',3,475),
    ('w995mw360',1,414),
    ('r871cp904',3,729),
    ('a165dn735',3,260),
    ('l260pk505',3,985),
    ('m808tc152',1,27),
    ('i030go286',1,580),
    ('f371tp035',1,655),
    ('g160zz895',1,630),
    ('f458vi351',1,504),
    ('o279rw490',3,352),
    ('n670lh660',1,997),
    ('t056ps989',0,711),
    ('n411na099',1,694),
    ('u791dv976',1,258),
    ('d442go756',1,377),
    ('g565at598',3,626),
    ('y369mh929',3,452),
    ('i527nq547',0,383),
    ('j232oz422',1,833),
    ('p392qk786',0,661),
    ('z690ky334',1,894),
    ('w976xf234',3,450),
    ('e895xl211',1,288),
    ('j529gn080',1,942),
    ('e304uf546',1,749),
    ('s491wc452',1,454),
    ('r943aj820',0,958),
    ('e847nl095',1,333),
    ('c703dt038',1,122),
    ('z444td715',2,772),
    ('c041zm125',2,450),
    ('s826cx581',1,765),
    ('y522nl084',1,212),
    ('k051eg421',0,795),
    ('w096ol129',2,857),
    ('c265kl012',3,979),
    ('n845ca124',1,770),
    ('p790tx968',0,983),
    ('r625ii828',2,855),
    ('f906ga984',1,262),
    ('b059rf922',0,841),
    ('i713dg497',1,986),
    ('n688ci296',1,186),
    ('i785mz143',3,375),
    ('l867tp175',0,712),
    ('p369dp053',3,954),
    ('h625ht308',3,843),
    ('s107gb949',0,947),
    ('h335gz250',1,621),
    ('q374bc253',2,421),
    ('i893ku726',0,523),
    ('g406au669',0,400),
    ('o677hv313',1,73),
    ('y675ek541',0,275),
    ('o164oi177',1,945),
    ('x896lq917',2,213),
    ('g335pc681',3,851),
    ('v629ps984',3,123),
    ('w829vz191',1,677),
    ('s771zw013',1,387),
    ('b468ho294',0,829),
    ('m323js061',2,858),
    ('j968zt671',0,280),
    ('y335em641',0,318),
    ('h818pj195',3,744),
    ('j736bj073',3,48),
    ('k646dm549',1,497),
    ('d093so058',3,826),
    ('e115jx055',1,798),
    ('b888vg801',1,164),
    ('j998nr877',1,990),
    ('q000py006',0,520),
    ('w534nu672',2,833),
    ('t908eg357',2,189),
    ('z377yk804',1,628),
    ('y408bn636',3,879),
    ('x609fw782',2,89),
    ('o162xq508',3,83),
    ('u149rl236',3,617),
    ('g412wq704',1,62),
    ('r758qr920',2,366),
    ('y377wf373',0,10),
    ('b756vh449',0,478),
    ('r111lx466',1,936),
    ('m180wp511',3,239),
    ('a837vs835',3,793),
    ('x559hp706',1,973),
    ('f394do646',3,663),
    ('j124ls730',3,618),
    ('w930tn188',3,120),
    ('m779ux136',2,784),
    ('k881qx393',0,979),
    ('q756gh595',0,272),
    ('u793tk712',2,238),
    ('o386ul181',3,768),
    ('k507wp697',1,249),
    ('x206ep889',3,292),
    ('o327rv486',0,734),
    ('x729yv662',1,943),
    ('u991ph596',1,16),
    ('w147mz871',0,33),
    ('d450vu247',1,344),
    ('m677ze704',1,309),
    ('w796qm188',2,573),
    ('c095ka151',2,265),
    ('i834hb364',0,376),
    ('c819rc347',0,434),
    ('y127jn594',3,368),
    ('h402wz983',0,292),
    ('r955bf771',2,356),
    ('o447vm375',2,230),
    ('x874cx465',3,767),
    ('m476sd019',3,163),
    ('a266tf291',0,293),
    ('a836lx062',0,486),
    ('v657jr720',2,813),
    ('m229pu357',0,838),
    ('m954av187',3,55),
    ('i714qm234',1,470),
    ('d367ga441',2,981),
    ('o543tv659',3,594),
    ('b175ki905',2,490),
    ('y868dx334',1,806),
    ('a497sb341',1,333),
    ('g238zn955',2,366),
    ('o468nj377',2,884),
    ('i444ar379',0,664),
    ('a994gp519',0,610),
    ('g079nf263',1,895),
    ('c606ad525',2,151),
    ('a981ga461',2,486),
    ('j929jr226',0,60),
    ('g295vy686',3,483),
    ('j721al393',2,918),
    ('p346rr544',0,542),
    ('o963yw526',0,84),
    ('v266ul870',0,82),
    ('n909jl035',3,808),
    ('c818vx231',3,132),
    ('g888gz162',0,501),
    ('z903bm539',2,644),
    ('c032bu817',0,114),
    ('m981el183',0,79),
    ('r933tb643',3,403),
    ('s903xm337',0,459),
    ('u758kx830',2,177),
    ('e315tm595',3,64),
    ('b341fo690',2,579),
    ('k931rg672',0,32),
    ('l461lt961',3,802),
    ('u407ix917',3,193),
    ('z905ge505',2,166),
    ('b359bj196',2,825),
    ('y409kf534',3,203),
    ('w727ld135',2,597),
    ('b170lo070',3,706),
    ('l383oe220',0,282),
    ('g499sf481',2,896),
    ('x044rz420',3,112),
    ('y138st669',2,725),
    ('y422pb958',2,411),
    ('c384nu853',3,266),
    ('x978bm062',0,552),
    ('y425sd365',2,825),
    ('i549jz404',3,797),
    ('z061nn992',3,594),
    ('f822ar368',0,355),
    ('h525fi217',3,45),
    ('w853np018',2,404),
    ('f995cm014',1,948),
    ('e416ps293',1,431),
    ('f068zi383',3,892),
    ('j358ur937',1,776),
    ('s455fl876',3,172),
    ('v654eq716',0,667),
    ('l948vv992',1,969),
    ('n529zr514',2,819),
    ('g165xo482',0,696),
    ('n729wl111',1,821),
    ('j024vg318',3,25),
    ('m708om950',0,182),
    ('s105mf885',0,288),
    ('d002zn076',3,949),
    ('t501we305',2,729),
    ('n866zx584',2,724),
    ('b183sr232',2,76),
    ('k411ix785',1,1),
    ('g614dx629',2,702),
    ('q354my945',0,725),
    ('x546ma220',0,438),
    ('n550av745',2,127),
    ('w812sm039',0,798),
    ('g280le967',2,75),
    ('y210dx315',0,420),
    ('i262ls053',1,516),
    ('u132zx231',2,875),
    ('n386rz727',1,563),
    ('q096nn646',3,367),
    ('j071yo606',0,733),
    ('a949tg041',0,431),
    ('j510br107',2,697),
    ('y591sp801',3,567),
    ('h469ud304',2,835),
    ('r654nr922',3,589),
    ('s312rq878',0,343),
    ('e190zj681',2,662),
    ('x516kk806',1,537),
    ('y834ae448',1,983),
    ('w701ol081',2,665),
    ('p958bm484',3,749),
    ('z561ml838',2,241),
    ('b121sb878',1,340),
    ('p987pm777',3,248),
    ('g319eg327',2,733),
    ('g067mq352',1,125),
    ('h976wv351',0,610),
    ('q506el563',1,145),
    ('j396wi528',1,158),
    ('x115gs549',2,1),
    ('s889pn337',2,798),
    ('g393gj841',2,492),
    ('l043cq029',0,944),
    ('c625qx957',2,892),
    ('o626cl286',2,66),
    ('w092xr904',3,850),
    ('i420iy358',2,641),
    ('n379cm285',2,384),
    ('e302we109',3,176),
    ('s343ex888',1,657),
    ('u710bm691',1,957),
    ('j301ny810',3,206),
    ('q297rl886',2,537),
    ('w468je847',2,12),
    ('c091qq119',3,965),
    ('z729pv586',0,640),
    ('f456ag474',2,166),
    ('i815hj861',3,486),
    ('f021dk353',1,516),
    ('u736is442',1,155),
    ('k175ub805',2,523),
    ('p383gb211',3,552),
    ('h328wc419',3,419),
    ('h020ig988',3,897),
    ('f731nh095',3,643),
    ('w566dv957',0,575),
    ('f999wc953',3,144),
    ('b512qp282',3,621),
    ('e207pp869',0,335),
    ('n224ky977',0,646),
    ('r852mb062',0,885),
    ('o914kx543',3,195),
    ('n195nf434',1,792),
    ('q319dh076',1,61),
    ('e587yc449',1,13),
    ('y707nb496',3,924),
    ('h872jn162',3,273),
    ('c325gf607',1,983),
    ('h329ki566',2,196),
    ('p168ha180',0,491),
    ('l638lt123',1,355),
    ('a417od421',0,13),
    ('g250eu563',0,78),
    ('n522xm185',0,582),
    ('f856zq196',1,734),
    ('h855pv917',1,200),
    ('u786dg376',2,339),
    ('k742hj569',0,41),
    ('o003vc963',0,983),
    ('d832ec862',2,684),
    ('f357su482',1,710),
    ('x847kl140',3,117),
    ('u966pg592',1,77),
    ('l931id307',1,188),
    ('g765hx613',2,796),
    ('e747dp502',0,500),
    ('y901mo185',1,115),
    ('b051xb193',0,342),
    ('k731tj439',2,381),
    ('f286go709',2,74),
    ('r802al618',0,629),
    ('c531ly089',2,794),
    ('o396fm710',1,37),
    ('s403th476',3,25),
    ('q210os222',0,621),
    ('n745uy995',1,120),
    ('d317ad631',3,766),
    ('x162vn095',3,446),
    ('x329uj399',0,840),
    ('t615ft281',1,586),
    ('f279dr252',2,846),
    ('i962zg313',2,633),
    ('u212pd862',0,960),
    ('d829sn059',0,479),
    ('u520iw069',3,559),
    ('n545jm905',0,327),
    ('v436me382',3,495),
    ('p921uf272',3,41),
    ('q475gp537',2,19),
    ('r996sm316',2,954),
    ('a401ix954',2,123),
    ('x350wz057',0,16),
    ('d551am386',1,993),
    ('p851hj705',1,949),
    ('s600rc708',3,329),
    ('g084cs331',1,858),
    ('z040ek055',0,232),
    ('e319op527',2,637),
    ('m575yc030',1,247),
    ('s221ms009',1,888),
    ('z646nk131',1,723),
    ('y032lt602',1,367),
    ('o738iq697',3,817),
    ('t647nl546',3,122),
    ('x667yy314',2,973),
    ('r042nq788',2,608),
    ('r088wc351',1,788),
    ('k722uw276',1,117),
    ('d834ff263',3,417),
    ('d695gn795',3,894),
    ('b160eg430',2,793),
    ('k052ib588',2,776),
    ('e331qq254',3,879),
    ('x895cs925',1,227),
    ('y160tg804',3,410),
    ('x112it468',1,955),
    ('h860ta192',1,134),
    ('c003qz146',2,164),
    ('d211zd826',1,544),
    ('n204gt555',1,435),
    ('p655ly926',2,29),
    ('x336zx065',2,255),
    ('z921up437',1,596),
    ('e684mk129',1,911),
    ('p617mh332',3,535),
    ('d538mu155',2,91),
    ('d511qh512',3,770),
    ('u707mk578',0,670),
    ('j747fj686',1,415),
    ('m196ke652',2,74),
    ('t367ps384',0,6),
    ('x651bm605',2,949),
    ('g315yl000',1,191),
    ('s505fd801',3,279),
    ('x085xj891',2,127),
    ('f696rr240',3,748),
    ('j325hj430',0,650),
    ('o317mt791',0,375),
    ('z000kh568',1,113),
    ('m320lx280',1,835),
    ('a528mn800',2,621),
    ('j318js147',0,314),
    ('j059qq067',3,791),
    ('c141om520',3,904),
    ('i397ck619',0,700),
    ('h295yi413',0,164),
    ('n140zy095',2,526),
    ('x736ba530',2,837),
    ('e748vc080',3,514),
    ('n849ft055',1,275),
    ('a372xh807',0,746),
    ('z943an071',2,759),
    ('v308iw403',3,334),
    ('o767mt777',3,433),
    ('t418we534',2,89),
    ('l134ga812',0,500),
    ('v864jr473',2,279),
    ('g766ni063',1,333),
    ('q864kj057',3,164),
    ('g857bz385',2,227),
    ('u254my333',3,12),
    ('r388sz829',0,998),
    ('t816rr017',2,446),
    ('v121nn329',3,152),
    ('k829at377',0,42),
    ('q373bv721',3,102),
    ('q192ta816',0,325),
    ('h781qo036',1,417),
    ('u255ao510',1,376),
    ('p570yl584',3,999),
    ('u509ja108',1,513),
    ('h731xh706',0,270),
    ('y715fp965',1,988),
    ('g297hc792',3,780),
    ('g368gp870',0,831),
    ('n096ta628',0,510),
    ('a261bx605',2,861),
    ('b824nh199',2,919),
    ('p148fc253',0,571),
    ('q600te295',0,522),
    ('z618to112',0,137),
    ('v703ad865',3,986),
    ('o067lb154',0,556),
    ('w061kf891',1,757),
    ('d049cb697',3,324),
    ('p474jj795',2,528),
    ('p515pg197',3,276),
    ('b509jj216',2,758),
    ('p428qs647',0,46),
    ('v446eb384',0,102),
    ('q737mt872',0,144),
    ('y701no423',2,623),
    ('v682me288',1,318),
    ('h620ce947',1,82),
    ('s367pc857',0,103),
    ('s828uy247',2,83),
    ('y619dd259',2,884),
    ('n502jd863',0,599),
    ('p246dk548',2,7),
    ('p428qa498',3,530),
    ('t572wj509',3,472),
    ('o915yg644',3,692),
    ('k679bt766',1,754),
    ('z421ev718',2,75),
    ('v203er469',1,662),
    ('l957yg801',2,751),
    ('o600bc557',1,967),
    ('b025zi817',0,945),
    ('r509xm957',3,541),
    ('j661sm889',3,533),
    ('c783mm719',3,742),
    ('s057gq754',3,1000),
    ('y194lc305',2,459),
    ('f490ox528',3,432),
    ('f976ul379',3,741),
    ('y208hq042',1,14),
    ('g752zr137',3,60),
    ('v494sw361',2,983),
    ('l234ee082',0,409),
    ('c887za383',2,647),
    ('u294ug032',3,245),
    ('j415jg818',1,463),
    ('w764oh087',3,358),
    ('p821xq430',2,616),
    ('p051gr368',2,224),
    ('t212tm568',1,599),
    ('b198sb048',1,563),
    ('v583yl517',2,482),
    ('b538ie059',3,964),
    ('r167yo071',1,690),
    ('w474vz070',2,676),
    ('f788lj384',0,179),
    ('c637ah406',0,91),
    ('n781ox091',2,539),
    ('o333oa493',2,876),
    ('w953jj451',1,34),
    ('e634pd922',0,382),
    ('f755dy257',2,349),
    ('e328lw732',2,439),
    ('j903ht486',0,132),
    ('f654dg390',3,859),
    ('g786po506',0,63),
    ('v753oj241',0,589),
    ('v284lo445',2,212),
    ('a927ju354',2,252),
    ('g778uf617',2,667),
    ('y544de552',0,502),
    ('e793tp708',0,706),
    ('c249ow563',2,710),
    ('i126cm445',3,361),
    ('r203dd781',3,855),
    ('d857kn238',3,778),
    ('k850kp089',1,608),
    ('l887li282',0,903),
    ('u416le142',1,774),
    ('y580gb165',2,477),
    ('n664lo691',3,909),
    ('u987rv429',3,699),
    ('h261yi577',0,237),
    ('w434sa222',0,917),
    ('j304zk773',1,422),
    ('m142jc392',1,135),
    ('m100bw123',0,924),
    ('w346qu064',3,35),
    ('o079vg588',3,713),
    ('v283yo778',0,782),
    ('h662hl643',2,352),
    ('t551yp851',1,957),
    ('o832ef974',2,852),
    ('y306ce588',0,246),
    ('u707uj144',1,27),
    ('j622ch080',2,350),
    ('r350sx335',1,195),
    ('q139fj674',3,400),
    ('l097al185',1,220),
    ('x372lc404',2,223),
    ('m548al170',2,351),
    ('y446nw341',1,184),
    ('q021yg050',2,739),
    ('n620ld309',0,27),
    ('u472vb671',0,315),
    ('e526li571',0,243),
    ('e739bs108',0,885),
    ('t017gt692',2,663),
    ('a246ke472',0,62),
    ('w521ie890',0,742),
    ('e895pm967',3,725),
    ('g132qd003',3,634),
    ('a945dy273',2,865),
    ('f564mm133',3,813),
    ('c271qm334',1,289),
    ('y596uf738',3,920),
    ('s920pu799',0,384),
    ('k499vk987',3,787),
    ('k471fy553',2,200),
    ('v742mh159',2,739),
    ('l427jm935',3,840),
    ('c091yn669',3,637),
    ('o707ph958',0,220),
    ('m166ow666',2,911),
    ('c756eg164',2,673),
    ('h772uo172',3,734),
    ('k019el268',1,768),
    ('a164xx183',3,691),
    ('k196zf584',2,217),
    ('s179dc182',0,621),
    ('w672yk403',1,481),
    ('l589ih622',1,166),
    ('o247ax316',2,363),
    ('x035bo607',0,584),
    ('m163eg416',0,721),
    ('w078lx897',2,613),
    ('b900kp415',2,982),
    ('a352rq508',2,313),
    ('f291me022',0,654),
    ('k003dz404',1,478),
    ('e441in819',2,264),
    ('h826hk029',2,855),
    ('n090tm059',3,696),
    ('k560cx290',1,709),
    ('b255zi413',1,577),
    ('u015ew310',2,516),
    ('z042sb588',0,790),
    ('e788ik338',1,184),
    ('e227ew448',3,894),
    ('y267th218',0,102),
    ('h342rg908',2,355),
    ('f237ua065',0,904),
    ('i642hx261',0,102),
    ('m996dv005',3,856),
    ('o282cm498',2,675),
    ('v612ev826',0,313),
    ('j823fl536',3,529),
    ('y737er524',1,572),
    ('a465ek337',3,618),
    ('u764zi877',3,185),
    ('d435br533',0,53),
    ('y827os091',1,280),
    ('h524pa513',0,229),
    ('d533ns343',2,89),
    ('b783vv642',3,455),
    ('v845ks023',1,911),
    ('j344lw358',3,2),
    ('z040wh835',0,221),
    ('o307st058',0,545),
    ('k951at152',0,767),
    ('q816mw397',0,695),
    ('n015ap029',3,439),
    ('l853ma342',1,24),
    ('w335fj575',3,821),
    ('j796wo572',0,993),
    ('h524mc776',2,111),
    ('r599yl952',0,917),
    ('a319ep915',0,508),
    ('q027nc014',3,409),
    ('l970jv724',1,182),
    ('l678pk210',0,904),
    ('c546hb340',2,703),
    ('q243iw017',1,714),
    ('x228vu583',3,208),
    ('d385xm748',3,144),
    ('r287sr830',1,60),
    ('e902ne671',1,352),
    ('h984bb260',0,606),
    ('t833zo070',3,944),
    ('c955zp407',3,523),
    ('w437xx429',0,984),
    ('v647ua920',1,52),
    ('r761le929',2,472),
    ('f287py249',1,489),
    ('e153sm979',2,14),
    ('w055to529',2,245),
    ('b190fi839',0,506),
    ('c963ei492',3,955),
    ('g577qq637',2,445),
    ('t542ji629',3,437),
    ('l285rs695',1,811),
    ('c116rv953',3,392),
    ('q934jx044',0,321),
    ('s754ko739',2,291),
    ('j531tm292',0,996),
    ('z275nq135',3,110),
    ('j324aw433',2,668),
    ('l569pj527',0,485),
    ('y834yd313',0,668),
    ('s354pp959',2,723),
    ('w441hw354',1,752),
    ('g040jp984',3,327),
    ('d272hl867',1,657),
    ('a823mx023',3,24),
    ('n440dx649',1,406),
    ('w619vb377',0,511),
    ('b182tr580',0,864),
    ('r659pn992',1,222),
    ('x837lb119',3,315),
    ('b116zb761',2,181),
    ('j371pb248',3,395),
    ('b221wf997',1,788),
    ('d092aj254',3,113),
    ('o927bo893',0,787),
    ('s387bb164',0,192),
    ('x432ka089',3,652),
    ('q961gb811',1,157),
    ('i949jn504',1,301),
    ('o695xz328',3,23),
    ('h294pb598',3,75),
    ('z775by390',1,128),
    ('l426fi751',2,216),
    ('f941qs864',2,789),
    ('v197de054',3,706),
    ('x549wl105',0,106),
    ('e192bp195',1,422),
    ('b546ws144',2,235),
    ('p102rs239',0,730),
    ('j715aq281',1,472),
    ('y814yv701',1,269),
    ('g874df580',2,35),
    ('x369da748',0,921),
    ('n324lh265',3,800),
    ('t151fm927',2,915),
    ('r331jb811',2,625),
    ('h696sv241',1,371),
    ('p963ev307',0,745),
    ('c730oy819',3,226),
    ('b185lr642',0,612),
    ('q817ou135',3,817),
    ('n183lm780',2,818),
    ('u726fi633',2,705),
    ('k807zj969',3,597),
    ('r102ai279',0,590),
    ('w698cz790',2,48),
    ('q778bq806',1,966),
    ('y914io268',1,61),
    ('i680iv915',3,731),
    ('k490vj772',0,238),
    ('m725jn677',2,987),
    ('k918ev974',0,24),
    ('l086ru333',2,237),
    ('e349np769',2,252),
    ('z269xp969',3,192),
    ('c968ix266',2,176),
    ('t766ti619',3,143),
    ('h321ml456',2,543),
    ('a065bm634',0,66),
    ('z512pf094',1,71),
    ('y940eq046',3,987),
    ('g503ay362',1,679),
    ('t031wp503',2,660),
    ('k670cc956',3,146),
    ('z803xu050',3,312),
    ('s865pu464',0,185),
    ('e489xd382',0,479),
    ('h277xi888',0,84),
    ('h627ei661',0,634),
    ('g029eo684',1,986),
    ('e972kg040',2,170),
    ('c755xt087',0,896),
    ('f364az608',2,182),
    ('d949rx551',0,124),
    ('n769aq972',1,928),
    ('a759ov633',0,312),
    ('l381zh233',2,892),
    ('t795yu005',2,988),
    ('q812sa183',1,279),
    ('h140zn232',2,493),
    ('o242hz097',2,657),
    ('y074qj731',2,800),
    ('c082xn232',2,565),
    ('m585vy848',0,315),
    ('m623gg692',1,57),
    ('v952wz836',3,319),
    ('u249ow190',0,981),
    ('e418dm021',0,426),
    ('n935wf222',0,313),
    ('q652wu011',0,898)
ON CONFLICT DO NOTHING;

-- count: 1004
-- active count: 496
-- deleted count: 508
INSERT INTO spots(number, active)
VALUES
    ('1A', true),
    ('3A', true),
    ('4A', true),
    -- deleted
    ('2A', false),
    ('5B', false),
    -- new
    ('680XO',true),
    ('5476Q',false),
    ('099Q6',true),
    ('520PD',false),
    ('89712',false),
    ('788PU',false),
    ('9538C',false),
    ('3603X',false),
    ('2615X',true),
    ('068U3',false),
    ('272RS',false),
    ('524AQ',false),
    ('174T3',true),
    ('49683',true),
    ('306SS',false),
    ('6580Z',false),
    ('833UE',true),
    ('878J9',true),
    ('332G6',false),
    ('2146C',false),
    ('9383L',false),
    ('1363F',true),
    ('280AT',true),
    ('497U9',false),
    ('649X4',false),
    ('434ZS',false),
    ('320SF',false),
    ('93266',false),
    ('065MB',false),
    ('492X3',false),
    ('173KF',false),
    ('264NZ',false),
    ('626J1',true),
    ('990V5',false),
    ('577WM',true),
    ('982B2',false),
    ('425UD',false),
    ('013GG',false),
    ('354EL',true),
    ('426V6',true),
    ('1858N',false),
    ('391UG',true),
    ('249KR',true),
    ('2372Y',false),
    ('6911X',true),
    ('6831B',false),
    ('2670H',false),
    ('220QL',true),
    ('2881H',false),
    ('888F4',true),
    ('796I8',false),
    ('613PI',false),
    ('235Q2',false),
    ('254D7',true),
    ('67183',false),
    ('1965E',true),
    ('832G3',false),
    ('382Q3',false),
    ('639SZ',true),
    ('053M1',true),
    ('674WP',false),
    ('3679A',false),
    ('191EH',false),
    ('681RQ',true),
    ('145J1',false),
    ('3546',false),
    ('799EV',false),
    ('898KR',true),
    ('445WL',true),
    ('170K3',false),
    ('932B4',true),
    ('27859',true),
    ('9215S',true),
    ('916JI',true),
    ('590EI',false),
    ('1781X',true),
    ('8929R',true),
    ('31604',false),
    ('1519C',true),
    ('799KN',true),
    ('409WL',false),
    ('098IG',false),
    ('138O2',true),
    ('982B0',false),
    ('179BY',false),
    ('776RC',true),
    ('85886',false),
    ('5695A',true),
    ('111K6',false),
    ('794H5',false),
    ('130V0',true),
    ('189UR',true),
    ('066IG',false),
    ('1219D',false),
    ('300OJ',false),
    ('2015C',false),
    ('891CI',true),
    ('911KH',false),
    ('84987',true),
    ('606BF',false),
    ('514XE',false),
    ('309Z2',false),
    ('925MC',false),
    ('546T0',false),
    ('81997',false),
    ('175YT',false),
    ('690TW',true),
    ('12557',false),
    ('8006O',true),
    ('493LX',true),
    ('876G4',false),
    ('772LX',true),
    ('320R5',false),
    ('999TM',false),
    ('637SF',true),
    ('80245',true),
    ('753Q8',false),
    ('178TT',false),
    ('732WM',false),
    ('358K9',true),
    ('857SJ',false),
    ('023VK',true),
    ('519CD',false),
    ('1666V',true),
    ('6412Y',true),
    ('865SH',true),
    ('777Q4',false),
    ('581O1',false),
    ('2105B',false),
    ('042L6',false),
    ('768TG',true),
    ('654MP',false),
    ('7689Z',true),
    ('97138',true),
    ('3061K',false),
    ('202LP',true),
    ('844XI',true),
    ('635K0',false),
    ('37231',true),
    ('336YE',true),
    ('318MP',true),
    ('502MO',false),
    ('015J3',false),
    ('751NJ',false),
    ('345UG',true),
    ('2463M',true),
    ('246T7',false),
    ('463000000000',false),
    ('1412O',true),
    ('549U0',true),
    ('328CQ',true),
    ('995L6',true),
    ('8896',true),
    ('1760D',true),
    ('526W4',true),
    ('870N2',true),
    ('5706C',false),
    ('845PS',false),
    ('1182Y',false),
    ('172J2',false),
    ('1200L',true),
    ('931CD',true),
    ('8616W',true),
    ('654FC',false),
    ('059M4',true),
    ('587S0',true),
    ('916WU',true),
    ('449ND',false),
    ('1010000000',false),
    ('41958',false),
    ('450AX',false),
    ('081K4',false),
    ('196PI',false),
    ('648LX',false),
    ('158ZM',true),
    ('1596U',false),
    ('79927',false),
    ('4440N',true),
    ('198Q2',false),
    ('518KW',true),
    ('9374I',true),
    ('8639M',false),
    ('795GM',true),
    ('054NC',false),
    ('339SK',false),
    ('9745M',true),
    ('065QI',true),
    ('94689',true),
    ('879NL',true),
    ('310C9',false),
    ('7305B',false),
    ('503CS',true),
    ('934CF',false),
    ('564CJ',true),
    ('427NG',true),
    ('0783A',true),
    ('542RM',false),
    ('6107W',true),
    ('6206B',true),
    ('522PX',false),
    ('0812V',false),
    ('976W5',true),
    ('522X0',false),
    ('093NQ',false),
    ('9810X',false),
    ('104SV',false),
    ('0937J',false),
    ('692YF',false),
    ('84052',true),
    ('0799S',false),
    ('931DO',false),
    ('669000',true),
    ('826IJ',true),
    ('892Y2',true),
    ('621VO',false),
    ('558IY',false),
    ('468KK',false),
    ('535BW',true),
    ('39232',true),
    ('663AO',true),
    ('829WU',true),
    ('4927D',true),
    ('0677Z',true),
    ('871XZ',false),
    ('378Z3',false),
    ('864IH',false),
    ('5079J',false),
    ('103TG',true),
    ('812WF',false),
    ('308YB',false),
    ('62161',false),
    ('844KP',false),
    ('9655W',true),
    ('877VI',false),
    ('780KY',true),
    ('919FX',false),
    ('276C0',false),
    ('768GU',true),
    ('319LT',true),
    ('306000',true),
    ('324Z5',false),
    ('193QE',true),
    ('27968',true),
    ('52139',true),
    ('243QC',true),
    ('084L8',false),
    ('0652Z',true),
    ('922UB',true),
    ('6330R',true),
    ('171IB',false),
    ('1800L',false),
    ('672IS',false),
    ('990V4',false),
    ('872AO',false),
    ('124JJ',false),
    ('0312R',false),
    ('339JP',true),
    ('682S4',false),
    ('122FN',false),
    ('815W1',false),
    ('759U2',false),
    ('672ME',true),
    ('011R7',true),
    ('787F9',false),
    ('5244C',true),
    ('1215V',false),
    ('603PQ',true),
    ('895VX',false),
    ('6423T',false),
    ('693R0',true),
    ('8156A',false),
    ('4803Y',true),
    ('2153F',true),
    ('522HW',false),
    ('5431F',true),
    ('674NJ',false),
    ('7510Y',false),
    ('197D4',false),
    ('64418',false),
    ('801I6',false),
    ('241OU',false),
    ('0988K',true),
    ('460HR',true),
    ('068I2',true),
    ('906NN',true),
    ('843BL',true),
    ('426PR',true),
    ('934WH',false),
    ('183DJ',false),
    ('387SA',true),
    ('508DW',true),
    ('716BG',true),
    ('6191',true),
    ('940VB',false),
    ('6900P',false),
    ('444FW',false),
    ('716R5',true),
    ('1539E',true),
    ('188H5',false),
    ('177XM',true),
    ('017K3',false),
    ('864D3',true),
    ('593XG',false),
    ('2181E',true),
    ('401AM',false),
    ('4532R',false),
    ('891S0',true),
    ('503D3',false),
    ('109Z7',true),
    ('298FL',false),
    ('226CC',false),
    ('528UO',false),
    ('72370',true),
    ('71480',true),
    ('662L5',true),
    ('390JJ',false),
    ('7867K',false),
    ('3613S',false),
    ('7601N',true),
    ('7122G',false),
    ('1252T',false),
    ('330VM',false),
    ('135XO',false),
    ('910GN',true),
    ('652H5',true),
    ('8242F',true),
    ('263NJ',true),
    ('1676S',true),
    ('3514S',false),
    ('47956',true),
    ('4604W',true),
    ('702I3',false),
    ('948LE',false),
    ('8408K',true),
    ('371CV',true),
    ('379Q4',false),
    ('5702Y',true),
    ('8101K',true),
    ('2908F',true),
    ('797AD',false),
    ('192Y3',false),
    ('398ZQ',true),
    ('658GD',true),
    ('107AV',false),
    ('261Y4',false),
    ('896Y0',false),
    ('7346L',false),
    ('643UN',false),
    ('1553R',true),
    ('025ZZ',true),
    ('084AF',false),
    ('127RN',true),
    ('088CC',false),
    ('003MU',true),
    ('801D1',true),
    ('421RP',true),
    ('007DP',true),
    ('176LZ',true),
    ('9848V',false),
    ('223C9',false),
    ('690QM',false),
    ('8797S',true),
    ('668TA',false),
    ('822JX',false),
    ('661NE',false),
    ('6115Q',true),
    ('58467',true),
    ('101SY',false),
    ('120MH',false),
    ('0043E',false),
    ('332XT',false),
    ('351F4',true),
    ('437TW',false),
    ('93730',true),
    ('140EZ',true),
    ('96971',false),
    ('55214',true),
    ('802D3',true),
    ('631B8',true),
    ('6586D',true),
    ('749RR',true),
    ('91996',false),
    ('44320',false),
    ('861ND',false),
    ('441KB',true),
    ('856XR',false),
    ('8035',false),
    ('025OX',false),
    ('5612J',true),
    ('3104C',false),
    ('846QF',false),
    ('114XF',true),
    ('563XR',true),
    ('041JD',false),
    ('490SI',true),
    ('419DP',true),
    ('552S6',false),
    ('8585C',true),
    ('280SP',true),
    ('934U5',true),
    ('067Z8',false),
    ('1025U',true),
    ('6073L',false),
    ('7781P',true),
    ('219A6',true),
    ('580MX',false),
    ('710NA',false),
    ('793RS',true),
    ('3540000000',false),
    ('510AW',false),
    ('654VJ',false),
    ('380ZX',true),
    ('406CV',false),
    ('89645',false),
    ('560NG',true),
    ('7754O',true),
    ('554V0',false),
    ('266M3',true),
    ('9496O',true),
    ('813V3',false),
    ('769D3',true),
    ('778KA',false),
    ('616QS',true),
    ('601S0',false),
    ('332WS',true),
    ('423DK',false),
    ('669ED',true),
    ('538BC',false),
    ('295ZP',false),
    ('6850O',false),
    ('73399',false),
    ('42721',false),
    ('348JX',false),
    ('576Z5',false),
    ('716A8',true),
    ('2843E',true),
    ('117J7',false),
    ('840VI',false),
    ('5104B',true),
    ('840BN',false),
    ('589Z2',false),
    ('350EW',false),
    ('086KM',true),
    ('809CO',true),
    ('096YU',true),
    ('410XC',false),
    ('581XL',true),
    ('2437E',true),
    ('419ZX',false),
    ('9265D',true),
    ('144LE',false),
    ('881D9',false),
    ('101YZ',false),
    ('674ZH',false),
    ('9317P',false),
    ('6986N',false),
    ('654S1',false),
    ('479KO',true),
    ('628Z4',false),
    ('2674L',false),
    ('446G4',false),
    ('8791',false),
    ('821PW',false),
    ('491AR',false),
    ('926CE',false),
    ('013AE',false),
    ('930PO',false),
    ('032IU',true),
    ('271CD',true),
    ('298IA',false),
    ('8338A',true),
    ('845A3',true),
    ('847EK',false),
    ('445AT',true),
    ('734Z3',true),
    ('176MX',true),
    ('182WS',false),
    ('469MA',false),
    ('508ZX',true),
    ('462BH',true),
    ('238GE',true),
    ('4661Z',true),
    ('5128N',false),
    ('783Q2',true),
    ('108AH',true),
    ('249',false),
    ('7373Z',true),
    ('235JV',false),
    ('97241',false),
    ('409T4',true),
    ('777IQ',false),
    ('609000',false),
    ('323FE',true),
    ('610VM',true),
    ('261RG',false),
    ('4517A',true),
    ('435KS',true),
    ('042V9',true),
    ('982UQ',true),
    ('19022',false),
    ('071Q2',true),
    ('989HJ',true),
    ('982TK',true),
    ('978NT',false),
    ('398RT',false),
    ('475CN',false),
    ('601NW',true),
    ('8541A',true),
    ('432X4',false),
    ('644FD',true),
    ('605MZ',false),
    ('4786',true),
    ('607CW',false),
    ('5332A',true),
    ('76004',true),
    ('936OW',true),
    ('167PG',true),
    ('0574I',true),
    ('5877D',true),
    ('236MJ',true),
    ('246EC',true),
    ('2272A',false),
    ('42266',true),
    ('586H3',true),
    ('013WK',true),
    ('348LE',true),
    ('50409',false),
    ('714DT',false),
    ('053NJ',false),
    ('116CV',false),
    ('057GA',true),
    ('14349',true),
    ('214C3',false),
    ('799ZC',true),
    ('475II',false),
    ('170TV',false),
    ('913C1',true),
    ('0535J',true),
    ('866TB',true),
    ('9562K',true),
    ('771ZF',false),
    ('163OW',true),
    ('085KX',false),
    ('161KI',false),
    ('647XY',true),
    ('125J9',false),
    ('582Z9',true),
    ('803VQ',false),
    ('7441N',false),
    ('669N1',false),
    ('1342E',false),
    ('298FO',true),
    ('248DN',false),
    ('3767B',true),
    ('9049I',true),
    ('641T0',false),
    ('994YM',true),
    ('190KC',false),
    ('808RV',false),
    ('8878O',false),
    ('968VL',false),
    ('333T6',false),
    ('175NC',true),
    ('473F9',false),
    ('377QD',false),
    ('570HH',true),
    ('096BI',true),
    ('969FM',false),
    ('1764A',true),
    ('722YK',true),
    ('320DC',true),
    ('719CY',true),
    ('365D6',false),
    ('539I2',false),
    ('868N6',false),
    ('009YJ',false),
    ('1414Y',true),
    ('413GX',true),
    ('4508A',false),
    ('791V1',true),
    ('212V2',false),
    ('753PH',true),
    ('880PY',true),
    ('873HD',false),
    ('084NZ',true),
    ('888WB',false),
    ('9921P',false),
    ('719LT',false),
    ('984FT',false),
    ('926F0',true),
    ('103Y1',true),
    ('827B3',false),
    ('824PW',false),
    ('756IO',false),
    ('65469',true),
    ('4032Z',true),
    ('429TL',true),
    ('3795B',true),
    ('764WB',true),
    ('373YP',true),
    ('860DW',false),
    ('209TY',true),
    ('046XV',false),
    ('596OG',true),
    ('70908',true),
    ('019L9',false),
    ('8957O',false),
    ('248F4',true),
    ('918O9',true),
    ('1054S',true),
    ('444SJ',false),
    ('688U0',true),
    ('383EU',true),
    ('007GF',false),
    ('055BH',true),
    ('982H4',true),
    ('518BU',true),
    ('260DV',true),
    ('002R2',true),
    ('5759S',false),
    ('385KE',true),
    ('493NL',true),
    ('469KK',true),
    ('94272',false),
    ('566KP',false),
    ('463WQ',false),
    ('460GJ',true),
    ('851EF',false),
    ('55527',false),
    ('4055K',false),
    ('6747M',false),
    ('534B5',true),
    ('1283V',true),
    ('183M2',false),
    ('14011',false),
    ('132FJ',true),
    ('96572',false),
    ('366XS',false),
    ('3502O',true),
    ('359CH',true),
    ('644BO',true),
    ('557Z1',false),
    ('1096V',false),
    ('673SF',false),
    ('192RQ',false),
    ('236OW',true),
    ('527KE',false),
    ('267AE',false),
    ('450OI',false),
    ('354000000',true),
    ('066V9',false),
    ('142YB',true),
    ('760RF',true),
    ('649000000',true),
    ('786XP',true),
    ('130J9',false),
    ('580ZS',true),
    ('986D2',true),
    ('4151G',false),
    ('296CK',false),
    ('138OC',true),
    ('0429I',false),
    ('683A3',false),
    ('750KJ',true),
    ('891KM',true),
    ('332KB',false),
    ('462T1',false),
    ('450DX',true),
    ('023R4',true),
    ('391FH',false),
    ('453YZ',true),
    ('214T1',true),
    ('065LJ',true),
    ('112QA',true),
    ('0994M',false),
    ('018LA',false),
    ('1149L',true),
    ('0884U',true),
    ('929PS',true),
    ('800RF',true),
    ('199LF',true),
    ('4608',false),
    ('2485G',false),
    ('4065Q',false),
    ('116KQ',true),
    ('650X2',false),
    ('253MI',true),
    ('362LI',true),
    ('495NR',false),
    ('7061S',true),
    ('062W4',false),
    ('3865M',false),
    ('767V4',true),
    ('706UM',true),
    ('240CX',false),
    ('714HG',false),
    ('680BP',false),
    ('727DF',true),
    ('4937',false),
    ('40408',true),
    ('6133C',true),
    ('611I8',true),
    ('714H8',false),
    ('9914V',true),
    ('722FL',true),
    ('513ES',false),
    ('105YL',true),
    ('144OT',false),
    ('741DR',false),
    ('829YH',false),
    ('5392W',true),
    ('233FI',false),
    ('127XQ',false),
    ('9252P',false),
    ('380WH',false),
    ('1612P',true),
    ('5083V',true),
    ('3777U',true),
    ('704RG',true),
    ('167N0',true),
    ('4246V',false),
    ('230BI',true),
    ('6028B',false),
    ('386GC',false),
    ('64384',false),
    ('181Y1',true),
    ('4742P',false),
    ('5044R',true),
    ('51780',true),
    ('1885G',true),
    ('211UN',false),
    ('844PM',true),
    ('373G1',false),
    ('310SM',true),
    ('5665O',false),
    ('2182T',true),
    ('463FD',false),
    ('154X0',true),
    ('34737',true),
    ('353P1',false),
    ('3580B',false),
    ('186AO',true),
    ('297JW',true),
    ('724MK',true),
    ('916NU',false),
    ('756AW',true),
    ('7915Z',true),
    ('8039U',false),
    ('643VX',false),
    ('553H1',true),
    ('3621K',false),
    ('36279',false),
    ('763BJ',true),
    ('641MD',true),
    ('442OC',true),
    ('802XD',true),
    ('4627M',false),
    ('568CG',true),
    ('998TU',false),
    ('805VU',true),
    ('148LV',true),
    ('208H7',true),
    ('888BH',false),
    ('575VW',true),
    ('561FQ',false),
    ('2422B',true),
    ('942J8',true),
    ('64235',false),
    ('795UN',true),
    ('39236',true),
    ('910DB',true),
    ('9123Q',true),
    ('124CL',false),
    ('420ZZ',false),
    ('651N9',false),
    ('845YC',false),
    ('557QW',false),
    ('010CH',false),
    ('266VC',false),
    ('296S6',true),
    ('200Y0',false),
    ('882JP',false),
    ('7378P',true),
    ('846I7',true),
    ('3159P',false),
    ('710Q6',true),
    ('477RF',false),
    ('946VN',true),
    ('383X9',false),
    ('640UX',false),
    ('4805S',true),
    ('378LY',false),
    ('020MJ',false),
    ('817K1',true),
    ('538RB',false),
    ('590U6',true),
    ('235T3',false),
    ('0289R',false),
    ('734WX',true),
    ('3810L',false),
    ('3335N',true),
    ('4470L',false),
    ('050OP',false),
    ('051RO',true),
    ('046RG',true),
    ('0724J',true),
    ('896LO',false),
    ('669C2',true),
    ('376P8',true),
    ('462RK',true),
    ('955PQ',true),
    ('356RN',false),
    ('728I1',false),
    ('621D2',false),
    ('123CI',true),
    ('017QY',false),
    ('337IP',true),
    ('570D4',false),
    ('5319K',false),
    ('41131',false),
    ('329SA',false),
    ('221J8',true),
    ('531AO',false),
    ('1037Z',true),
    ('721MV',false),
    ('139OM',true),
    ('641VA',false),
    ('51406',true),
    ('40944',false),
    ('0544M',false),
    ('212BE',true),
    ('983CH',true),
    ('903F2',true),
    ('678B4',false),
    ('068D6',true),
    ('178J2',true),
    ('812VJ',true),
    ('750T1',true),
    ('2319N',true),
    ('202OP',true),
    ('769KN',false),
    ('012CO',false),
    ('340MN',true),
    ('683W6',true),
    ('1620C',true),
    ('834MA',true),
    ('802JY',false),
    ('944PL',false),
    ('691JU',true),
    ('706JU',true),
    ('639C7',false),
    ('900H3',false),
    ('265OK',true),
    ('9056U',false),
    ('9317V',false),
    ('63122',false),
    ('140AN',true),
    ('017Z6',false),
    ('839HN',false),
    ('8407E',true),
    ('931PG',false),
    ('563UL',true),
    ('1683W',false),
    ('920Q0',true),
    ('694ZL',true),
    ('6268D',false),
    ('912RL',true),
    ('050RF',false),
    ('157XQ',false),
    ('963NT',true),
    ('3229T',true),
    ('750RQ',true),
    ('856AW',true),
    ('37524',true),
    ('105PZ',false),
    ('305IV',false),
    ('1366E',true),
    ('6775Q',true),
    ('063KC',false),
    ('0001F',false),
    ('019EO',false),
    ('3315G',true),
    ('914VJ',true),
    ('713BD',false),
    ('099WJ',false),
    ('91612',true),
    ('346JL',true),
    ('458H0',true),
    ('212I2',false),
    ('332BE',false),
    ('67382',false),
    ('165NR',false),
    ('378TB',true),
    ('8935M',false),
    ('178TK',false),
    ('0830Q',false),
    ('217T6',false),
    ('3019W',false),
    ('50581',true),
    ('3883W',true),
    ('574J6',false),
    ('8073Z',true),
    ('3193K',false),
    ('040VY',true),
    ('105T2',false),
    ('1842Z',true),
    ('43502',true),
    ('337S8',false),
    ('9404M',false),
    ('272J0',true),
    ('1456Y',false),
    ('161K7',true),
    ('44101',false),
    ('398TP',false),
    ('9365T',false),
    ('670DB',false),
    ('895EY',true),
    ('1748M',true),
    ('45454',true),
    ('792G8',false),
    ('699IA',true),
    ('402QK',true),
    ('505SG',false),
    ('150T5',true),
    ('4582B',false),
    ('244GZ',true),
    ('2054E',false),
    ('27025',true),
    ('028V2',false),
    ('996F4',true),
    ('413K3',false),
    ('873RO',false),
    ('976IH',false),
    ('951CF',false),
    ('524VA',false),
    ('244DA',true),
    ('9058X',true),
    ('8717P',true),
    ('8758V',false),
    ('132XC',true),
    ('2229T',true),
    ('421K7',true),
    ('6938T',true),
    ('4412T',true),
    ('632AV',true),
    ('554Z4',true),
    ('680FI',true),
    ('264JE',true),
    ('485PJ',true),
    ('610YN',false),
    ('998S4',false),
    ('0253L',false),
    ('3826E',true),
    ('9602K',false),
    ('1396W',false),
    ('163R3',true),
    ('74104',false),
    ('486EK',false),
    ('088LR',true),
    ('573AJ',true),
    ('801K1',false),
    ('094VS',false),
    ('935AV',true),
    ('047JM',false),
    ('41466',true),
    ('440KQ',false),
    ('381RS',true),
    ('111DK',true),
    ('574AR',false),
    ('141GY',false),
    ('921F6',false),
    ('792Q5',false),
    ('244O6',false),
    ('761F5',true),
    ('853TT',true),
    ('216J0',true),
    ('810WQ',true),
    ('569G0',true),
    ('61328',false),
    ('329QB',true),
    ('8340K',true),
    ('408VB',true),
    ('711TO',false),
    ('453VY',true),
    ('49951',true),
    ('022JO',true),
    ('32388',true),
    ('881MO',false),
    ('768NQ',false),
    ('86599',false),
    ('864WX',true),
    ('6600V',false),
    ('3387X',true),
    ('559RD',true),
    ('311LA',true),
    ('044F7',false),
    ('198NR',false),
    ('582BT',true),
    ('929DS',true)
ON CONFLICT DO NOTHING;

-- count: 366
-- First user active bookings count: 1
-- First user expired bookings count: 3
-- Second user active bookings count: 2
-- Second user expired bookings count: 2
-- Сохраненные брони могут быть только в том случае, если они: истекли или принадлежат активным спотам и транспорту
INSERT INTO bookings(begin, _end, spot_id, user_id, vehicle_id)
VALUES
    (' 2032-01-10 08:30:00 ',' 2032-01-10 09:30:00 ',1,2,4),
    (' 2032-01-10 10:30:00 ',' 2032-01-10 11:00:00 ',2,2,4),
    (' 2021-01-01 15:30:00 ',' 2021-01-01 16:30:00 ',2,2,4),
    (' 2021-01-01 11:30:00 ',' 2021-01-01 12:30:00 ',1,2,5),
    (' 2032-01-01 11:30:00 ',' 2032-01-01 12:30:00 ',2,1,3),
    (' 2022-01-10 11:30:00 ',' 2022-01-10 12:30:00 ',1,1,2),
    (' 2021-01-01 18:30:00 ',' 2021-01-01 19:30:00 ',1,1,1),
    (' 2021-01-01 20:00:00 ',' 2021-01-01 20:30:00 ',2,1,3),
    (' 2021-08-27 12:00:00 ',' 2021-08-27 21:00:00 ',481,571,425),
    (' 2022-12-10 12:00:00 ',' 2022-12-10 16:00:00 ',44,164,175),
    (' 2021-11-16 10:00:00 ',' 2021-11-16 10:30:00 ',588,126,625),
    (' 2021-12-28 13:00:00 ',' 2021-12-28 13:30:00 ',429,385,839),
    (' 2021-09-03 22:00:00 ',' 2021-09-04 02:00:00 ',821,982,673),
    (' 2024-02-24 15:00:00 ',' 2024-02-24 15:30:00 ',192,798,919),
    (' 2022-04-08 05:00:00 ',' 2022-04-08 09:00:00 ',679,696,344),
    (' 2021-05-24 04:00:00 ',' 2021-05-24 08:30:00 ',926,546,185),
    (' 2021-02-21 04:00:00 ',' 2021-02-21 07:30:00 ',234,479,892),
    (' 2021-08-19 10:00:00 ',' 2021-08-19 14:30:00 ',875,844,448),
    (' 2021-06-30 11:00:00 ',' 2021-06-30 14:30:00 ',910,734,972),
    (' 2021-06-13 16:00:00 ',' 2021-06-14 00:30:00 ',350,523,448),
    (' 2021-11-25 18:00:00 ',' 2021-11-25 20:00:00 ',71,195,167),
    (' 2021-07-28 05:00:00 ',' 2021-07-28 10:00:00 ',342,730,93),
    (' 2021-01-23 04:00:00 ',' 2021-01-23 15:30:00 ',968,946,798),
    (' 2021-09-05 12:00:00 ',' 2021-09-05 12:30:00 ',907,310,968),
    (' 2021-02-13 03:00:00 ',' 2021-02-13 10:30:00 ',600,651,835),
    (' 2021-09-20 19:00:00 ',' 2021-09-20 22:00:00 ',744,66,365),
    (' 2021-12-07 12:00:00 ',' 2021-12-08 00:00:00 ',703,301,74),
    (' 2024-01-19 14:00:00 ',' 2024-01-20 01:30:00 ',855,563,141),
    (' 2021-03-08 08:00:00 ',' 2021-03-08 17:00:00 ',133,844,417),
    (' 2023-05-27 08:00:00 ',' 2023-05-27 11:00:00 ',125,626,440),
    (' 2021-05-29 01:00:00 ',' 2021-05-29 08:00:00 ',302,904,492),
    (' 2021-06-07 07:00:00 ',' 2021-06-07 19:00:00 ',857,132,345),
    (' 2021-11-11 15:00:00 ',' 2021-11-12 00:30:00 ',282,663,624),
    (' 2021-02-10 03:00:00 ',' 2021-02-10 12:00:00 ',323,951,612),
    (' 2022-05-18 03:00:00 ',' 2022-05-18 14:00:00 ',996,691,638),
    (' 2021-05-24 08:00:00 ',' 2021-05-24 19:30:00 ',403,185,259),
    (' 2023-12-30 06:00:00 ',' 2023-12-30 16:30:00 ',931,463,194),
    (' 2021-09-25 15:00:00 ',' 2021-09-25 16:30:00 ',299,126,177),
    (' 2022-07-21 15:00:00 ',' 2022-07-22 02:00:00 ',320,758,994),
    (' 2024-04-28 08:00:00 ',' 2024-04-28 09:00:00 ',741,912,919),
    (' 2021-10-21 17:00:00 ',' 2021-10-21 20:00:00 ',637,421,12),
    (' 2023-07-12 00:00:00 ',' 2023-07-12 06:30:00 ',158,925,975),
    (' 2021-04-02 20:00:00 ',' 2021-04-03 08:00:00 ',981,761,742),
    (' 2021-09-24 12:00:00 ',' 2021-09-24 13:00:00 ',647,645,820),
    (' 2022-06-30 16:00:00 ',' 2022-06-30 23:30:00 ',706,297,70),
    (' 2021-08-12 01:00:00 ',' 2021-08-12 13:00:00 ',304,789,187),
    (' 2021-01-12 21:00:00 ',' 2021-01-13 07:00:00 ',723,778,203),
    (' 2021-01-19 14:00:00 ',' 2021-01-19 18:30:00 ',680,299,923),
    (' 2021-01-16 15:00:00 ',' 2021-01-16 21:30:00 ',304,282,787),
    (' 2021-06-15 05:00:00 ',' 2021-06-15 14:00:00 ',542,832,576),
    (' 2021-10-14 11:00:00 ',' 2021-10-14 20:00:00 ',421,693,697),
    (' 2021-09-02 07:00:00 ',' 2021-09-02 08:30:00 ',340,233,263),
    (' 2021-11-15 00:00:00 ',' 2021-11-15 02:00:00 ',580,298,92),
    (' 2021-08-16 11:00:00 ',' 2021-08-16 12:30:00 ',504,126,715),
    (' 2021-03-28 02:00:00 ',' 2021-03-28 04:30:00 ',55,544,825),
    (' 2021-02-14 03:00:00 ',' 2021-02-14 07:30:00 ',301,486,5),
    (' 2023-01-21 21:00:00 ',' 2023-01-22 03:00:00 ',144,998,318),
    (' 2022-10-09 00:00:00 ',' 2022-10-09 04:00:00 ',627,992,27),
    (' 2022-01-02 05:00:00 ',' 2022-01-02 09:30:00 ',49,816,68),
    (' 2021-01-20 22:00:00 ',' 2021-01-21 00:30:00 ',950,63,287),
    (' 2025-02-16 00:00:00 ',' 2025-02-16 01:30:00 ',386,801,803),
    (' 2021-02-27 13:00:00 ',' 2021-02-27 23:30:00 ',685,118,205),
    (' 2025-04-11 16:00:00 ',' 2025-04-11 18:30:00 ',837,15,168),
    (' 2021-01-09 02:00:00 ',' 2021-01-09 09:30:00 ',238,228,221),
    (' 2023-10-15 17:00:00 ',' 2023-10-16 00:30:00 ',1,587,313),
    (' 2021-06-06 10:00:00 ',' 2021-06-06 18:00:00 ',629,129,100),
    (' 2021-03-16 13:00:00 ',' 2021-03-16 18:30:00 ',86,309,684),
    (' 2021-09-15 02:00:00 ',' 2021-09-15 07:00:00 ',946,356,804),
    (' 2021-07-16 04:00:00 ',' 2021-07-16 15:00:00 ',593,375,610),
    (' 2024-07-09 17:00:00 ',' 2024-07-10 02:30:00 ',645,342,166),
    (' 2021-02-25 06:00:00 ',' 2021-02-25 13:30:00 ',413,255,566),
    (' 2021-05-13 07:00:00 ',' 2021-05-13 13:00:00 ',185,970,449),
    (' 2021-05-31 11:00:00 ',' 2021-05-31 23:00:00 ',660,469,241),
    (' 2021-08-04 20:00:00 ',' 2021-08-05 00:30:00 ',851,728,322),
    (' 2021-10-27 20:00:00 ',' 2021-10-28 06:30:00 ',634,117,402),
    (' 2025-01-06 06:00:00 ',' 2025-01-06 09:00:00 ',624,375,737),
    (' 2022-09-03 14:00:00 ',' 2022-09-04 01:00:00 ',19,797,900),
    (' 2025-01-16 23:00:00 ',' 2025-01-17 05:30:00 ',723,635,785),
    (' 2021-02-13 23:00:00 ',' 2021-02-14 10:30:00 ',867,848,522),
    (' 2021-03-25 17:00:00 ',' 2021-03-26 02:30:00 ',449,358,7),
    (' 2021-12-23 19:00:00 ',' 2021-12-24 02:30:00 ',309,887,987),
    (' 2024-04-12 11:00:00 ',' 2024-04-12 16:00:00 ',355,359,494),
    (' 2021-09-24 17:00:00 ',' 2021-09-25 05:00:00 ',39,323,739),
    (' 2024-11-29 15:00:00 ',' 2024-11-30 02:30:00 ',192,117,623),
    (' 2023-12-11 02:00:00 ',' 2023-12-11 06:30:00 ',958,75,376),
    (' 2021-12-24 22:00:00 ',' 2021-12-25 07:30:00 ',615,792,432),
    (' 2021-12-04 05:00:00 ',' 2021-12-04 16:00:00 ',208,893,544),
    (' 2021-07-27 01:00:00 ',' 2021-07-27 02:00:00 ',31,406,482),
    (' 2024-12-03 02:00:00 ',' 2024-12-03 03:00:00 ',167,623,103),
    (' 2021-04-15 21:00:00 ',' 2021-04-15 22:30:00 ',578,692,768),
    (' 2021-07-28 10:00:00 ',' 2021-07-28 16:00:00 ',322,310,864),
    (' 2022-01-11 08:00:00 ',' 2022-01-11 18:00:00 ',766,94,223),
    (' 2021-10-02 17:00:00 ',' 2021-10-03 05:00:00 ',464,986,363),
    (' 2021-10-04 07:00:00 ',' 2021-10-04 14:00:00 ',281,875,313),
    (' 2021-01-19 21:00:00 ',' 2021-01-19 22:00:00 ',572,935,859),
    (' 2021-11-08 23:00:00 ',' 2021-11-09 10:00:00 ',338,450,261),
    (' 2021-04-01 15:00:00 ',' 2021-04-01 21:00:00 ',231,454,345),
    (' 2021-11-29 12:00:00 ',' 2021-11-29 16:30:00 ',76,29,261),
    (' 2021-01-13 04:00:00 ',' 2021-01-13 08:30:00 ',291,980,906),
    (' 2021-08-31 22:00:00 ',' 2021-09-01 05:30:00 ',723,652,390),
    (' 2022-04-30 00:00:00 ',' 2022-04-30 05:30:00 ',725,881,837),
    (' 2021-10-09 09:00:00 ',' 2021-10-09 18:00:00 ',228,565,913),
    (' 2022-01-12 15:00:00 ',' 2022-01-13 00:30:00 ',345,149,341),
    (' 2023-11-20 03:00:00 ',' 2023-11-20 14:00:00 ',290,143,445),
    (' 2021-08-16 15:00:00 ',' 2021-08-16 23:00:00 ',22,290,557),
    (' 2021-11-25 11:00:00 ',' 2021-11-25 12:30:00 ',386,694,86),
    (' 2021-11-28 04:00:00 ',' 2021-11-28 07:00:00 ',336,581,43),
    (' 2021-06-20 19:00:00 ',' 2021-06-20 21:00:00 ',912,110,834),
    (' 2021-10-01 01:00:00 ',' 2021-10-01 09:00:00 ',235,935,438),
    (' 2021-09-08 06:00:00 ',' 2021-09-08 07:30:00 ',400,177,178),
    (' 2021-10-29 02:00:00 ',' 2021-10-29 03:00:00 ',25,161,166),
    (' 2021-09-16 06:00:00 ',' 2021-09-16 07:30:00 ',775,805,713),
    (' 2021-03-04 17:00:00 ',' 2021-03-05 00:30:00 ',824,759,826),
    (' 2021-05-12 20:00:00 ',' 2021-05-12 22:30:00 ',935,725,273),
    (' 2021-09-06 01:00:00 ',' 2021-09-06 07:30:00 ',853,923,493),
    (' 2024-10-06 04:00:00 ',' 2024-10-06 11:30:00 ',968,612,494),
    (' 2021-06-25 21:00:00 ',' 2021-06-25 21:30:00 ',797,540,543),
    (' 2021-10-28 20:00:00 ',' 2021-10-28 21:30:00 ',908,561,516),
    (' 2021-03-02 12:00:00 ',' 2021-03-02 13:30:00 ',143,971,757),
    (' 2021-02-23 16:00:00 ',' 2021-02-24 04:00:00 ',208,824,615),
    (' 2021-06-09 15:00:00 ',' 2021-06-10 00:30:00 ',161,672,164),
    (' 2021-12-01 02:00:00 ',' 2021-12-01 12:00:00 ',781,568,272),
    (' 2021-06-15 16:00:00 ',' 2021-06-16 01:30:00 ',486,903,792),
    (' 2021-08-05 03:00:00 ',' 2021-08-05 08:30:00 ',516,299,186),
    (' 2021-10-22 05:00:00 ',' 2021-10-22 09:30:00 ',331,922,588),
    (' 2021-03-21 18:00:00 ',' 2021-03-21 23:00:00 ',34,56,593),
    (' 2021-07-06 13:00:00 ',' 2021-07-06 22:30:00 ',388,998,601),
    (' 2021-04-17 03:00:00 ',' 2021-04-17 04:00:00 ',257,494,800),
    (' 2021-12-08 00:00:00 ',' 2021-12-08 05:30:00 ',734,418,149),
    (' 2021-07-27 09:00:00 ',' 2021-07-27 11:30:00 ',309,914,467),
    (' 2022-02-28 09:00:00 ',' 2022-02-28 17:30:00 ',747,786,928),
    (' 2021-09-27 09:00:00 ',' 2021-09-27 20:30:00 ',99,210,389),
    (' 2021-03-15 14:00:00 ',' 2021-03-15 22:30:00 ',40,153,145),
    (' 2024-06-14 15:00:00 ',' 2024-06-14 21:00:00 ',620,772,354),
    (' 2021-05-05 12:00:00 ',' 2021-05-05 18:30:00 ',549,304,167),
    (' 2021-03-25 07:00:00 ',' 2021-03-25 09:00:00 ',65,772,80),
    (' 2021-03-30 06:00:00 ',' 2021-03-30 12:00:00 ',711,153,504),
    (' 2021-08-20 11:00:00 ',' 2021-08-20 13:30:00 ',41,71,812),
    (' 2021-06-05 00:00:00 ',' 2021-06-05 01:00:00 ',48,78,761),
    (' 2021-11-03 03:00:00 ',' 2021-11-03 13:00:00 ',648,890,820),
    (' 2022-08-24 05:00:00 ',' 2022-08-24 12:00:00 ',14,96,591),
    (' 2021-08-27 08:00:00 ',' 2021-08-27 15:00:00 ',554,99,504),
    (' 2021-01-20 00:00:00 ',' 2021-01-20 08:00:00 ',873,713,591),
    (' 2022-01-12 19:00:00 ',' 2022-01-12 23:30:00 ',146,479,673),
    (' 2021-07-14 17:00:00 ',' 2021-07-14 20:30:00 ',11,822,39),
    (' 2021-04-29 16:00:00 ',' 2021-04-30 02:00:00 ',331,884,303),
    (' 2023-08-13 01:00:00 ',' 2023-08-13 11:30:00 ',575,750,516),
    (' 2021-04-05 10:00:00 ',' 2021-04-05 15:30:00 ',576,934,713),
    (' 2021-07-26 11:00:00 ',' 2021-07-26 19:30:00 ',147,18,998),
    (' 2023-06-16 15:00:00 ',' 2023-06-16 20:30:00 ',568,301,593),
    (' 2021-10-19 07:00:00 ',' 2021-10-19 14:00:00 ',710,7,109),
    (' 2021-04-29 19:00:00 ',' 2021-04-29 21:00:00 ',56,488,881),
    (' 2021-06-07 17:00:00 ',' 2021-06-07 23:30:00 ',68,509,18),
    (' 2021-01-14 20:00:00 ',' 2021-01-14 21:00:00 ',355,191,610),
    (' 2021-06-23 19:00:00 ',' 2021-06-24 03:00:00 ',861,561,321),
    (' 2022-12-06 23:00:00 ',' 2022-12-07 00:30:00 ',312,672,928),
    (' 2023-01-28 21:00:00 ',' 2023-01-29 00:30:00 ',924,560,846),
    (' 2021-08-15 17:00:00 ',' 2021-08-16 00:00:00 ',119,490,759),
    (' 2021-04-29 08:00:00 ',' 2021-04-29 10:30:00 ',591,847,204),
    (' 2021-11-20 22:00:00 ',' 2021-11-21 08:30:00 ',418,212,200),
    (' 2024-09-17 06:00:00 ',' 2024-09-17 08:00:00 ',499,397,723),
    (' 2021-04-20 09:00:00 ',' 2021-04-20 18:30:00 ',671,635,955),
    (' 2021-11-06 14:00:00 ',' 2021-11-07 01:00:00 ',389,386,70),
    (' 2021-11-13 23:00:00 ',' 2021-11-14 11:00:00 ',967,165,580),
    (' 2021-06-28 20:00:00 ',' 2021-06-29 07:00:00 ',855,659,487),
    (' 2021-05-28 21:00:00 ',' 2021-05-29 00:30:00 ',557,795,405),
    (' 2023-08-22 00:00:00 ',' 2023-08-22 05:30:00 ',344,377,934),
    (' 2024-09-26 02:00:00 ',' 2024-09-26 11:30:00 ',870,30,336),
    (' 2021-07-06 22:00:00 ',' 2021-07-07 03:30:00 ',213,362,115),
    (' 2021-05-01 15:00:00 ',' 2021-05-01 17:30:00 ',506,148,813),
    (' 2021-12-07 19:00:00 ',' 2021-12-08 00:00:00 ',683,283,459),
    (' 2021-04-14 13:00:00 ',' 2021-04-14 17:30:00 ',383,721,341),
    (' 2022-01-17 18:00:00 ',' 2022-01-18 02:00:00 ',750,625,159),
    (' 2021-08-12 03:00:00 ',' 2021-08-12 13:00:00 ',793,989,169),
    (' 2021-05-19 03:00:00 ',' 2021-05-19 04:00:00 ',18,965,373),
    (' 2021-12-12 10:00:00 ',' 2021-12-12 14:30:00 ',985,525,248),
    (' 2021-06-29 21:00:00 ',' 2021-06-30 04:30:00 ',45,873,68),
    (' 2021-08-14 06:00:00 ',' 2021-08-14 11:30:00 ',780,333,283),
    (' 2022-10-28 01:00:00 ',' 2022-10-28 13:00:00 ',674,950,723),
    (' 2021-06-01 22:00:00 ',' 2021-06-02 07:00:00 ',681,378,949),
    (' 2021-11-12 09:00:00 ',' 2021-11-12 14:30:00 ',339,512,179),
    (' 2023-06-01 09:00:00 ',' 2023-06-01 14:00:00 ',487,462,963),
    (' 2021-12-18 17:00:00 ',' 2021-12-18 20:00:00 ',63,830,646),
    (' 2021-01-31 23:00:00 ',' 2021-02-01 02:00:00 ',658,605,531),
    (' 2021-11-09 21:00:00 ',' 2021-11-10 00:30:00 ',554,784,296),
    (' 2021-03-10 20:00:00 ',' 2021-03-11 03:00:00 ',449,386,493),
    (' 2021-05-15 11:00:00 ',' 2021-05-15 13:30:00 ',303,314,37),
    (' 2021-01-05 00:00:00 ',' 2021-01-05 05:00:00 ',827,911,297),
    (' 2021-11-15 15:00:00 ',' 2021-11-16 01:00:00 ',63,81,810),
    (' 2021-11-22 10:00:00 ',' 2021-11-22 12:30:00 ',790,656,70),
    (' 2022-08-11 23:00:00 ',' 2022-08-12 10:30:00 ',22,835,833),
    (' 2021-12-07 03:00:00 ',' 2021-12-07 04:00:00 ',242,28,417),
    (' 2021-11-04 02:00:00 ',' 2021-11-04 12:00:00 ',527,308,25),
    (' 2025-04-18 15:00:00 ',' 2025-04-19 02:00:00 ',670,698,649),
    (' 2021-02-23 04:00:00 ',' 2021-02-23 05:00:00 ',24,722,746),
    (' 2024-08-17 18:00:00 ',' 2024-08-17 20:30:00 ',498,399,444),
    (' 2021-08-27 17:00:00 ',' 2021-08-28 05:00:00 ',193,943,590),
    (' 2025-04-05 01:00:00 ',' 2025-04-05 05:30:00 ',571,630,581),
    (' 2025-02-17 01:00:00 ',' 2025-02-17 09:30:00 ',384,150,791),
    (' 2021-01-19 04:00:00 ',' 2021-01-19 05:00:00 ',811,234,871),
    (' 2021-07-11 18:00:00 ',' 2021-07-11 19:30:00 ',151,655,276),
    (' 2022-01-14 21:00:00 ',' 2022-01-15 03:00:00 ',631,45,559),
    (' 2023-07-04 12:00:00 ',' 2023-07-04 19:00:00 ',763,889,624),
    (' 2021-06-25 16:00:00 ',' 2021-06-26 01:00:00 ',958,846,532),
    (' 2021-04-13 04:00:00 ',' 2021-04-13 12:00:00 ',381,188,958),
    (' 2021-11-16 07:00:00 ',' 2021-11-16 17:00:00 ',190,892,392),
    (' 2022-07-02 15:00:00 ',' 2022-07-02 16:30:00 ',682,959,985),
    (' 2023-07-04 08:00:00 ',' 2023-07-04 18:00:00 ',641,132,286),
    (' 2021-09-16 07:00:00 ',' 2021-09-16 12:00:00 ',553,79,115),
    (' 2021-12-16 15:00:00 ',' 2021-12-16 18:00:00 ',280,580,904),
    (' 2023-11-21 09:00:00 ',' 2023-11-21 11:00:00 ',531,185,698),
    (' 2021-01-01 07:00:00 ',' 2021-01-01 08:00:00 ',708,117,756),
    (' 2021-01-16 22:00:00 ',' 2021-01-17 07:30:00 ',244,964,159),
    (' 2021-03-18 23:00:00 ',' 2021-03-19 09:30:00 ',352,526,774),
    (' 2021-07-11 21:00:00 ',' 2021-07-11 23:00:00 ',605,867,199),
    (' 2022-01-22 04:00:00 ',' 2022-01-22 11:30:00 ',229,682,843),
    (' 2021-01-10 22:00:00 ',' 2021-01-11 06:30:00 ',559,188,734),
    (' 2024-09-21 15:00:00 ',' 2024-09-21 16:30:00 ',186,663,574),
    (' 2021-12-01 19:00:00 ',' 2021-12-02 06:00:00 ',544,261,738),
    (' 2021-03-21 12:00:00 ',' 2021-03-21 20:30:00 ',559,630,642),
    (' 2021-01-02 23:00:00 ',' 2021-01-03 10:30:00 ',293,627,666),
    (' 2021-11-22 21:00:00 ',' 2021-11-23 06:00:00 ',298,477,519),
    (' 2021-03-30 05:00:00 ',' 2021-03-30 10:30:00 ',603,271,523),
    (' 2021-06-06 12:00:00 ',' 2021-06-06 20:00:00 ',148,869,570),
    (' 2021-10-14 19:00:00 ',' 2021-10-14 21:00:00 ',487,164,273),
    (' 2024-06-12 16:00:00 ',' 2024-06-13 02:00:00 ',751,537,630),
    (' 2025-04-17 15:00:00 ',' 2025-04-17 17:30:00 ',289,848,723),
    (' 2021-08-26 12:00:00 ',' 2021-08-26 16:00:00 ',195,573,154),
    (' 2021-02-10 00:00:00 ',' 2021-02-10 07:30:00 ',242,505,259),
    (' 2021-09-21 09:00:00 ',' 2021-09-21 09:30:00 ',54,584,287),
    (' 2021-12-17 16:00:00 ',' 2021-12-18 02:00:00 ',730,771,808),
    (' 2021-05-03 05:00:00 ',' 2021-05-03 11:00:00 ',623,415,108),
    (' 2022-05-16 04:00:00 ',' 2022-05-16 11:00:00 ',804,10,14),
    (' 2022-12-18 09:00:00 ',' 2022-12-18 17:00:00 ',441,443,76),
    (' 2021-04-05 08:00:00 ',' 2021-04-05 09:00:00 ',207,155,112),
    (' 2022-01-01 21:00:00 ',' 2022-01-02 04:30:00 ',461,587,626),
    (' 2023-05-12 22:00:00 ',' 2023-05-13 06:00:00 ',804,338,699),
    (' 2021-08-14 02:00:00 ',' 2021-08-14 02:30:00 ',794,495,119),
    (' 2021-05-05 06:00:00 ',' 2021-05-05 16:00:00 ',182,415,827),
    (' 2024-06-06 12:00:00 ',' 2024-06-06 15:30:00 ',922,218,626),
    (' 2021-09-25 15:00:00 ',' 2021-09-25 23:00:00 ',269,782,348),
    (' 2021-08-16 15:00:00 ',' 2021-08-17 01:00:00 ',44,65,137),
    (' 2024-07-27 07:00:00 ',' 2024-07-27 13:00:00 ',248,120,946),
    (' 2021-06-17 08:00:00 ',' 2021-06-17 14:30:00 ',595,901,342),
    (' 2021-12-05 04:00:00 ',' 2021-12-05 12:30:00 ',264,32,892),
    (' 2021-06-21 06:00:00 ',' 2021-06-21 09:00:00 ',443,918,727),
    (' 2021-08-03 02:00:00 ',' 2021-08-03 11:30:00 ',580,433,42),
    (' 2022-04-21 03:00:00 ',' 2022-04-21 04:00:00 ',849,318,326),
    (' 2024-04-03 04:00:00 ',' 2024-04-03 11:30:00 ',644,422,334),
    (' 2021-03-11 03:00:00 ',' 2021-03-11 07:00:00 ',137,159,490),
    (' 2024-08-14 13:00:00 ',' 2024-08-14 17:00:00 ',489,756,593),
    (' 2021-11-25 16:00:00 ',' 2021-11-25 22:00:00 ',660,989,811),
    (' 2021-01-02 15:00:00 ',' 2021-01-02 18:00:00 ',692,525,156),
    (' 2021-09-21 04:00:00 ',' 2021-09-21 13:30:00 ',727,968,842),
    (' 2022-01-11 22:00:00 ',' 2022-01-12 08:30:00 ',928,871,624),
    (' 2022-01-09 17:00:00 ',' 2022-01-09 23:00:00 ',907,280,862),
    (' 2021-12-25 03:00:00 ',' 2021-12-25 07:30:00 ',452,220,914),
    (' 2022-01-24 06:00:00 ',' 2022-01-24 13:00:00 ',386,703,199),
    (' 2021-11-25 12:00:00 ',' 2021-11-25 19:30:00 ',277,685,806),
    (' 2021-08-20 06:00:00 ',' 2021-08-20 07:00:00 ',481,852,409),
    (' 2022-01-17 01:00:00 ',' 2022-01-17 05:00:00 ',470,237,913),
    (' 2021-08-13 21:00:00 ',' 2021-08-13 23:30:00 ',493,797,182),
    (' 2022-09-16 10:00:00 ',' 2022-09-16 18:00:00 ',324,777,260),
    (' 2021-10-23 08:00:00 ',' 2021-10-23 10:00:00 ',379,972,515),
    (' 2021-05-27 00:00:00 ',' 2021-05-27 06:30:00 ',621,415,816),
    (' 2021-09-07 14:00:00 ',' 2021-09-07 17:30:00 ',759,373,608),
    (' 2022-01-10 01:00:00 ',' 2022-01-10 09:30:00 ',64,511,956),
    (' 2021-06-28 22:00:00 ',' 2021-06-29 08:00:00 ',267,272,910),
    (' 2021-08-15 13:00:00 ',' 2021-08-15 17:30:00 ',611,855,665),
    (' 2021-12-06 08:00:00 ',' 2021-12-06 19:30:00 ',185,396,751),
    (' 2021-03-21 08:00:00 ',' 2021-03-21 10:00:00 ',356,340,151),
    (' 2021-10-17 00:00:00 ',' 2021-10-17 07:00:00 ',643,949,34),
    (' 2021-07-14 19:00:00 ',' 2021-07-15 00:00:00 ',797,295,67),
    (' 2024-06-01 01:00:00 ',' 2024-06-01 09:30:00 ',397,299,785),
    (' 2021-10-10 11:00:00 ',' 2021-10-10 13:00:00 ',39,867,619),
    (' 2023-03-12 22:00:00 ',' 2023-03-13 01:00:00 ',490,129,149),
    (' 2021-12-06 20:00:00 ',' 2021-12-07 01:30:00 ',245,567,669),
    (' 2021-06-09 17:00:00 ',' 2021-06-09 21:00:00 ',292,235,882),
    (' 2021-08-14 00:00:00 ',' 2021-08-14 09:00:00 ',461,280,794),
    (' 2021-07-18 22:00:00 ',' 2021-07-19 00:00:00 ',404,192,895),
    (' 2021-10-12 15:00:00 ',' 2021-10-12 21:30:00 ',50,576,675),
    (' 2021-01-19 17:00:00 ',' 2021-01-19 18:00:00 ',180,146,376),
    (' 2025-03-21 17:00:00 ',' 2025-03-22 04:00:00 ',354,690,149),
    (' 2021-07-04 04:00:00 ',' 2021-07-04 09:00:00 ',960,448,241),
    (' 2024-10-23 18:00:00 ',' 2024-10-24 01:00:00 ',723,263,539),
    (' 2021-09-07 16:00:00 ',' 2021-09-07 21:00:00 ',742,878,52),
    (' 2023-02-14 06:00:00 ',' 2023-02-14 11:30:00 ',171,514,500),
    (' 2021-09-03 02:00:00 ',' 2021-09-03 09:30:00 ',668,380,404),
    (' 2021-02-04 16:00:00 ',' 2021-02-05 03:30:00 ',44,727,709),
    (' 2024-06-11 23:00:00 ',' 2024-06-12 04:30:00 ',583,870,699),
    (' 2021-06-17 18:00:00 ',' 2021-06-18 00:00:00 ',508,659,141),
    (' 2021-02-24 07:00:00 ',' 2021-02-24 09:00:00 ',21,468,381),
    (' 2024-12-09 02:00:00 ',' 2024-12-09 10:30:00 ',155,951,336),
    (' 2021-11-05 02:00:00 ',' 2021-11-05 04:30:00 ',878,93,351),
    (' 2021-08-18 11:00:00 ',' 2021-08-18 13:00:00 ',861,326,195),
    (' 2023-06-24 11:00:00 ',' 2023-06-24 21:00:00 ',641,247,191),
    (' 2021-06-04 21:00:00 ',' 2021-06-04 23:00:00 ',401,235,473),
    (' 2021-11-03 05:00:00 ',' 2021-11-03 09:30:00 ',127,529,682),
    (' 2024-08-04 21:00:00 ',' 2024-08-04 23:00:00 ',421,532,37),
    (' 2023-02-27 12:00:00 ',' 2023-02-27 21:00:00 ',613,21,178),
    (' 2022-06-23 23:00:00 ',' 2022-06-24 04:30:00 ',449,204,508),
    (' 2021-03-26 21:00:00 ',' 2021-03-26 23:30:00 ',896,11,617),
    (' 2022-01-11 21:00:00 ',' 2022-01-11 21:30:00 ',497,280,398),
    (' 2021-09-06 04:00:00 ',' 2021-09-06 15:00:00 ',310,565,267),
    (' 2021-12-14 16:00:00 ',' 2021-12-15 01:00:00 ',148,550,59),
    (' 2021-09-23 13:00:00 ',' 2021-09-23 17:00:00 ',287,533,195),
    (' 2021-07-26 21:00:00 ',' 2021-07-26 22:00:00 ',762,349,241),
    (' 2021-07-31 22:00:00 ',' 2021-08-01 04:30:00 ',737,315,98),
    (' 2021-08-13 02:00:00 ',' 2021-08-13 11:30:00 ',28,337,359),
    (' 2021-06-13 20:00:00 ',' 2021-06-13 21:30:00 ',800,230,688),
    (' 2024-02-01 02:00:00 ',' 2024-02-01 10:30:00 ',891,230,632),
    (' 2021-01-20 08:00:00 ',' 2021-01-20 09:00:00 ',648,969,861),
    (' 2021-05-19 01:00:00 ',' 2021-05-19 05:00:00 ',58,610,485),
    (' 2021-11-02 04:00:00 ',' 2021-11-02 06:30:00 ',597,898,411),
    (' 2023-09-05 08:00:00 ',' 2023-09-05 10:00:00 ',79,55,626),
    (' 2023-08-28 23:00:00 ',' 2023-08-29 06:00:00 ',161,320,921),
    (' 2021-06-08 20:00:00 ',' 2021-06-08 23:30:00 ',971,461,990),
    (' 2021-04-20 23:00:00 ',' 2021-04-21 11:00:00 ',7,911,174),
    (' 2021-06-20 22:00:00 ',' 2021-06-21 06:30:00 ',716,560,840),
    (' 2021-06-01 20:00:00 ',' 2021-06-01 21:00:00 ',414,920,629),
    (' 2022-03-10 23:00:00 ',' 2022-03-11 03:30:00 ',130,136,247),
    (' 2021-03-04 18:00:00 ',' 2021-03-05 00:30:00 ',205,362,38),
    (' 2021-02-20 02:00:00 ',' 2021-02-20 07:00:00 ',260,320,76),
    (' 2024-03-29 15:00:00 ',' 2024-03-30 02:30:00 ',607,345,837),
    (' 2021-02-12 14:00:00 ',' 2021-02-12 16:30:00 ',457,190,782),
    (' 2021-02-09 07:00:00 ',' 2021-02-09 16:00:00 ',235,750,496),
    (' 2021-01-15 00:00:00 ',' 2021-01-15 11:30:00 ',925,270,184),
    (' 2023-01-14 12:00:00 ',' 2023-01-14 12:30:00 ',201,76,752),
    (' 2021-11-24 17:00:00 ',' 2021-11-24 22:00:00 ',77,188,798),
    (' 2022-12-09 02:00:00 ',' 2022-12-09 10:00:00 ',989,104,53),
    (' 2021-10-04 18:00:00 ',' 2021-10-04 20:00:00 ',107,341,261),
    (' 2022-05-03 01:00:00 ',' 2022-05-03 11:00:00 ',486,15,560),
    (' 2021-10-02 20:00:00 ',' 2021-10-03 06:00:00 ',35,90,745),
    (' 2021-06-01 14:00:00 ',' 2021-06-01 23:00:00 ',208,381,567),
    (' 2021-02-10 05:00:00 ',' 2021-02-10 15:30:00 ',997,649,624),
    (' 2021-03-05 06:00:00 ',' 2021-03-05 18:00:00 ',65,21,174),
    (' 2024-02-18 18:00:00 ',' 2024-02-18 20:30:00 ',477,204,850),
    (' 2021-06-30 01:00:00 ',' 2021-06-30 08:00:00 ',495,370,353),
    (' 2023-03-29 02:00:00 ',' 2023-03-29 13:30:00 ',185,641,492),
    (' 2021-06-20 18:00:00 ',' 2021-06-21 04:00:00 ',777,263,254),
    (' 2023-07-06 23:00:00 ',' 2023-07-07 07:00:00 ',690,75,175),
    (' 2021-04-26 00:00:00 ',' 2021-04-26 09:30:00 ',401,536,719),
    (' 2021-03-28 21:00:00 ',' 2021-03-29 04:00:00 ',260,672,658),
    (' 2021-03-14 03:00:00 ',' 2021-03-14 13:00:00 ',306,113,718),
    (' 2023-09-16 02:00:00 ',' 2023-09-16 10:00:00 ',64,581,963),
    (' 2021-07-04 20:00:00 ',' 2021-07-05 02:00:00 ',913,254,720),
    (' 2021-01-15 13:00:00 ',' 2021-01-15 19:00:00 ',117,136,784),
    (' 2021-12-24 02:00:00 ',' 2021-12-24 03:30:00 ',501,423,857),
    (' 2021-09-12 12:00:00 ',' 2021-09-12 21:00:00 ',184,589,167),
    (' 2021-04-24 15:00:00 ',' 2021-04-25 00:30:00 ',27,315,753),
    (' 2021-06-23 00:00:00 ',' 2021-06-23 04:30:00 ',349,704,189),
    (' 2021-09-01 09:00:00 ',' 2021-09-01 18:30:00 ',857,567,453),
    (' 2021-06-26 11:00:00 ',' 2021-06-26 17:30:00 ',552,19,464),
    (' 2022-01-04 02:00:00 ',' 2022-01-04 13:30:00 ',568,530,619),
    (' 2024-01-15 04:00:00 ',' 2024-01-15 06:30:00 ',673,487,837),
    (' 2022-04-28 08:00:00 ',' 2022-04-28 20:00:00 ',525,696,942),
    (' 2021-03-05 16:00:00 ',' 2021-03-05 17:30:00 ',859,907,63),
    (' 2023-03-16 12:00:00 ',' 2023-03-16 14:30:00 ',85,201,654),
    (' 2025-02-26 02:00:00 ',' 2025-02-26 13:30:00 ',400,95,95),
    (' 2021-02-21 06:00:00 ',' 2021-02-21 09:00:00 ',984,817,764),
    (' 2021-02-22 23:00:00 ',' 2021-02-23 02:30:00 ',185,823,553),
    (' 2021-04-25 12:00:00 ',' 2021-04-25 15:30:00 ',713,448,191),
    (' 2022-09-28 17:00:00 ',' 2022-09-28 22:30:00 ',336,546,327),
    (' 2021-12-15 21:00:00 ',' 2021-12-16 07:00:00 ',341,88,223),
    (' 2021-02-06 05:00:00 ',' 2021-02-06 16:30:00 ',948,5,877),
    (' 2021-04-26 12:00:00 ',' 2021-04-26 21:30:00 ',292,57,721)
ON CONFLICT DO NOTHING;

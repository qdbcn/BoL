------#################################################################################------  ------###########################     Ashe won't miss!     ############################------ ------###########################         by Toy           ############################------ ------#################################################################################------

--> Version: 1.3.2 Reborn

--> Features:
--> Prodictions in every skill, also taking their hitboxes in consideration.
--> Cast options for W in both, autocarry and mixed mode (Works separately).
--> Auto-aim Enchanted Crystal Arrow activated with a separated Hotkey (Default is A, can be changed on the menu, don't set it to R if you have Smartcast enabled for R) so you can use it when you think it's better, and it will still aim for you.
--> KS with Enchanted Crystal Arrow, will use Ultimate if the enemy is killable, as long as the target is within 1200 range (can be turned on/off).
--> Drawing option for W.
--> Options to use Muramana.
--> Option to use Frost Shot when attacking an enemy champion, and deactivate when attacking a non-champion unit.
--> Option to not use Frost Shot if way too low on mana (waaaay too low on mana -maybe not early game).
--> Option to enable FrostShot Exploit, won't use mana to slow targets. (Disable "Use - FrostShot", it's not necessary while using this, however enabling the exploit will auto-replace the way of using Q to not ever waste mana again, but just in case you can turn off the "Use - Forst Shot" too).
--> Honestly, the "option to use Frost Shot while attacking an enemy champion" and "option to not use Frost Shot if mana is low" are completly useless now, because using the exploit is waaay better, but I'll leave them there just in case someone wanna be "politically correct".
--> Option to use frost shot exploit to slow EVERYTHING, and won't use mana at all.
--> Option to only use the frost shot exploit on enemy champions, just in case your team goes "wtf ashe is using Q on minions".

if myHero.charName ~= "Ashe" then return end

require "Collision"
require "Prodiction"

LoadVIPScript('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TnlWSVBMs3E0SEV5TXlWSRMMMDN0S0V5zToWSlBMMzN0SwE5TnlWSVBMs3c0SEV5TXlWSRUMMDN0S0V5zTwWSlBMMzN0SwM5TnlWSVBMs3U0SEV5TXlWSRcMMDN0S0V5zT4WSlBMMzN0Sw05TnlWSVBMs3s0SEV5TXlWSRkMMDN0S0V5zTAWSlBMMzN0Sw85TnlWSVBMs3k0SEV5TXlWSRsMMDN0S0V5zTIWSlBMMzN0Swk5TnlWSVBMs380SEV5TXlWSR0MMDN0S0V5zTQWSlBMMzN0Sws5TnlWSVBMs300SEV5TXlWSR8MMDN0S0V5zTYWSlBMMzN0SxU5TnlWSVBMc2M0SEV5TXlWyQAMMDN0S0V5jSkWSlBMMzN0SxQ5TnlWSVBMc2I0SEV5TXlWyQEMMDN0S0V5jSgWSlBMMzN0Sxc5TnlWSVBMc2E0SEV5TXlWyQIMMDN0S0V5jSsWSlBMMzN0SxY5TnlWSVBMc2A0SEV5TXlWyQMMMDN0S0V5jSoWSlBMMzN0SxE5TnlWSVBMc2c0SEV5TXlWyQQMMDN0S0V5jS0WSlBMMzN0SxA5TnlWSVBMc2Y0SEV5TXlWyQUMMDN0S0V5jSwWSlBMMzN0SxM5TnlWSVBMc2U0SEV5TXlWyQYMMDN0S0V5jS8WSlBMMzN0SxI5TnlWSVBMc2Q0SEV5TXlWyQcMMDN0S0V5jS4WSlBMMzN0Sx05TnlWSVBMc2s0SEV5TXlWyQgMMDN0S0V5jSEWSlBMMzN0Sxw5TnlWSVBMc2o0SEV5TXlWyQkMMDN0S0V5jSAWSlBMMzN0Sx85TnlWSVBMc2k0SEV5TXlWyQoMMDN0S0V5jSMWSlBMMzN0Sx45TnlWSVBMc2g0SEV5TXlWyQsMMDN0S0V5jSIWSlBMMzN0Sxk5TnlWSVBMc280SEV5TXlWyQwMMDN0S0V5jSUWSlBMMzN0Sxg5TnlWSVBMc240SEV5TXlWyQ0MMDN0S0V5jSQWSlBMMzN0Sxs5TnlWSVBMc200SEV5TXlWyQ4MMDN0S0V5jScWSlBMMzN0Sxo5TnlWSVBMc2w0SEV5TXlWyQ8MMDN0S0V5jSYWSlBMMzN0SyU5TnlWSVBME1M0SEV5TXlWCTAMMDN0S0V5LRkWSlBMMzN0yyU5TnlWSVBMk1M0SEV5TXlWiTAMMDN0S0V5rRkWSlBMMzN0SyQ5TnlWSVBME1I0SEV5TXlWCTEMMDN0S0V5LRgWSlBMMzN0yyQ5TnlWSVBMk1I0SEV5TXlWiTEMMDN0S0V5rRgWSlBMMzN0Syc5TnlWSVBME1E0SEV5TXlWCTIMMDN0S0V5LRsWSlBMMzN0yyc5TnlWSVBMk1E0SEV5TXlWiTIMMDN0S0V5rRsWSlBMMzN0SyY5TnlWSVBME1A0SEV5TXlWCTMMMDN0S0V5LRoWSlBMMzN0yyY5TnlWSVBMk1A0SEV5TXlWiTMMMDN0S0V5rRoWSlBMMzN0SyE5TnlWSVBME1c0SEV5TXlWCTQMMDN0S0V5LR0WSlBMMzN0yyE5TnlWSVBMk1c0SEV5TXlWiTQMMDN0S0V5rR0WSlBMMzN0SyA5TnlWSVBME1Y0SEV5TXlWCTUMMDN0S0V5LRwWSlBMMzN0yyA5TnlWSVBMk1Y0SEV5TXlWiTUMMDN0S0V5rRwWSlBMMzN0SyM5TnlWSVBME1U0SEV5TXlWCTYMMDN0S0V5LR8WSlBMMzN0yyM5TnlWSVBMk1U0SEV5TXlWiTYMMDN0S0V5rR8WSlBMMzN0SyI5TnlWSVBME1Q0SEV5TXlWCTcMMDN0S0V5LR4WSlBMMzN0yyI5TnlWSVBMk1Q0SEV5TXlWiTcMMDN0S0V5rR4WSlBMMzN0Sy05TnlWSVBME1s0SEV5TXlWCTgMMDN0S0V5LREWSlBMMzN0yy05TnlWSVBMk1s0SEV5TXlWiTgMMDN0S0V5rREWSlBMMzN0Syw5TnlWSVBME1o0SEV5TXlWCTkMMDN0S0V5LRAWSlBMMzN0yyw5TnlWSVBMk1o0SEV5TXlWiTkMMDN0S0V5rRAWSlBMMzN0Sy85TnlWSVBME1k0SEV5TXlWCToMMDN0S0V5LRMWSlBMMzN0yy85TnlWSVBMk1k0SEV5TXlWiToMMDN0S0V5rRMWSlBMMzN0Sy45TnlWSVBME1g0SEV5TXlWCTsMMDN0S0V5LRIWSlBMMzN0yy45TnlWSVBMk1g0SEV5TXlWiTsMMDN0S0V5rRIWSlBMMzN0Syk5TnlWSVBME180SEV5TXlWCTwMMDN0S0V5LRUWSlBMMzN0yyk5TnlWSVBMk180SEV5TXlWiTwMMDN0S0V5rRUWSlBMMzN0Syg5TnlWSVBME140SEV5TXlWCT0MMDN0S0V5LRQWSlBMMzN0yyg5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KBRWTVRMMzM4PiR5SX5WSVApQUFUIHd5SXxWSVA4SkMRS0FwTXlWLyUiUEcdJCt5SXtWSVAqMzdxS0V5Kww4KlBINDN0SyALP1k9elBPMzN0S0V5WTlVSVBMMzN0ZQV6TXlWSVDMUXNwTEV5TRwkO3AnBzNwSEV5TRA5SVRJMzN0JDUcI3lSTlBMM1YGOWUSeHlSTFBMM18bKiF5SX5WSVApQUFUIHN5SXRWSVAOUkARfXE9KBo5LTVMNzR0S0UcPwt2ImdMNzB0S0UWPnlSTlBMM1QRPyAXO3lSQVBMM3IkGwE4GThWTVVMMzMoKSoVTX1fSVBMR1wHPzcQIx5WSlBMMzP0z2s4TnlWSbCDIVA1T0Z5TXkhK1BINTN0SzILJA0zSVRKMzN0KCkWPhxWTVdMMzMVODYcPw1WTVNMMzMGKUV9SHlWSSIpUld0S0FwTXlWPT8iRl4WLjd5TnlWSVBMMwM0T095TXkQIDwpdksdODF5SX5WSVA+Vl4bPSB5SX1WSVA+UAd0T055TXlle2V9CwpAenZOTX1DSVBMV1IVe3FBdExkLWZ5VwcWe3Abf05WTVtMMzMWf3McekxheWZ5MzB0S0V5TXkPCVNMMzN0S332DX1RSVBMQFAGIjUNTXpWSVBMM/MsC0V5TXlXSVBMMzN0S0V5TXlWSVBMMzN0S0V5THlWSVFMMzN0S0V5TXlWSVBMMzN0Sw==04DC87886CD14CDA5F24A724B1696EAC')
safeloader(_ENV, "da08a7ce8c8d184ce83214c207fe758270191101932553719497738b65d16211fb8fa84c8e900398550241440b51b8697d1d6523a122da5ce7eff2c2dc56283c2c248524a8247f2a3cd1540002b1e7383dd59e30a4dd0216d7ac57356b9fad3314274abb8ed14cc52359f73572591cb425006324a85efe28926a501566d1a0702fe36dcec2a9f5b1537068a9726e0b1203e692371848a5ba4bc2fe1edc63a1f839dd887c56e33fcedd34ae45f80358ad8b151d4b042e86a9eb4eef85486fa0b2dd2ba1336e34da1f1922351de10af0a4c639fe8a46e4a5bbaee025b1daefefdd59e28646c6b604551e2aa3a8e205cc6852fdc9d76d398c42b437959b1c8bf1e92c5ea047cada200a16ed7a2f2957b16156debe608f84141ca56fed09fe8ed1631acab3b52634027f1264e159c8cadb963f4dc049f3fec8a7a380c1211361c58858abd42a5d16c9b984d41bd680bbc85a4410c97c74c0f193b86498b733068e2949957eee4f8c9d4caeb0ac5b00f09f100ce6496a7937fed30c3f5eaa18477490d1b02dee7230aa12ce3a568396bba297cf7ce81ee6d26eb8897f3b07cfe94b135e10e449d2f2f05d51103b4aedff0d78556cccc2565db1cf741469fe95d66b1c8e82bd8c1b76bf7dd15fdee64b9774f507837d7b077b6e88c57ff6399fa7cf25111a858998291b7e796515f5218cee7395d913354214a5394cb2a2b8e6670dc8b2903e5014cc5ba2164ff5e05c9846923aa2ff42b2f0e8ee3147d18a458080be5d3cfdce6f9c1c81bc61158dad2a98fc0218e214cee795981b4e6079fdaa6a12329e6f845e0f3520743e8a33d547650a21b5e0de92d5ded65d8be143e5eb436d48dd79827e8ebef13d96324e809d302afcf7222a50e0af9ba8f85263a0dc4ade1606747d99a054e114cf347c5db7a02a3026ef982afb5cb1e37c40df031c98d69e55398a1336be98e9d65b239545b5adfe3daea361a19e4be82d441c85c8fd539dc2e6a35e60293321363f7a5b1f2cc7d6af14468eda3345e035fbd7ffe12b8e39532fe3fb4be0a23415eec4f21dc0d604d7db41a0bfa57d04baeaba82068788aff77cc2e67443df06366ebfd8b4744afa2844270b98677b3888fe8590196c0afd0f6b1666a2fb87558e4029b24e53ae33d178f1262b51441331a2747d26b315e41ad7280a8c3e58e06329518998a26cf2d42a48027bfcaebf5fec573ea9931db294f493e24ffdf4e8ac13162562a1cd57cb369b0d1d6e727e78657f4b8d64c4116eb9c51de0518dd5811f7d4a8ccb96a0eeb40d517b62363ea0ef022bba86cd14be448f4bb4d65c79192f644ef20c664d13021afc7e0848fd4f72012c76905d9f793eb1eb3ad5e01d78786ed5b9846ebc845ac7706a8150dd865612de7604c5c021910b744a6765efe47aba4112a9b2bba485bbd59f30b762064ae850ee1c8d24f78d68942bfb80915704b4d4ce8107c8947dc2bbe76d5967c299d3aa0eb08d1e8cc8ee3d1bf76ec0b20f54e91339fed0275cf569a534ff1c6c697076628eb74e029e73d3354df719c177b1ea6ccbeb97770110d676f9624838e68c180d95c6a9e2b512c5f7cc138ddb26f4f8df9c0549580c386d3b335a5053aae69676fbb69ee4cf59664fa9738704cc1775310f41e89abd11814aff015f15b7e7c7a1810f0beda14930a8bcc495aeb2c9df853ef7c36c75efc5fa20577cdd3c8fa8141666444c8a0a96304870144ffe73251cee634eafeb48581866f654f1ff43fcbfba0a261c0b92b88e58b13cbea6509242333621cbb87601588f13b2af3eef85980cf6895178d6c19237e9b6b85d22596bfa415e9b2419b7af8c563a1a01de03233624a11bde456ed0703bda0649ad0f895204931820a9166acc1685fc0da07987144f766bb1e1118e27d60060f6a81f6a47fa2a0a519c34d181f2dab572c23d403056e2c2f624c3800714ed481d2abf3666b50f315de6e881f40511e38390c4b19dfeb1c6842bfaf33f806b217e4da4ae675d1e64ad007b4f8537e76ef8d83e13c3fb962960a7f1377945dac34cedbcd1a4cbbbecf27028cb043057aa24cbcd23795dac8bf60e151faf56a4fa22ef6f759bd8abdbc723603d634d3da3433310a12c74f8f401543dc8b8a9e679affbbd28f53caedf955dec5aaeea020b3d86488c77c9f0a32d91d42ce2505cad8685b8fea38cd9860173fa78e956919ec6f6add2c50991b44412446439b8b756d962064b29f4879f947d8ebafcd98ac0a28918ea5c67b81e3ad3582b7a8c8ab53388f717e3705f877713f683f2b83e7bee52682774c282c760b83d2a4c0575a91b1267f00d8083c4b041819215da11387a1b3133731fd1002dc198a2f418a4dea5e6f94dc586146460b73b15f34aa0d91da61cec5ce9ffe895332ffbcd6e32900ff83b059b10671c065083a4ae987223b5d4b87a519e19bcd88410f5184aa816802d4e669138f808aa48af1b0ea72ccbcea7306478dad93cd8a5fc39ba71ab38e78dc43dd567e7995847d39ccb420203249850134506045133d3217827ba6d9e14440948650da1c490f4d677e99c7968daf745662930483c52cbf7000640ab107d058ca4abdd9a21cde209ba691a2005b71f293a0e31efeb5cc8f94b2cf5099e16c33576002954cdce3f581be9b843e0061ddbe417da6a988c22dfba8c73d1823d6d665568e5d7b62e18e108ad58f7f61559ee3606e13d73acb3fd1d57254d35931d2d2292c7bd7ee93d00b9df0173a9b0605265e42067e7145345708cd4473e90f9aedb16c51f17fe46e31adde2e6766efe3b87f2f92d90db6c5f5788848a6ab616d473c896716192792be907a4711707916c7d55673f829218dcd9c0d952dff9dd379039e5e6fd08a0b7e34e9c29441711a2a04c01bfd3689198d82876499163d265355661720c17551dec6857eb4136fba87f72352cc2717175f51a8b48894606a33a52a489dc032bf5b5cf4f607d3d8edc25bc0def56a70b233ddb88d2f89f4ae275ddfdc6a2cee36f8ce2a4c7e71f2c4ef927ea3c547ef046615bcaff028d54a991b8fe0727942217311d79ed7be0b579c1e6f40a9853dec9b1d7abff7b8e7ed07a4736e4d7de26531e50e6ddd3174b5d9f76e65d4321e08da6778178d44ca37f96880c09ed2809f864ae15044c0cfa0086ea0a0e993f855aa6cb9b3890241587a6202b035b284f4ee46ab7fc2f6618de276609b34e38884a2b9b27119416616d08048b809e5d956ba6b1246a36e2fccb5b8f9797d2f928b0f91d28500709d693073269af8689ae21085265fb7839fca8574b1645c7358ded6918de1ef74c661cbc730e1ec5b63bc818313c314a0daa9199007c2c50db9362a93d1e7817e473c47decded8013c090f0b850a80f909836a702bf2fcbb1a24149b3bfdc23bbeecf6635f2ce318e6b80faacb9c24722456125c30065d809d09f31aa3a3aebd14f9c00f0fb35a6f83248c2e7cbf4928715751b2c8dc5916e5c5634dcab575eeb510703c90dcfd7d2cae97608bee75ad262bf5471aa072090faacacd809282cb8d709ea4b0eb79d2920bd0754853b32758cc6fccef9cb0d9eeb1423e8b135e535cbacc253fc63b87b0f2c8d239a31178ad63acb7e40cba14a0464fce39d80ccecac55721533e48d0869cf2980bf2c0654740b5687785666dcb6b901eeb988b4719a8442201f0007503e0c5a18792ec6508062a8f9733cf9aedb2d665b46f2740ec9542d87ac485b13aedb6571718a1170bd6fca0b9b8b9ca75d04ec832664675ff7b10fd4db5e0eaed54adce9d9d10c52868d94f2ca484270cf06edcdf464a30150ad4a341172063ffcee2844fecea05f3d076139cb5929373abf38904c5708831f022428adb8d7397084a05a35cd59d50cc20def4770ccac87b5c8b75969bb3c8223aa04ffe87e209f0320e854d1884158a3ad82965dbabb3a089e1586632905565fa4ef6a546cc0da179054d77de6e89ea34612f91104ea48a604068a9ed7fd275a023bf0dfffb198d53ec3858ecaa1830ddb59a6019606dd2a7ee9695a10b6149f2e8b4e0964bdcff78a6258587b491e106a62e6320770fcc324b4fba26697f5be57c591cf8c5cc6cd4cd79088af45a36d1805abf7a0496e2ae36290ca4c9017d19ee1dc474b430c27cc5c1a4f93d2a783e36ecdb7c6bf6531a7c2603d6beea1ead13788e9c40ccfb09e990f579943566936702e44729cb47a835ffd637789eb4072ffef3f9730ac0f2dd0261da14eec086b5efeb2d4ff335d34841d75f99dd19e71b74f2b599f1e4c390d837247cc99871baadcab9f389c0e27221d99cd59eacd86d4292158b3af1ff0941bf916dde55b89736cbafae08322997444aa72c15ede94e134cb5d88b3f6ea0e43439ab62b5648913aa5d515d098bea6d78752e76ccc5bac404a6d1b12603064ffe483137bfebd21f373c7031f92006201b8c0c40e189b86ad9e23c61c88ef3e807054e2c1703ace5ec1ace2dc4429c86157f3b612feff5ffd3be8021e69b5efad40c48fc6d681e46941019cc527e1a03c656a449802b6c8a2b5cdaaef7f7def681bd7c79481b4226f914ba4ee295a27d9c0bcab40a6e6f90d6d5d674b083d255a64fc1bfd3448cebf997d701491a5f3c56029790a1fb549c3563357463dff617cc916d086cb872dc36fa8971842f4a2945bdb4eab74bcb7d6c058b544ddcf8242e3876cda154ee69f8f1e08a238426c176b1c84e77858f23207dfca1f01156d8c555478cd5a57b1ab84ee54a9f5f7af6342551e6044afdf722e9e3f8bf06edcf2c57af6df045a3c67d96dc856fd935415785879ad1890d2e7f09cc885d32c4558442b84582a61faf1983d59e84b04078e887733088f30aaa9ca0409a28a9ef06264f044433b53bb2a183deac5dc25a614f1484cafda787e7ce08043b8bf3b628038b4b5dccf172b4d3f4ee6e6724e0413a1c69167263bea723b822e67554e04706da533aa8898397353e29f2fbf64c6c8d75ac0f316c6a5770abd3f051a5d7eec26cb81ab056303843dd8793f7d7e62ac6035c229ebc9b895d9aa7166351630516a649277565babde33fb08ce49743b11146af6b6a5f4df8e171430b6215e6a6138b534a3c4ebd186a9984e1a1875ef027f4bd935524af2c2fb87d71ff7085f8874bf049dd7b2dbab013240d17aa4021f42db05cd5e807e5211402df2f12aa9d03082d6b2186f6879fcadae2e3676277c8ee7a7f6237d031888b25402dfbf0014f7116f955ebef6f37a4aa4dc533fe0894b2beae1b250c944814acef5e19e2a219c7cbc8d81eff3267cf8febce14101d2dd15dc262b87908ce5f9cadb0ef797ab3c060b4bbc9d45ad182a320c12e4a4528301751c61826e8182da6b8a10981e5d686a2a864ca4da3e6b9b97b4817c9b6e008b38b413726ae31e6ccff3a5c31429f46ad21b9669eac5a1bd7c3eb41cb78299deec595476fa0f6650c9af2c71c79e7035e6d7415db860bd547c4c2fbd9a9400c64fee264354daf7107ff293a5295bfdbc0b89aea59c12240fe62ff1bbd9781a60c5b396354aefa9dda55b8f6508a55857d8ba1220da848d0164a19e02248ca3fd4c87b3eeb8a5b80a6e947861869f3e6caebc8451f331f07af2944f6afd0e85bccd597a829533c9d8f3bf5c20cdad7eb45fafd4f81b69dc873762414996bd18e87ac3117bff796f20738c5a98f282375e31fdecb664801085ad599e3f8bd0a285dec0c450a8af93d2fb0e47cbe9f1b7ad70344dd341033ac6fa1f24e89a429e53c1b97002e81a49a85e2b0ebe8297bc3c29cb3f6bb6292418c0d9e1aca3ec4a4590bf11a496119664acc87d590b2cdf1f70763c529b6aa6c3ef1c3f9df93104a3d97ed2a96459688a12f0846cdcfecd34fd6081a9f4e4b8a077495aa53f057f4557fade6f9dd92ae48b7880793dae0b218405f26557edd0032ecda47a7dffcc0cd6181f5d31dd939f3165e857234602ed0f34ff1d254e06d4770ec9f22f82a1ec1e8f1d9eff49543813c75957c540141dfd3905db66a2a408c33d38807a8a04e7d2b3c337173a7ce6dc493b6aa75fc39f8b8f3f4f2c439f35235e18d59fccca81f570b7ebcf1a10e173f2169dda80c51bf85e1ce2d5e12bcf25ab80d9d0487af213da8d97872adf49109b2c9bce65c6130b8531be5e55edfd63e4d167a9c75618bcd3a148de46f534a2664cff74a18ce97c40a39f7c4495422e4b04228b137d88968d0419b7cd17c5ebbf74a827125110659bbf2a4a5b4a07d12bb79bfb30b612f2e66dcebbe916ef897bd20540b80aa92b3028a2147c79f383bba255b617f0d76412a0ddd98651ce4e98ed4ff7366e7c210647d6e2a923c4f90cde5d709f8956d0b758ffc4a4732b4ef7d993ab09c25cf45e43d2a4b0b4bd10f373c74bba2c3ca3b3cb0b9124ef8ac38ddaffde9b0b38143b676be2b9a46a812a879401ba176ff1cd7c2ae7dfb98b552b296115a8868097c6254c33f2dd47fc4593186c14f55e4c914714a3af1d6bda09b6be509d9531dff551c36090f95c5d83b823b66b2cc7fa3fbbd37c6561f4534dbf0608766cad607e682ac67c3b45c599507a127183a8385e5e12bcae1072c02d9077c03f8cb46e9a9485abb50ac790e482df1deda5cc2f2871fd1aa3e893072580bb10d827536436ec1f2e789507eaf51d02f1d2abeb712a1216c1fc1706dafd76d21b2f8707faf987daa11d13de0a7e1d815de501dde2f1f02190427154622cc9994a2c10d5dd4d07cb345ac90e8718c74db4307fadc13f5d84a034dbd9a0622ee20deaf7d3bb7fb7aeedc53dae30e89ddb57cdadf74f4b65fb992718b2e094eac43d220e8cf9d0a0e4bf3456b4b1a06825be3a080a64ddf195a9883b0c585ce478214e1cf1a11119058658e7934052d91190b0f2f6d521d35a93500b63ff6b567b81ad66351fc927cfa09069255a50ea99a605b6d90c93d6b10b211b3a7561463118c1a54f6e48dad07b4c01d5768075f638e61b76d5fdaaecac85cdc7ccff47bbed8b2d3cd5b36954d24cbc68b764db233bc846c58417024c39e7317f6b431bcd55762bc1fff4339d9fcd910656ccbb38fdfceba248a18dc85393791f93c766a7007ddc9a9c5a30390b7311ce1af12e19de6d0910379ad5a1a03d6aeea1446b2b60c0c99b73e59f7fe89ae3925d3e97e012e44a2f0eefe19b5d9645055b2708857e2bd668bfd64adea4da97e033290f1fee00ca3a8f377ef0f6b70c12de3af6a098515bd618d666fff49172cbee99e7ba16642f20680559edb81c9105edda23718ce30c17eee0a26b46335928acc33bc97b5a8f4752290beb4b04fde78edb72c3e04bf353c9587ca60ccb260de403c1eecb6132cb598b6da5bfbb1aac912ec29d5b6149548d953726e533dd0a757cf6f146eb2793b7f828355bd35f3de3d3bbb5f08f72f437d9f59461b30848e9cb5d1903a9b7daab6de450a02f9a64e7448ecc02869f123ac78536bfaf12fa1459ed0aa077b577e5b55e3127414b064266cc50aa957c4ac1f3bc1503ec420b050e4ad11bb3d1741b2fa1257ddf129f5317214f190cd195964b6ebd7961d9742cfcf469ecb46f2af445098fde8fc88918b3bb65ba31e75d12a28c76ca7559947a18ea987a275a32f74b784ddfaa02796992d5a8130822e0a1466ddde595db7224e09862075de0970f9fe141201ba9ad73cc1db30a8afe64613aa00f2956f4f65489d3e4f849a37130e1b1e672c52b9f8eeab489f9af93de37de2cd1dd4b3b8bb0cc022a2e834e073c72dbe8cd8f6ec4d48101f764b89fd0e48ef41ddbb03cdc2846ccb56a0939e296284ca6ecd24d172be2c2a2d8c7ce9d11560d842fca381c2c75ceae3cce9e2bdc5d65a832639bb20e2e46112d84f19b22a501070e39f9617208bcc75419a70cea5cac2f623e36aebd5bac67afaaaa6d60890b032eeb749065f33c5b841e0240b477a40648bd4115b1a1113403f9a0e0d8eb3ccd4052f798a7a731c82568429f9396654f8538da7e823f46cea4558da0a296bff597ac5df6196b4ea42dfe2cca85da740c882bd7b4e96a614cb9869d687e49c7d199d9778cb20456310c4f4e697583cb2a4462ca67f7d2eb75eecf71958fb1476216662df4804989144bb3915480953b777d4aad52311c79c86f92a6916930a4b8ae1f00e7cc6f07b73946f9d0cf5ba52676537b4fe04fc61bed4ecc4b2f538ff836023d585785b307fe066f2d6a0d07a0347b78c7ee4204904d098f464341a7dd35ee61c96b425be7fb2df97842d38cb4d8aad61483c8d37472335bc33c9fcb3a48ffaada2672d74f38f08039613d3cc830749b8338cf0f116bb65588a3bcb0975603b7f76c779a4734c43d3902154246d6fdcb120f184fe28d1c08ccbb59a859657c838bfc3ce6fab1a520a3beeaa385e070e123631e410a61bd6d0f9b2674a85a3dfa95f98f6ae93614851604983fd99caa2e637c8766b2c109acdff55cb5d069e7e8f33e5b3ea0060c61490be668efe3ba6f9eed905c3cd0010947d5a3da0bbbacb82fb6460e1d61133f52624d0a83ffc4ee763a1409a7e0bd561675a047eea4292ee065a5934b796008064846c9732a26670bf14dfc1d11e865cda5ebeb572d9a4cc3cc6dfbc24fd5301fb03d5dcd68f9853e1e93919ba0a7c76bd05d5a5a06df0eb804461cbb4530fc1771a758bb3e2a1a6498d6fb2f1eef33c0d79268e26b81361053eeb1128b88a1fe2241f446b362ea1ac6d48b744a4dae8393aa98d1746156643edf318ac71ba7a8258dce8230a76168628fcfa62ef2f2fa9464db6e7cd90a9924647e8ec3a51a78992a326ad9f87e5ec81a9ccadf369e278ce6aa6bf4ac3831f192b6a4c15bb6d3247ff0b0138ab0c884dcf051f82bcfff62def78625a6e3b5e1a87936d5f64c99d63699e0034c935cf22d927dbdb7180415e3c52c4f8c22367eea5b9623ae62ac8244e865d35b26a3f1912c5fc6e7eea6eeb228163d04c52244a24822cde802fd2cc7e838ee10bc03cdbd98b22837522bb7c9ec91346b1eb0f6967537b317c13f27e0fa7d6d20c58f3add775a8e045951497f8ddd848b6b2aa95a506ba4a9073a8698ae8f1db547db30f4dde45167c04d554168a326b9113c9b7bfb092d592918bdf3792197724d0d5c0f2aad2b527aa2b3fa68c06e8ce9b62335f7ec8008f691e8495f77d35d1e0594dedb81106f2aa489ac497e47807456e73fa923a0b569cc510af919ac9b8cf56ffb64e2dc23b0d0c5c9f7cfc8be754af02a913df97f51241fd2799aa2eb43bc500dd2afd33d16bc8a3e8e0ef98d123a0da011cc94db3fe7628057314fec8e97913fef0d45e95c3a220065f96674498f85a1a066c7328c2953dbfeeeafa4c702668d4c130fd6ce1758a92d47304a2b7f37a854cdab59c787d658c8cebaecbb647a1819be1d2f0ec73ee9234f8b48cfdfe9161a9534ee92f383b9bc0b6e8cab0db3d3b376452f06748c3ff4c1378d5f2d5258ed4d1dde2d35511fd82a7cb817362c7290a25c099156cdd8152935dcd76dff84338d6a3fc0248cda66968e51e54f383f68ba19abc08053a3a10237cd9271e74986bbb750e64c9a6ec0241ae9fd18e9d3d77312b90b27c9fa1eca748109b13bf7b1d54153f04f5a4a9ae0ec202af3ffdb469983ed0736670e7fa1cfbe43c7c9a3c090c0c45f512093bd7bf62d276e007ab7c336cadc875e8dba231ea0abea9945ac108200b4395d68f011942af8f4bb4884b754de6b35df0f8063cb1870d61c3754ab92b294aaeb789a77d727c3539390a140fb0d06e9e09dcf6b60fa24fa5158f0efcac8256b2b091592951252c3374e10d8d8e31ac1e0ee9fe1cde9f41280253063edc893c5155b9950df67753a054dd35793c71880c8b60402ca9e6197f251708f59cfa0894d6ec5297419aeb6c38a229d49527bfd52e7de23d7d3945337ccdb389d09c38514de6753906a2bd5585d086293af584f93e91e755c130f8722d22035f866916db907eca214de44ce2508d94327d2b0a571897e6e00224f370ee30bc54be8bb44361814de8f6f7132186a4809c9c2eac544401ec9d9f3bc43c867264d6f3f80893963e4d2ed4b08d03c4ee2ab2adbe20f209bdfb571e100c7d508c3d3e4d64940484d451151de8be0ddd06f486bbac06cd0f15bcc73c79c2e09bbde2492f0e85d867047216bdf9be5e7dd1aecd4f58093b953a0bc192123d67e72e5eeb29b0ea8792d4d1f4f562bbcd043887bc4408f15a02e1c1bb6bf27b694afd45c712ed1ccad3d71c83f9b2802db4767856e5d64f43164e5fb306a0a862681fdf05bdc3b998a19ef2f8145259945a13af89bd789d84b864273b43d0e893305ea68c03798216be4de3d843d531a1a1dd65049b404041477624c789aab82e8f5ec320415ce0f5e3a3268bba914c8381039d1e3acc41d91234d2575d57d418c41790f21f1b3d9be0917e2fc8f5733d05f6ae56e8ca35416ffd5713dae4136ff59341f0393f579d504fcf15fff0beeb6a03e54f3e0a02f6d0b370b4ee91f3c4f9c61d083aa645942e7a90c6b43e1df83af1d963f9d18c7664ef6e52aabe62f7fdd2db4bef8d932d89d21e3c715e3e0ad3718450a14f6e1bfe9cb0c102fb5505b5cd4b3062ce2744ceb18b58361a516f88d73831781a11970e46e7b75e2b2ca477a261791700e523a667c766a629d966f25966b54f8c252b17eb767af6486435efbec067298dde4395b5eefb38d4aa9039187e5b8445341ac882bb488f5b2c79826d661a3993a3960a55dd99da3db411f78c0e5472df966611f976774463ef827295b2b61595a0d7cc9ad116ed7de4355c75fbe655fcb03cc095ee41423627023ea7011a449933c716c89e599055d0c7250af7f2205ce90baa5ac4803686613146420bd28dd4ef0ced60c9f12632ccbc0cb9044d15cce73befb4db471b7097eca605d8271e6e527f56ba1e3261f6c0802bde09a4c77e6e42f20104cd3599182b046ba22d8f26af31325f1dd864695ca595399030436064d6d50684ecd4dde8f62e17b82472405775f8b7e4f56e2e7a271c806b4b7b1ac6487854a86a598e2e5e6fd798a97055885f84e53dba0ca46896e8aab503c161fe52518706146785a64e2dbcdf8e5473b952c723992d1abda5ac227f9fc66750c2cdc4267d2e9d7a7d805c2decfbb9a5d3d590ca18faff1901c47c8e23f86700570db3951a4aa7867793f203db344a2fb029e8c57fbb498b54b270832075ca9b887d48ceeb1ab34106200707b6dedf4d853d5b04a3e5cb1bce640cef606f1b9269cb4512e7143aa187d63bca70970e947b5f0bcf353e4f7fb7d56031f6bab3fb4ce8e6ac2203568432e6396e0bbdc27a60dd095d7cfe4a43b34c7e5fd5940e4303e76a1d6bafd32f456c7c3712f14780700538bb9fc46f964933afc15172784cefa961a5b4e81915d55458b37d749b5f63a04858f51622b0a49284a3c86d0a0e84437acb50015cd4a854fd808044e3d3132c081e6ef00add8a7156a3334680f96e10242a2eb930e210d885c806f0c8de63198ca44071d47ad60e4a7a815c15f1af5b3e59c33e479c2e5f86ca9a4adcd56354c897984d5afc84a2c297a2f19bcf0eb337e022fd3d2e1009045d520d282065b266ed5c2cccad07aadcb05760a758037236e774108730cfa887ab7e5cdf03739ff4477e4f4b45f97b1c2650c840a1f5f748a7453a97e5d6e246644318a4f34b931b84f77b939eb3ad31729e59897bb40c43f12b12df1b0b73048e444c5f57a25ed186be0ab28b5e8f7410f5a8a8fb22c5a2dde69647a0bd6c2a7c88973522654fd8a64017f756028e81cd26df049c938bc4298fe8edce72638ffaf403d74d02e635c6cbfc65504b421048dedcd08838f66e1d49f3491dc2c7232a50cb4f99fdb19bceff997ef4fc1839ff737e1bf34ee2026263079e621e989833f7d4d857e58656b0277e70a4acdba243")

--UPDATEURL=
--HASH=2C6B6E74131F40D8FF5C15943CB81393

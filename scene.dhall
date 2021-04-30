{- This is a Dhall conversion of a random scene. It isn't exactly useful yet. -}
let Point3
    : Type
    = { x : Double, y : Double, z : Double }

let Color
    : Type
    = { r : Double, g : Double, b : Double }

let Material
    : Type
    = < Lambertian : { albedo : Color }
      | Metal : { albedo : Color, fuzz : Double }
      | Dielectric : { ir : Double }
      >

let Object
    : Type
    = < Sphere : { center : Point3, radius : Double, material : Material } >

let scene =
      [ Object.Sphere
          { center = { x = 0.0, y = -1000.0, z = 0.0 }
          , radius = 1000.0
          , material =
              Material.Lambertian { albedo = { r = 0.5, g = 0.5, b = 0.5 } }
          }
      , Object.Sphere
          { center =
            { x = -10.533792345161867, y = 0.2, z = -10.842324646119426 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0045954078450532575
                  , g = 0.0031224381021956365
                  , b = 0.17052588103937796
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.410572582374021, y = 0.2, z = -9.885602037714907 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3393132176848926
                  , g = 0.43830445465905005
                  , b = 0.19477799304902
                  }
                }
          }
      , Object.Sphere
          { center = { x = -10.591921198238083, y = 0.2, z = -8.11524698850328 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5187676989131234
                  , g = 0.74067125613307
                  , b = 0.5525907910849197
                  }
                , fuzz = 0.0900390272203081
                }
          }
      , Object.Sphere
          { center =
            { x = -10.373754393086868, y = 0.2, z = -7.185717321451242 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.44568999807717763
                  , g = 0.38521036270649356
                  , b = 0.3304969650142966
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.952433655373804, y = 0.2, z = -6.6795494228205055 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1654436651606544
                  , g = 0.28772147685695476
                  , b = 0.1392506768350683
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.331061358287997, y = 0.2, z = -5.612052155426029 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.03178814799614191
                  , g = 0.01542728343245472
                  , b = 0.04000420322141625
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.432428197410829, y = 0.2, z = -4.704423197449724 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.012637749539255852
                  , g = 0.1630014467069799
                  , b = 0.07282858558474574
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.105115105881769, y = 0.2, z = -3.9752656989282187 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.8605099969819353
                  , g = 0.6662919186661342
                  , b = 0.5211174466396652
                  }
                , fuzz = 0.186281166358519
                }
          }
      , Object.Sphere
          { center =
            { x = -10.988405155005779, y = 0.2, z = -2.2311854463846528 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.22658981912454804
                  , g = 0.36477895161758184
                  , b = 0.007503461526296433
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.816892391216735, y = 0.2, z = -1.7086453882424621 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.04317899599125825
                  , g = 0.05836816654358463
                  , b = 0.033093328937955996
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.979329519322038, y = 0.2, z = -0.20895631138542659 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1790233528035944
                  , g = 0.09909439859148614
                  , b = 0.30877229913264326
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.38576810437498, y = 0.2, z = 0.022250684244485154 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9485832432976077
                  , g = 0.5045404645845076
                  , b = 0.6075040704897546
                  }
                , fuzz = 0.4164846221732198
                }
          }
      , Object.Sphere
          { center = { x = -10.140453363367682, y = 0.2, z = 1.747539359498648 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.019633718494578043
                  , g = 0.1302669055156983
                  , b = 0.003989734368140754
                  }
                }
          }
      , Object.Sphere
          { center = { x = -10.816237180108384, y = 0.2, z = 2.415028218947486 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.018290178610106417
                  , g = 0.015618108924349554
                  , b = 0.0024383423351780585
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.265227228621454, y = 0.2, z = 3.2660423056904513 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -10.18553218008153, y = 0.2, z = 4.421953177155541 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5976911220837137
                  , g = 0.10058100336007433
                  , b = 0.41342221171986576
                  }
                }
          }
      , Object.Sphere
          { center = { x = -10.238993471271513, y = 0.2, z = 5.386065796516323 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5043466488385973
                  , g = 0.4760910609852079
                  , b = 0.24260560784668606
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.761844669220297, y = 0.2, z = 6.3340407930965945 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.04582223336248361
                  , g = 0.14080416181897049
                  , b = 0.312668282831468
                  }
                }
          }
      , Object.Sphere
          { center = { x = -10.185186264829866, y = 0.2, z = 7.131569948378937 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.14022571807163753
                  , g = 0.1797538361844885
                  , b = 0.26158613434145406
                  }
                }
          }
      , Object.Sphere
          { center = { x = -10.488549618027623, y = 0.2, z = 8.865645918924159 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9451338944224066
                  , g = 0.856902074626703
                  , b = 0.9047171028169192
                  }
                , fuzz = 0.295133951670698
                }
          }
      , Object.Sphere
          { center = { x = -10.24478851959853, y = 0.2, z = 9.142841643062594 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.033161038425920025
                  , g = 0.11558253414565986
                  , b = 0.4884750091716904
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -10.847701115649755, y = 0.2, z = 10.475894336995449 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09211979447776432
                  , g = 0.522004088303075
                  , b = 0.4237212194186729
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.132444558722954, y = 0.2, z = -10.31965789009556 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.24369132565154203
                  , g = 0.07158920378606169
                  , b = 0.20699245829898932
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.390296772254677, y = 0.2, z = -9.585814308305677 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.16747627121060954
                  , g = 0.1519124804628791
                  , b = 0.14614858460559163
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.248402161953855, y = 0.2, z = -8.504850775720852 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1372138677245016
                  , g = 0.2651811401654674
                  , b = 0.07163629448927979
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.587135672006326, y = 0.2, z = -7.986137803680476 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.27249225177745806
                  , g = 0.4814351953703326
                  , b = 0.032852361525390714
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.42294640134778, y = 0.2, z = -6.739370952584887 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.018770456792303172
                  , g = 0.39947477666025727
                  , b = 0.02883065343306356
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.540562447782484, y = 0.2, z = -5.584959473820719 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.9151361490267944
                  , g = 0.5109288058591486
                  , b = 0.5611101335824573
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.309287513897877, y = 0.2, z = -4.474889977146858 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.11362851812628551
                  , g = 0.038572665611985614
                  , b = 0.30568401563677156
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -9.275988336888005, y = 0.2, z = -3.5122078899513176 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.06504840034417037
                  , g = 0.29776492064346205
                  , b = 0.03869702533810165
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.432620793598312, y = 0.2, z = -2.353886400504115 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.7997356302053205
                  , g = 0.6842589847097953
                  , b = 0.5766278647835389
                  }
                , fuzz = 0.38061950547561896
                }
          }
      , Object.Sphere
          { center = { x = -9.457044496806525, y = 0.2, z = -1.131699674699587 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.04779487619086113
                  , g = 0.043275899580907544
                  , b = 0.07533189101611762
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -9.254219255960063, y = 0.2, z = -0.6282132574012931 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.281556403671555
                  , g = 0.032225639790305516
                  , b = 0.45242658654237083
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.562121832824054, y = 0.2, z = 0.6461777968506357 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.07036364629858362
                  , g = 0.07464194921309081
                  , b = 0.1379772226078699
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.232655346364751, y = 0.2, z = 1.5730025048560674 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8385866998022534
                  , g = 0.7071534152101785
                  , b = 0.674034658128631
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.270362303535313, y = 0.2, z = 2.644835641313891 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.8923405357754285
                  , g = 0.6477732997556378
                  , b = 0.9633973725273236
                  }
                , fuzz = 0.28403497969164715
                }
          }
      , Object.Sphere
          { center = { x = -9.397470794087305, y = 0.2, z = 3.0076392688062157 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2608133946032107
                  , g = 0.30296404980238784
                  , b = 0.36462515446432886
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.304697435741462, y = 0.2, z = 4.481511900504377 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.11917864006562806
                  , g = 0.08831821059017086
                  , b = 0.14603143385691203
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.1663627299669, y = 0.2, z = 5.581313845696074 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9069849114469734
                  , g = 0.8604569860518908
                  , b = 0.5025275847471402
                  }
                , fuzz = 0.3201641411467234
                }
          }
      , Object.Sphere
          { center = { x = -9.785812279963302, y = 0.2, z = 6.233870559202513 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2208876399293977
                  , g = 0.656450701068099
                  , b = 0.34167555565941904
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.888011965841496, y = 0.2, z = 7.601561590395818 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6210777031696743
                  , g = 0.6055637624254564
                  , b = 0.5958601515649715
                  }
                , fuzz = 0.37366070056609
                }
          }
      , Object.Sphere
          { center = { x = -9.749312384779683, y = 0.2, z = 8.376817455380698 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8354968429879671
                  , g = 0.45440249532289045
                  , b = 0.9209166542079534
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.136400641515735, y = 0.2, z = 9.661134929260058 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09647823743098831
                  , g = 0.2575044947591257
                  , b = 0.22149428488893752
                  }
                }
          }
      , Object.Sphere
          { center = { x = -9.42163456753279, y = 0.2, z = 10.447006854429338 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.25172747587736904
                  , g = 0.5595891644263103
                  , b = 0.45259268106183
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -8.645507841809316, y = 0.2, z = -10.319567643148845 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17495365142998337
                  , g = 0.08452751717728707
                  , b = 0.0894945727638191
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.351835314989275, y = 0.2, z = -9.813444510014254 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2845343490086882
                  , g = 0.019977815904803912
                  , b = 0.345298943248458
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.593632283783718, y = 0.2, z = -8.687455146555681 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.7350066226967583
                  , g = 0.5518755510643478
                  , b = 0.5209843239045037
                  }
                , fuzz = 0.28961165044107073
                }
          }
      , Object.Sphere
          { center = { x = -8.42279511397383, y = 0.2, z = -7.580731433583181 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09200487478909923
                  , g = 0.0060268635867468615
                  , b = 0.0001275090847614307
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.235637393485467, y = 0.2, z = -6.961282746618812 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.9056305902588867
                  , g = 0.5679737584281054
                  , b = 0.5682504965912867
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.793860552285214, y = 0.2, z = -5.820578320752405 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -8.725143957148692, y = 0.2, z = -4.80338665258165 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -8.294911930985624, y = 0.2, z = -3.189923822828182 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1389512217258468
                  , g = 0.1901284782894737
                  , b = 0.19178450401522523
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.876989603770692, y = 0.2, z = -2.76356645776343 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6760510339978067
                  , g = 0.9341768787110217
                  , b = 0.9997856482095261
                  }
                , fuzz = 0.4427284187395778
                }
          }
      , Object.Sphere
          { center =
            { x = -8.610240357046584, y = 0.2, z = -1.7011587255570495 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5174526685153148
                  , g = 0.23402646841948332
                  , b = 0.5769841354197639
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.12745008159739, y = 0.2, z = -0.5391726935761363 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6969856111706774
                  , g = 0.5812953071280329
                  , b = 0.6372651221038753
                  }
                , fuzz = 0.27110378978248206
                }
          }
      , Object.Sphere
          { center = { x = -8.72952577900488, y = 0.2, z = 0.1965014059597284 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09246666787361603
                  , g = 0.14843116212239943
                  , b = 0.2923746965949672
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.100259408113205, y = 0.2, z = 1.0357451582612562 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19382895351942817
                  , g = 0.33228707157065895
                  , b = 0.8668257720477176
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.510342831044216, y = 0.2, z = 2.2106004163653337 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.03673062673488913
                  , g = 0.13016396098413255
                  , b = 0.11396143712286673
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.588263384759232, y = 0.2, z = 3.611196650171185 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.02246924695535052
                  , g = 0.015353295989728852
                  , b = 0.007475359145239236
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.381406817607807, y = 0.2, z = 4.400493434833038 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.026753537542049243
                  , g = 0.06510263413079612
                  , b = 0.09428520996965359
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.364206538443126, y = 0.2, z = 5.5456533525321765 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6554323520529538
                  , g = 0.9206669614053647
                  , b = 0.6368394271305917
                  }
                , fuzz = 0.21994617361871838
                }
          }
      , Object.Sphere
          { center = { x = -8.566344067132361, y = 0.2, z = 6.148296606621908 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.13804702079162093
                  , g = 0.3094060048221251
                  , b = 0.16921702103426278
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.131899458269052, y = 0.2, z = 7.667850747464632 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -8.839199030126073, y = 0.2, z = 8.465532816211974 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.12261001281487735
                  , g = 0.513252781529254
                  , b = 0.061163651255177226
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.905370948904514, y = 0.2, z = 9.689061927939711 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6091612194011414
                  , g = 0.4632351969023378
                  , b = 0.7318968821884696
                  }
                }
          }
      , Object.Sphere
          { center = { x = -8.240246330534884, y = 0.2, z = 10.677951414894842 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.025281560924061336
                  , g = 0.12922873997974346
                  , b = 0.026743202052013363
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -7.871576650177674, y = 0.2, z = -10.736846044436762 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.8221693161547448
                  , g = 0.5009658764018449
                  , b = 0.7264683644706521
                  }
                , fuzz = 0.08216765221979827
                }
          }
      , Object.Sphere
          { center = { x = -7.602747341182897, y = 0.2, z = -9.335714916183086 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4984810705461502
                  , g = 0.4260767175779144
                  , b = 0.14845142987867782
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.211932141533587, y = 0.2, z = -8.715454185261413 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.27474479493208254
                  , g = 0.09571400822533939
                  , b = 0.21629273548447248
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.458208386764458, y = 0.2, z = -7.627983962641359 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.20642578387999827
                  , g = 0.05419087359898725
                  , b = 0.6005358643375405
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.498139512285457, y = 0.2, z = -6.281672654630033 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.06445191469929787
                  , g = 0.11913786684930494
                  , b = 0.43807791132101903
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -7.700991390169665, y = 0.2, z = -5.2917229244611255 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5393370959899094
                  , g = 0.4474134152807811
                  , b = 0.026393966887566206
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.29157320202205, y = 0.2, z = -4.141393862567822 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.21540462837104685
                  , g = 0.02877862606909349
                  , b = 0.20704140288380612
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -7.781474082801443, y = 0.2, z = -3.6892316162553627 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.10001999550958858
                  , g = 0.03230488751325201
                  , b = 0.09275773502146792
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.23021180272986, y = 0.2, z = -2.914693976953507 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.25609889126413
                  , g = 0.4378260524660226
                  , b = 0.06840715569364227
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.846603524433669, y = 0.2, z = -1.346565770766719 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.16554935918077743
                  , g = 0.2227006994560723
                  , b = 0.036514976794852876
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -7.480486961544951, y = 0.2, z = -0.5009719039552152 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.38860927215530755
                  , g = 0.31210935104213505
                  , b = 0.13194563802059794
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -7.6544409334914425, y = 0.2, z = 0.5776582323761461 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5967751241463353
                  , g = 0.41036278105261426
                  , b = 0.012932722649015183
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -7.2017210407082315, y = 0.2, z = 1.2596147189041385 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5810727145273097
                  , g = 0.5412821294215897
                  , b = 0.9962934838708168
                  }
                , fuzz = 0.2419747787229024
                }
          }
      , Object.Sphere
          { center = { x = -7.795515581281603, y = 0.2, z = 2.72464533264859 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.841734277411105
                  , g = 0.5842015424929742
                  , b = 0.5633655633569328
                  }
                , fuzz = 0.09225110180852591
                }
          }
      , Object.Sphere
          { center = { x = -7.678621091462597, y = 0.2, z = 3.5042952583214744 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1517356289089461
                  , g = 0.11364998720816843
                  , b = 0.005973236274850357
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.912456482271645, y = 0.2, z = 4.471379627180976 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -7.949170558897465, y = 0.2, z = 5.491338206299641 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.020864041760066263
                  , g = 0.032753990322641834
                  , b = 0.04511163490791005
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.550069271814851, y = 0.2, z = 6.415631925460957 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.15513709322082495
                  , g = 0.37275396376782044
                  , b = 0.5046509664372775
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.876754200127793, y = 0.2, z = 7.338764805182847 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.08691147201883873
                  , g = 0.06533251905460294
                  , b = 0.3396636075092327
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.991741340748478, y = 0.2, z = 8.719751666355943 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4087350268588208
                  , g = 0.723816366241813
                  , b = 0.25274017801517057
                  }
                }
          }
      , Object.Sphere
          { center = { x = -7.4659127144027995, y = 0.2, z = 9.751971489016212 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.8872211032960597
                  , g = 0.5086451131820273
                  , b = 0.8612266883121129
                  }
                , fuzz = 0.007451618601844179
                }
          }
      , Object.Sphere
          { center = { x = -7.979346073762708, y = 0.2, z = 10.623160522601655 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2714400107206533
                  , g = 0.08311244483314432
                  , b = 0.20244882490220684
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -6.927387225089307, y = 0.2, z = -10.632327623195566 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.35651360824634737
                  , g = 0.2194592606632218
                  , b = 0.4869653796653124
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.856652544225608, y = 0.2, z = -9.30188942137352 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -6.628667808975222, y = 0.2, z = -8.900128213453787 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -6.983151743076081, y = 0.2, z = -7.100970081427535 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -6.970682121892957, y = 0.2, z = -6.487294744930939 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.23399051670978524
                  , g = 0.1395554008036368
                  , b = 0.12578227702671022
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.34611973582106, y = 0.2, z = -5.473124071254271 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.27330648321797973
                  , g = 0.12067641255291135
                  , b = 0.5156200437801501
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.255408379599859, y = 0.2, z = -4.936649254666284 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center =
            { x = -6.703997326182868, y = 0.2, z = -3.7056463227834553 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.017383242519595336
                  , g = 0.15527174079501554
                  , b = 0.32581811015093887
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.587632972005075, y = 0.2, z = -2.420324372342938 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.019013539346048595
                  , g = 0.3346547383948321
                  , b = 0.4605559204976962
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -6.793551631226452, y = 0.2, z = -1.2741240683102975 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.017576030567019903
                  , g = 0.05877545758579772
                  , b = 0.037668037323443565
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -6.3122057419713995, y = 0.2, z = -0.18617345190482348 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.03323950893994486
                  , g = 0.4728148600190036
                  , b = 0.512486331432323
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -6.4752612866049795, y = 0.2, z = 0.8368385352205557 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09077137357391903
                  , g = 0.14928979261345585
                  , b = 0.19699987216601436
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.7555125484122485, y = 0.2, z = 1.355978588304408 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.061075011315273466
                  , g = 0.06947886000918106
                  , b = 0.09263701407037894
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -6.7324703170856575, y = 0.2, z = 2.5340498089805736 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3862022637272721
                  , g = 0.06451247927656639
                  , b = 0.17966041283331108
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.289545128409635, y = 0.2, z = 3.1958663257494164 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5752119694481886
                  , g = 0.47963590586045246
                  , b = 0.8244894280196309
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.883860238431977, y = 0.2, z = 4.2647305700537315 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8101594904603634
                  , g = 0.7001491479435378
                  , b = 0.510944692461679
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.617187126796794, y = 0.2, z = 5.810907526453088 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5114650951615332
                  , g = 0.7678409771297594
                  , b = 0.8845524801554613
                  }
                , fuzz = 0.08701422786235824
                }
          }
      , Object.Sphere
          { center = { x = -6.9785684125625345, y = 0.2, z = 6.239580049857225 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.080168592032133
                  , g = 0.3006514388581487
                  , b = 0.49285576052502283
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.648383023447869, y = 0.2, z = 7.150949530432609 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6119577678392327
                  , g = 0.9908362300855413
                  , b = 0.8211533281270842
                  }
                , fuzz = 0.0007560859984426793
                }
          }
      , Object.Sphere
          { center = { x = -6.384032598178833, y = 0.2, z = 8.314176999953915 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.16268784111232173
                  , g = 0.27703240767086584
                  , b = 0.261575925128419
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.353849171676917, y = 0.2, z = 9.698645916116597 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0046493728395291456
                  , g = 0.05353741575729118
                  , b = 0.11390657253182204
                  }
                }
          }
      , Object.Sphere
          { center = { x = -6.867799332377434, y = 0.2, z = 10.824881593432472 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.005029639106125562
                  , g = 0.05052874177483332
                  , b = 0.07118933072056889
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -5.307015389701668, y = 0.2, z = -10.984081953444544 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.33200827217091405
                  , g = 0.11598346523929523
                  , b = 0.46546369698172513
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.871344143711817, y = 0.2, z = -9.781315075498389 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09760041523379447
                  , g = 0.4962324781101373
                  , b = 0.4163622532808314
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.672727060154939, y = 0.2, z = -8.674573212984393 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8752113906503476
                  , g = 0.6696080686357948
                  , b = 0.19133286158141366
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.509658622522499, y = 0.2, z = -7.690712026947003 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.15245192150133957
                  , g = 0.11079339580775201
                  , b = 0.057538045265286206
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.317635222768742, y = 0.2, z = -6.157978892436502 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09444336435738804
                  , g = 0.6520601907781979
                  , b = 0.8096838464468166
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.144226438065942, y = 0.2, z = -5.825244347517914 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.13396213447439767
                  , g = 0.3496215519782953
                  , b = 0.006046445740089277
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.901514467960673, y = 0.2, z = -4.957972850743713 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.025637398173897652
                  , g = 0.11942162774384059
                  , b = 0.07662852150998563
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.870327026867692, y = 0.2, z = -3.331454528968803 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.48806953178705687
                  , g = 0.4966414648057946
                  , b = 0.35192314423212717
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -5.239223039977951, y = 0.2, z = -2.1734107620235603 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2107397457918002
                  , g = 0.2950472280183387
                  , b = 0.26054554983250827
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -5.623469970114797, y = 0.2, z = -1.2346144081793886 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.07598507029181799
                  , g = 0.28248159387863786
                  , b = 0.3756790492410759
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.86399624116882, y = 0.2, z = -0.4625352492072462 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.38665368490847674
                  , g = 0.32404379309918707
                  , b = 0.19286484643267524
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -5.150755547291423, y = 0.2, z = 0.16012469990146203 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.20995098254897152
                  , g = 0.21983522828730626
                  , b = 0.19986870752494257
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.923136335680975, y = 0.2, z = 1.8685064691149025 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6559454804958329
                  , g = 0.6293738204820314
                  , b = 0.7170780004356012
                  }
                , fuzz = 0.43579545501129735
                }
          }
      , Object.Sphere
          { center = { x = -5.277886920634781, y = 0.2, z = 2.7767886581210663 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.13474395178173787
                  , g = 0.23926310433137207
                  , b = 0.17726542602028
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.88333969139512, y = 0.2, z = 3.6470024158828895 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8028097988662756
                  , g = 0.7730434689054949
                  , b = 0.22627050275821
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.269446355893912, y = 0.2, z = 4.054276955582995 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3960368302847677
                  , g = 0.022968351162585266
                  , b = 0.4962802639181765
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.620694432067686, y = 0.2, z = 5.750247936554214 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.005658352096966158
                  , g = 0.006456571738352455
                  , b = 0.003627017241096047
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.889487792326192, y = 0.2, z = 6.552310826988221 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19438355974494592
                  , g = 0.5543178868191511
                  , b = 0.3104788257915887
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.919366602749964, y = 0.2, z = 7.130283725511577 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.03500684623955539
                  , g = 0.2662462876413236
                  , b = 0.2052351015638332
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.62107253174975, y = 0.2, z = 8.853182569940955 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17997700850176465
                  , g = 0.09076472503963888
                  , b = 0.11722415651175046
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.577063108917206, y = 0.2, z = 9.303268706976251 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2210554849312843
                  , g = 0.3172403043643322
                  , b = 0.5548609751431323
                  }
                }
          }
      , Object.Sphere
          { center = { x = -5.955568505842105, y = 0.2, z = 10.031355041268444 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.42293778393039944
                  , g = 0.41858441463533597
                  , b = 0.07713478148250928
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.26654149749179, y = 0.2, z = -10.234308089110296 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9619640010688649
                  , g = 0.5902092360206866
                  , b = 0.8035748893354339
                  }
                , fuzz = 0.12816640415029135
                }
          }
      , Object.Sphere
          { center = { x = -4.326353496018766, y = 0.2, z = -9.179953021572668 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.47071062841188965
                  , g = 0.5044409747868485
                  , b = 0.6312961112273523
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.307916266285461, y = 0.2, z = -8.704876397996982 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5410330049083258
                  , g = 0.8031895758689882
                  , b = 0.7634012019119727
                  }
                , fuzz = 0.10961156477825218
                }
          }
      , Object.Sphere
          { center =
            { x = -4.979211896847259, y = 0.2, z = -7.7941172015363955 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6481547131518879
                  , g = 0.5615300559147884
                  , b = 0.7840797558368491
                  }
                , fuzz = 0.15551153388602246
                }
          }
      , Object.Sphere
          { center = { x = -4.317656707097864, y = 0.2, z = -6.201498087860425 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.08569640058629444
                  , g = 0.15604602988213587
                  , b = 0.3701700751380269
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.580749531911585, y = 0.2, z = -5.634912926067489 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.12081579881243246
                  , g = 0.07391275220477203
                  , b = 0.08432117740544764
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.710390168179831, y = 0.2, z = -4.915686018843533 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.18345423517320247
                  , g = 0.2372323258883921
                  , b = 0.008122653344734335
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.599923892422137, y = 0.2, z = -3.741483789042361 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1498943574294425
                  , g = 0.15398003278489322
                  , b = 0.06779790637495482
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.782958846061983, y = 0.2, z = -2.802827302549795 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.7636075457502751
                  , g = 0.8440120023082196
                  , b = 0.9877481448054579
                  }
                , fuzz = 0.30778675150563783
                }
          }
      , Object.Sphere
          { center =
            { x = -4.7087774928420405, y = 0.2, z = -1.4565061696676125 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0003229438654873949
                  , g = 0.010717115555985712
                  , b = 0.004746711313557164
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -4.239115436479068, y = 0.2, z = -0.39691718360613903 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8076029580195674
                  , g = 0.37766931230252554
                  , b = 0.7730341486845685
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.20655810383215, y = 0.2, z = 0.5058545036278269 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9797323820665266
                  , g = 0.5804482835036741
                  , b = 0.8008582024621355
                  }
                , fuzz = 0.0452984074171604
                }
          }
      , Object.Sphere
          { center = { x = -4.16112394583323, y = 0.2, z = 1.0978270583139491 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.7374664439800318
                  , g = 0.290690293103955
                  , b = 0.5992928882482841
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.746920577923941, y = 0.2, z = 2.331134799996239 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.04403626450240056
                  , g = 0.06115697086995178
                  , b = 0.31491461118547504
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.804067161104329, y = 0.2, z = 3.2588384706754563 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.7791548099520986
                  , g = 0.2837064091668182
                  , b = 0.5812421698099715
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.724763244003117, y = 0.2, z = 4.435412091277467 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19633995409365057
                  , g = 0.4503387399112351
                  , b = 0.22739951944626502
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.869671203783059, y = 0.2, z = 5.223431765499804 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.07244995630629401
                  , g = 0.21832823279134622
                  , b = 0.6911317788469383
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.9107080940955665, y = 0.2, z = 6.115495042947936 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.18344820140828935
                  , g = 0.18142945335924965
                  , b = 0.13424269717439596
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.30384025004264, y = 0.2, z = 7.869771195761967 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3652822266214682
                  , g = 0.2610960625482099
                  , b = 0.391950066062414
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.426531474168841, y = 0.2, z = 8.726323151199026 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5179542122539686
                  , g = 0.6471899813168098
                  , b = 0.5815054509890472
                  }
                , fuzz = 0.3662141290659413
                }
          }
      , Object.Sphere
          { center = { x = -4.826925312438766, y = 0.2, z = 9.839607655889646 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.7327691974799737
                  , g = 0.28083192815729974
                  , b = 0.8282431424426179
                  }
                }
          }
      , Object.Sphere
          { center = { x = -4.882247354542841, y = 0.2, z = 10.459750303900861 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.42992678778592913
                  , g = 0.43866224958613276
                  , b = 0.9913621316910802
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -3.3156869318796853, y = 0.2, z = -10.623263889094709 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.12392676879382031
                  , g = 0.12508315663347216
                  , b = 0.11955012157476787
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.375481058716721, y = 0.2, z = -9.34901836125108 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.7603405634343335
                  , g = 0.5909255623649265
                  , b = 0.9921835721722325
                  }
                , fuzz = 0.24848212802558822
                }
          }
      , Object.Sphere
          { center = { x = -3.687095444373748, y = 0.2, z = -8.616220999595239 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -3.797631511597402, y = 0.2, z = -7.58272644627241 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.43217227999151137
                  , g = 0.27884727819332633
                  , b = 0.4081765929910585
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -3.7456390362078165, y = 0.2, z = -6.410167233155831 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6517457278687876
                  , g = 0.5392220787414344
                  , b = 0.2008448916725997
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.647671570632758, y = 0.2, z = -5.70585666157402 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.24470805851343513
                  , g = 0.28977187631172213
                  , b = 0.5424906727825773
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.360548431430187, y = 0.2, z = -4.144240413617659 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.406799945261918
                  , g = 0.22910283178655028
                  , b = 0.3058308196792421
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -3.104659975438376, y = 0.2, z = -3.7190984058561143 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.14401601943573797
                  , g = 0.11826482642742747
                  , b = 0.15119270215723726
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.824944280219345, y = 0.2, z = -2.949134449859039 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3670349935828799
                  , g = 0.035715196471574666
                  , b = 0.41443946103107
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -3.8804011818379656, y = 0.2, z = -1.6823642300423962 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.320061356345038
                  , g = 0.16360046772631057
                  , b = 0.2999930616796911
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -3.100344230457422, y = 0.2, z = -0.8439744273556203 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.46513701081668796
                  , g = 0.46384371883672626
                  , b = 0.4313260658355021
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.9813769652636304, y = 0.2, z = 0.52070867323243 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.47204646357453117
                  , g = 0.5512681957177827
                  , b = 0.12402617591856005
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.851535454604311, y = 0.2, z = 1.3632610895440918 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.01085227527804859
                  , g = 0.7770907579760183
                  , b = 0.6996605054296352
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.5748659164634646, y = 0.2, z = 2.808923926756042 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.007001276780396256
                  , g = 0.0860708010107537
                  , b = 0.05126208176991387
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.141625521818354, y = 0.2, z = 3.495958917003959 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.024913475324669507
                  , g = 0.11167660734013962
                  , b = 0.053462395212009996
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.9814111643569365, y = 0.2, z = 4.364168107418605 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.29544866256508245
                  , g = 0.06775682354467036
                  , b = 0.2248394129649473
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.896513743815991, y = 0.2, z = 5.460398608015959 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.22250473517287334
                  , g = 0.26408990251634257
                  , b = 0.03911518984762903
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.875635098666261, y = 0.2, z = 6.283090556998343 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6132053826207176
                  , g = 0.5746636214337723
                  , b = 0.6353819893883342
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.873209682996994, y = 0.2, z = 7.8748993147692605 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.8629143316578017
                  , g = 0.5310271555078729
                  , b = 0.5233091193403304
                  }
                , fuzz = 0.3883059945580618
                }
          }
      , Object.Sphere
          { center = { x = -3.3469408397754874, y = 0.2, z = 8.75728334400177 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9868007350599783
                  , g = 0.7406444558765342
                  , b = 0.5133019734458383
                  }
                , fuzz = 0.40283359250564454
                }
          }
      , Object.Sphere
          { center = { x = -3.5331758303423157, y = 0.2, z = 9.544538179151509 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5497037466268723
                  , g = 0.42404477054921313
                  , b = 0.1900804278200337
                  }
                }
          }
      , Object.Sphere
          { center = { x = -3.999743562828301, y = 0.2, z = 10.865254496748529 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6341719029438091
                  , g = 0.364300516440939
                  , b = 0.42369237395089093
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.663174279247615, y = 0.2, z = -10.936674816244542 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.7144188896444128
                  , g = 0.14995930677143415
                  , b = 0.12601685216382794
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.973135753056205, y = 0.2, z = -9.326334405126735 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.053769243948680844
                  , g = 0.3650230314413687
                  , b = 0.10343175356737892
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.5167015404773765, y = 0.2, z = -8.948983956030593 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.015155445348904827
                  , g = 0.10433892664990005
                  , b = 0.14790557717896952
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.806312863583375, y = 0.2, z = -7.214228429192982 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.006490169098452966
                  , g = 0.025513512410246273
                  , b = 0.050215303848613425
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.3074039065851126, y = 0.2, z = -6.862419044929589 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4618973702869141
                  , g = 0.19445152635181537
                  , b = 0.29117691968212295
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.3351606208287974, y = 0.2, z = -5.474648555281559 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19398030847508063
                  , g = 0.2033029666418805
                  , b = 0.36468473884540686
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.3655672613178766, y = 0.2, z = -4.994389240532322 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6263816989509594
                  , g = 0.1039210656750903
                  , b = 0.6927822412982543
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.9950614381781464, y = 0.2, z = -3.1273872233767523 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8885258490666484
                  , g = 0.015899451441131595
                  , b = 0.0782619575793818
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.2357989248728334, y = 0.2, z = -2.609162677907573 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17465679274946522
                  , g = 0.3649787872968485
                  , b = 0.14843539553857266
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.906285469800055, y = 0.2, z = -1.359377277729819 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6976136619183245
                  , g = 0.04391888494438771
                  , b = 0.5799683475801054
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.92802527290843, y = 0.2, z = -0.5438188200886365 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.8329248201413174
                  , g = 0.5552325770731448
                  , b = 0.8132961557427673
                  }
                , fuzz = 0.49915213855716756
                }
          }
      , Object.Sphere
          { center = { x = -2.374118803804872, y = 0.2, z = 0.6920923016545016 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.07655390147816986
                  , g = 0.16530352490363667
                  , b = 0.3080692125024087
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.9913958464457786, y = 0.2, z = 1.8920224329349924 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.13505990491563513
                  , g = 0.0800434185445058
                  , b = 0.08583222459042633
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.4178420492641144, y = 0.2, z = 2.4552683068103507 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09473019934823436
                  , g = 0.13342496453601715
                  , b = 0.19127458622854565
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.9513012335656432, y = 0.2, z = 3.626506817215285 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17835974288872433
                  , g = 0.07718602262442685
                  , b = 0.14699119141113826
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.658877124513521, y = 0.2, z = 4.038984403697254 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.33740769007928223
                  , g = 0.32972076286111207
                  , b = 0.5099220010654166
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.2827908059556363, y = 0.2, z = 5.062190787702203 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.01407464302323532
                  , g = 0.14813481211272278
                  , b = 0.008082200667238009
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.7108571169257365, y = 0.2, z = 6.632730129347181 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.08213107437774538
                  , g = 0.5121913523359836
                  , b = 0.575036567866576
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.9149721713445924, y = 0.2, z = 7.001112439377856 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -2.360153549341091, y = 0.2, z = 8.235236844630514 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.029783413899183774
                  , g = 0.0009594246437729363
                  , b = 0.031289462203840095
                  }
                }
          }
      , Object.Sphere
          { center = { x = -2.7154048411451686, y = 0.2, z = 9.296847926610178 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.015498299595734205
                  , g = 0.06511571782770205
                  , b = 0.058427994186712885
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -2.6359220917139514, y = 0.2, z = 10.406305387903819 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.16290211247070133
                  , g = 0.40055986861642373
                  , b = 0.02720787885876455
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -1.8645309052510077, y = 0.2, z = -10.811521562296859 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.07344286530488868
                  , g = 0.050881455128700764
                  , b = 0.040053088553975554
                  }
                }
          }
      , Object.Sphere
          { center = { x = -1.940321859600541, y = 0.2, z = -9.66935931401586 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.24400946657752443
                  , g = 0.41291968971781434
                  , b = 0.1611283131467285
                  }
                }
          }
      , Object.Sphere
          { center = { x = -1.917077135792661, y = 0.2, z = -8.963290824927931 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.905054466132642
                  , g = 0.7267079627165054
                  , b = 0.6868954838671333
                  }
                , fuzz = 0.3718076424989355
                }
          }
      , Object.Sphere
          { center = { x = -1.48973297451833, y = 0.2, z = -7.523102957952506 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3719613299172561
                  , g = 0.23861699574295034
                  , b = 0.3585692734705373
                  }
                }
          }
      , Object.Sphere
          { center = { x = -1.356585138870282, y = 0.2, z = -6.873526276517194 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5325738583143055
                  , g = 0.5753677076637034
                  , b = 0.40330345664892103
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -1.5456643883787105, y = 0.2, z = -5.195763698669141 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17958321710493433
                  , g = 0.3262095878798668
                  , b = 0.4010819906314312
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -1.5745846229977443, y = 0.2, z = -4.6979132099513805 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.7615374339295542
                  , g = 0.5748462799778452
                  , b = 0.6479534847174513
                  }
                , fuzz = 0.3846892264633114
                }
          }
      , Object.Sphere
          { center = { x = -1.559218646509405, y = 0.2, z = -3.32660042553709 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4331469244672066
                  , g = 0.3741698444127649
                  , b = 0.26731238095235127
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -1.5624666382147256, y = 0.2, z = -2.203050312555073 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.053651877790916694
                  , g = 0.01217544639533493
                  , b = 0.03921447450457338
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -1.5464843258502785, y = 0.2, z = -1.3850944482197058 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.08210660253630692
                  , g = 0.11789601453459618
                  , b = 0.07942923259819241
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -1.4252579230211528, y = 0.2, z = -0.10995468633403449 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.18294435856496574
                  , g = 0.1560364442119821
                  , b = 0.11028763739756457
                  }
                }
          }
      , Object.Sphere
          { center = { x = -1.656957037196381, y = 0.2, z = 0.423585735495395 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6528549243012417
                  , g = 0.5852590942371547
                  , b = 0.6154938484622856
                  }
                , fuzz = 0.3304941481547522
                }
          }
      , Object.Sphere
          { center =
            { x = -1.4480508295361587, y = 0.2, z = 1.3363505497464967 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.021258545268286314
                  , g = 0.09118750380873673
                  , b = 0.13359212417356567
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -1.1644640168251863, y = 0.2, z = 2.6711222835644852 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.622036798008457
                  , g = 0.5424764957574227
                  , b = 0.20410848440445278
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -1.3247341525954182, y = 0.2, z = 3.4067432400064357 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.024484891032277755
                  , g = 0.2245911147803557
                  , b = 0.20167605672488334
                  }
                }
          }
      , Object.Sphere
          { center = { x = -1.457912498858763, y = 0.2, z = 4.562361152888779 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.13214588456493823
                  , g = 0.16109202976140186
                  , b = 0.08757180288852996
                  }
                }
          }
      , Object.Sphere
          { center = { x = -1.2430414645766052, y = 0.2, z = 5.77858147372186 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -1.8872843451346208, y = 0.2, z = 6.834939677160808 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.027503326348501583
                  , g = 0.09135572282573684
                  , b = 0.07970335197141369
                  }
                }
          }
      , Object.Sphere
          { center = { x = -1.68369507816503, y = 0.2, z = 7.277177905868847 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5695063941605162
                  , g = 0.7543947319983129
                  , b = 0.766883147933912
                  }
                }
          }
      , Object.Sphere
          { center = { x = -1.2789110086271784, y = 0.2, z = 8.747883318582605 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5451683112066809
                  , g = 0.4571688729268241
                  , b = 0.04290288613624735
                  }
                }
          }
      , Object.Sphere
          { center = { x = -1.801733279147106, y = 0.2, z = 9.331023769677955 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.13250249224253555
                  , g = 0.004036594700646024
                  , b = 0.02038881402539601
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -1.1530767174471193, y = 0.2, z = 10.450572424265502 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.048149182056768505
                  , g = 0.018746575855538714
                  , b = 0.052575087001562854
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.2749728857064355, y = 0.2, z = -10.588587531731015 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.10009236315010957
                  , g = 0.005813004557747429
                  , b = 0.10225965184509356
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.3318448685561345, y = 0.2, z = -9.710017309311592 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3434712710809422
                  , g = 0.6636664974554061
                  , b = 0.4456013779917907
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.6516600313212455, y = 0.2, z = -8.244129456788553 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.7353902565202144
                  , g = 0.771906395360669
                  , b = 0.6686756989708952
                  }
                , fuzz = 0.0965138352785937
                }
          }
      , Object.Sphere
          { center =
            { x = -0.8556196455149766, y = 0.2, z = -7.321786454614188 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19780705437361498
                  , g = 0.49102307500510045
                  , b = 0.3882913475829944
                  }
                }
          }
      , Object.Sphere
          { center = { x = -0.8686336046450883, y = 0.2, z = -6.26084559445203 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.24597740705842489
                  , g = 0.12900796804162018
                  , b = 0.07658044366586955
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.24207017801189912, y = 0.2, z = -5.164945952196514 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2027693603347912
                  , g = 0.835106207871752
                  , b = 0.06260947618147948
                  }
                }
          }
      , Object.Sphere
          { center = { x = -0.64717182141721, y = 0.2, z = -4.813019797063201 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4808767510134599
                  , g = 0.25196219684865384
                  , b = 0.29803756155908184
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.1488159539434275, y = 0.2, z = -3.331453927954044 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.06768197815712373
                  , g = 0.21126286933364413
                  , b = 0.296617675251409
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.4062530414759322, y = 0.2, z = -2.5650734404774633 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5773073449839221
                  , g = 0.8406257198018003
                  , b = 0.9114152881063872
                  }
                , fuzz = 0.32292380125472564
                }
          }
      , Object.Sphere
          { center =
            { x = -0.392951379043878, y = 0.2, z = -1.2339287003245447 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2802680146536279
                  , g = 0.3488267970082803
                  , b = 0.2363503437014814
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.4869842558009648, y = 0.2, z = -0.8225461388793873 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.41312782771897266
                  , g = 0.3550347291352385
                  , b = 0.17738264617207258
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.17718583654016296, y = 0.2, z = 0.4911865296963784 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.04839635957890373
                  , g = 0.057487140634880446
                  , b = 0.0744098820475467
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.21358611219205037, y = 0.2, z = 1.1300474443998854 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5978734989523073
                  , g = 0.9177390312188181
                  , b = 0.9910789840717805
                  }
                , fuzz = 0.40185102742434287
                }
          }
      , Object.Sphere
          { center =
            { x = -0.24092357947566456, y = 0.2, z = 2.7976850455244717 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2942872227020959
                  , g = 0.16424521911831969
                  , b = 0.5288098536559896
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.41883135806047744, y = 0.2, z = 3.2609274168727893 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09674504156159301
                  , g = 0.017040069909596976
                  , b = 0.10485615723279136
                  }
                }
          }
      , Object.Sphere
          { center = { x = -0.7442435997635914, y = 0.2, z = 4.019135747383342 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.049534638018845355
                  , g = 0.03439441559149428
                  , b = 0.05186479231856197
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.8167048336647559, y = 0.2, z = 5.0874992040407365 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.038755633667244105
                  , g = 0.07066582447758848
                  , b = 0.03190516727855436
                  }
                }
          }
      , Object.Sphere
          { center = { x = -0.5471307086744206, y = 0.2, z = 6.126049799974068 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -0.8960722734669485, y = 0.2, z = 7.319208354919948 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.20197961959135893
                  , g = 0.036785174351675096
                  , b = 0.0013767541814630148
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.34551228382931154, y = 0.2, z = 8.126436867286854 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3618863613421823
                  , g = 0.8382364322402368
                  , b = 0.6874228589758739
                  }
                }
          }
      , Object.Sphere
          { center = { x = -0.2578196906062513, y = 0.2, z = 9.610661073737173 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5500734297954359
                  , g = 0.37306094204916795
                  , b = 0.10537069128125989
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = -0.5409995053497259, y = 0.2, z = 10.728040981690318 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.735303173601002
                  , g = 0.450637087268467
                  , b = 0.7649523883154927
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.695149501913062, y = 0.2, z = -10.670125460005965 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9071585862680922
                  , g = 0.7593742729349575
                  , b = 0.7224187729856548
                  }
                , fuzz = 0.45440608729681053
                }
          }
      , Object.Sphere
          { center = { x = 0.6917152335692638, y = 0.2, z = -9.368311027024095 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.48422112030920106
                  , g = 0.2745262587783327
                  , b = 0.14325567048246476
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.2932277733320901, y = 0.2, z = -8.24800759582011 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.22383046771821274
                  , g = 0.04004196326238859
                  , b = 0.15494345720115993
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.5436522483811105, y = 0.2, z = -7.972776047695822 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09920186804970284
                  , g = 0.20022775951619964
                  , b = 0.1236015260038306
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.1677566103996691, y = 0.2, z = -6.428308800356207 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1750263267618765
                  , g = 0.11877268955548614
                  , b = 0.08696555863518785
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 0.35157888107817653, y = 0.2, z = -5.465715418662881 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9615571160410848
                  , g = 0.7939650419908691
                  , b = 0.8583389554369657
                  }
                , fuzz = 0.2837448527955856
                }
          }
      , Object.Sphere
          { center = { x = 0.7077155168062002, y = 0.2, z = -4.631862165091096 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6247516536851214
                  , g = 0.035320251095563575
                  , b = 0.4659260067865793
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 0.47030669566564265, y = 0.2, z = -3.138934759500019 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5814955030268094
                  , g = 0.20598730492924658
                  , b = 0.18790977353451174
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 0.3951153325303017, y = 0.2, z = -2.2569415266442605 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.23216113588682677
                  , g = 0.5603831289482888
                  , b = 0.1422373512175247
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 0.28283100674288564, y = 0.2, z = -1.104805367486242 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0035391744131964982
                  , g = 0.09187621476645266
                  , b = 0.25217115538585844
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 0.7090835103678381, y = 0.2, z = -0.5689569617390624 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.16558520944133973
                  , g = 0.07808079497252216
                  , b = 0.008259023158683475
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.7234338715306772, y = 0.2, z = 0.624478937159427 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3138249110243357
                  , g = 0.4838631816180696
                  , b = 0.42949441076262473
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.24575088116136354, y = 0.2, z = 1.125139268862884 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1297555508277574
                  , g = 0.3562269692747005
                  , b = 0.7093950466576142
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.31973010240451816, y = 0.2, z = 2.517028236296225 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.11390356234702695
                  , g = 0.36928681991106016
                  , b = 0.18156518010588588
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.6646463090595697, y = 0.2, z = 3.307514667725365 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 0.6205815123517688, y = 0.2, z = 4.479308921532671 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.10726403903878107
                  , g = 0.34562099190212336
                  , b = 0.08576019000562539
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.4199573524057962, y = 0.2, z = 5.786775036645178 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9617176933027013
                  , g = 0.8996109311961554
                  , b = 0.9247216709289869
                  }
                , fuzz = 0.21655638480382
                }
          }
      , Object.Sphere
          { center = { x = 0.6342154841422907, y = 0.2, z = 6.865395642878033 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5509601026070492
                  , g = 0.08371449480730064
                  , b = 0.916511272805615
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.14377735689467008, y = 0.2, z = 7.631875314421661 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.20183611471273086
                  , g = 0.736401259907898
                  , b = 0.7596825818089228
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.17493531581744776, y = 0.2, z = 8.443917856730565 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1340724525275303
                  , g = 0.12096365341434492
                  , b = 0.2767602883679983
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.291346014843087, y = 0.2, z = 9.160964743074448 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17892315497462907
                  , g = 0.13070255520386512
                  , b = 0.23298387742814927
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.5158058180511703, y = 0.2, z = 10.793371961050353 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19224783481655794
                  , g = 0.23993837851147082
                  , b = 0.1623607041470806
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 1.2608377473839674, y = 0.2, z = -10.946908386979391 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.038447250779447634
                  , g = 0.3336115716098722
                  , b = 0.17591160997785688
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.4980931900943364, y = 0.2, z = -9.329448589640556 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.37391822477358094
                  , g = 0.25930477206403907
                  , b = 0.107466602730648
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.8921040669649893, y = 0.2, z = -8.725902579123106 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.05607034216243007
                  , g = 0.42684639175716077
                  , b = 0.45734948205521053
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.134730124102328, y = 0.2, z = -7.817261999924368 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.30769999187954394
                  , g = 0.13734738401109173
                  , b = 0.006654202079328727
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.898634503075579, y = 0.2, z = -6.475539666265074 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0529303145979268
                  , g = 0.25626640554881375
                  , b = 0.2817033502349826
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.648166811241882, y = 0.2, z = -5.172692885975722 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5545064629062363
                  , g = 0.5203642487216438
                  , b = 0.3799349283140544
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.8878185076215903, y = 0.2, z = -4.902938731067472 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.13021067956182172
                  , g = 0.11546852060965317
                  , b = 0.11928820157294871
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 1.4266467287080413, y = 0.2, z = -3.1512191364366493 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.06927663998869499
                  , g = 0.09437344867085068
                  , b = 0.06819155028842923
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 1.7182471003572224, y = 0.2, z = -2.7365662652537663 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.25976622931176285
                  , g = 0.0056027904887014915
                  , b = 0.2634701857424097
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 1.3082667577617033, y = 0.2, z = -1.2017509170366272 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2103622609265273
                  , g = 0.005264407419526499
                  , b = 0.36552656507825837
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 1.8656564838060135, y = 0.2, z = -0.42963141795997783 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.021859684073761473
                  , g = 0.1378275552073526
                  , b = 0.00777067641833635
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.03468978108064, y = 0.2, z = 0.8399667295710743 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.12750548782878923
                  , g = 0.35881606415278205
                  , b = 0.3601714774015529
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.817176027559136, y = 0.2, z = 1.0670597091398308 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6181580753984662
                  , g = 0.7805489030953329
                  , b = 0.6297366333353452
                  }
                , fuzz = 0.22033878439130317
                }
          }
      , Object.Sphere
          { center = { x = 1.8248576101120202, y = 0.2, z = 2.3842164239794714 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.013432419562236878
                  , g = 0.04720506355642533
                  , b = 0.04667225342383604
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.1691503523759286, y = 0.2, z = 3.013091665333826 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.491631775485815
                  , g = 0.1818500454821734
                  , b = 0.27566213801725753
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.2781926724677009, y = 0.2, z = 4.1010559339058075 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.11537078910038742
                  , g = 0.04638518656814135
                  , b = 0.38824623436588057
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.7613611886681644, y = 0.2, z = 5.515474742223395 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2423908357798005
                  , g = 0.3683781564755527
                  , b = 0.1868261476313764
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.3585983326637563, y = 0.2, z = 6.067583477347236 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.041417927026885064
                  , g = 0.08218390060042134
                  , b = 0.00047904018572535065
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.0918698637546458, y = 0.2, z = 7.576762662380374 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 1.1654900250454068, y = 0.2, z = 8.750403456301706 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.43069978289247945
                  , g = 0.21997599994139164
                  , b = 0.3989784584193094
                  }
                }
          }
      , Object.Sphere
          { center = { x = 1.781598752991622, y = 0.2, z = 9.195349813296714 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5687923210894891
                  , g = 0.5300296928977152
                  , b = 0.8035293903116729
                  }
                , fuzz = 0.3419789507733455
                }
          }
      , Object.Sphere
          { center = { x = 1.1443585568328338, y = 0.2, z = 10.401264566912728 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.45525842424454294
                  , g = 0.30747446020800456
                  , b = 0.04121360421006496
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.741014679568707, y = 0.2, z = -10.150618804654483 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.00784935346810722
                  , g = 0.010735131539767
                  , b = 0.0025607323831886475
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.6239720765529944, y = 0.2, z = -9.534496683638258 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3494682100534517
                  , g = 0.47260573986152377
                  , b = 0.06869788774142621
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.1324721423436275, y = 0.2, z = -8.247031043346254 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center =
            { x = 2.8103584824453014, y = 0.2, z = -7.1171522479813785 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1523066157967258
                  , g = 0.012860280853962035
                  , b = 0.01488986102869451
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.687492854112083, y = 0.2, z = -6.750077737822137 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.011915704697775548
                  , g = 0.2318316816118905
                  , b = 0.19231748204527888
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.826628329911512, y = 0.2, z = -5.482552522524324 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.03163858432520299
                  , g = 0.003409096842868188
                  , b = 0.026664782152091376
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.346736513257635, y = 0.2, z = -4.3070743816206205 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.00045207684733021363
                  , g = 0.0038780798951387418
                  , b = 0.011579677383479037
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.638555876267569, y = 0.2, z = -3.259148900334962 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4376152971012459
                  , g = 0.20384468803244202
                  , b = 0.5324479254777628
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.452451412844744, y = 0.2, z = -2.7425737511366264 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17417277172714815
                  , g = 0.07323191924767476
                  , b = 0.4619812759260293
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.788194172806939, y = 0.2, z = -1.3330993175803578 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.03581802963526614
                  , g = 0.07955538923367869
                  , b = 0.07332945670813575
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 2.0171241045215953, y = 0.2, z = -0.6299352529331861 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 2.87507175616005, y = 0.2, z = 0.6465814973820346 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 2.145301182067431, y = 0.2, z = 1.110633327713122 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.13196389701211972
                  , g = 0.10064540666616409
                  , b = 0.08762602246619805
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.683257914688893, y = 0.2, z = 2.535166336912585 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.30148936506984975
                  , g = 0.04530097409566988
                  , b = 0.009238464235957306
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.7209392799518426, y = 0.2, z = 3.065974897328724 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2549616334402153
                  , g = 0.5527569778277602
                  , b = 0.011823334063840634
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.05804943876707, y = 0.2, z = 4.4268737608845905 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.20658011435245488
                  , g = 0.3199796983653695
                  , b = 0.5170622162123757
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.4214160660069366, y = 0.2, z = 5.139429940031854 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.005830566168802992
                  , g = 0.0015562789371567627
                  , b = 0.012776860722895576
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.430253953978728, y = 0.2, z = 6.53735390997452 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09249477292103461
                  , g = 0.11650119783257874
                  , b = 0.12786651803249557
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.5670394486478396, y = 0.2, z = 7.766328238820742 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.07679620010344816
                  , g = 0.027000110514757286
                  , b = 0.5481720991259719
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.144830206726504, y = 0.2, z = 8.08635134487875 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6256002684925209
                  , g = 0.6477383808986641
                  , b = 0.15997397088643003
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.4717767457518915, y = 0.2, z = 9.476512859221467 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0052300081091441976
                  , g = 0.0036145280562176305
                  , b = 0.004132189300884071
                  }
                }
          }
      , Object.Sphere
          { center = { x = 2.190862656614122, y = 0.2, z = 10.246522873882316 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8207209088622407
                  , g = 0.22528704185229217
                  , b = 0.02283018176647828
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.384794960508153, y = 0.2, z = -10.312837160713071 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.21116711596918636
                  , g = 0.3026139996310071
                  , b = 0.0753124889902009
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.3862675606081245, y = 0.2, z = -9.42208972550373 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2027626866277059
                  , g = 0.0021966985445452773
                  , b = 0.1276673439799744
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.662385385533023, y = 0.2, z = -8.440769628309132 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09553822660354723
                  , g = 0.008598217904766253
                  , b = 0.038980916611863
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.655041207292974, y = 0.2, z = -7.911632962694873 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1370415950564399
                  , g = 0.20055447490093833
                  , b = 0.557777509266387
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 3.6044012056394865, y = 0.2, z = -6.6480629685315975 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.11437835212875634
                  , g = 0.16419845507312802
                  , b = 0.06813307996645729
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.3738949094900716, y = 0.2, z = -5.968020792450096 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.845977506516978
                  , g = 0.7471550121607959
                  , b = 0.9690856279220202
                  }
                , fuzz = 0.2534665676204434
                }
          }
      , Object.Sphere
          { center = { x = 3.4088504506480213, y = 0.2, z = -4.119468310094603 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.013171815349430991
                  , g = 0.031991782564795596
                  , b = 0.03626517087308601
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 3.0205202911728377, y = 0.2, z = -3.6443089001343636 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.08813847992400181
                  , g = 0.035240750360952505
                  , b = 0.021332767591442314
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.7811023768040117, y = 0.2, z = -2.759997664424303 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.44926250655727307
                  , g = 0.29702322005250964
                  , b = 0.2092734945348887
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 3.5239596855532263, y = 0.2, z = -1.1099914236719433 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6051558993072687
                  , g = 0.36021358484675703
                  , b = 0.7052467304688215
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.097398990381077, y = 0.2, z = -0.5273915952933963 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6742733798920414
                  , g = 0.1307601697969763
                  , b = 0.6310692705417644
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 3.0231296193926984, y = 0.2, z = 0.022327273444120332 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2969949674931622
                  , g = 0.34721881765381507
                  , b = 0.12109860420692405
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.465722034260811, y = 0.2, z = 1.1586372893377117 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5024350335400762
                  , g = 0.266030075832412
                  , b = 0.4694793167562645
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.0806135725547703, y = 0.2, z = 2.1315372843124885 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.10173911468324612
                  , g = 0.0987015427409323
                  , b = 0.19226686319609118
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.668365898123871, y = 0.2, z = 3.809495660269034 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.338857782432917
                  , g = 0.07824986423637383
                  , b = 0.3524049137487161
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.245259785518132, y = 0.2, z = 4.383322615800914 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8203233059379281
                  , g = 0.3357455419029246
                  , b = 0.4701686411994603
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.656284683685303, y = 0.2, z = 5.593985455186945 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.05666096476073057
                  , g = 0.15790273745435005
                  , b = 0.11151473968937206
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.780431212759995, y = 0.2, z = 6.369871047304181 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6188548093666072
                  , g = 0.6345029023090877
                  , b = 0.094249872016009
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.4152629403216563, y = 0.2, z = 7.822706129817996 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9160945893387733
                  , g = 0.5078936770845288
                  , b = 0.8412723944931734
                  }
                , fuzz = 0.3307952822663487
                }
          }
      , Object.Sphere
          { center = { x = 3.5558996332657857, y = 0.2, z = 8.155442746308061 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 3.318152810850223, y = 0.2, z = 9.511837721051522 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.18641394542924947
                  , g = 0.2273960661122984
                  , b = 0.15804008223968033
                  }
                }
          }
      , Object.Sphere
          { center = { x = 3.0649230023304246, y = 0.2, z = 10.045425634570135 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.020713540816807638
                  , g = 0.8474969863689835
                  , b = 0.7113997224726823
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.547175774218473, y = 0.2, z = -10.936561521908303 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1344117944592041
                  , g = 0.07198715129208792
                  , b = 0.04784143978121588
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.871849059080153, y = 0.2, z = -9.517930148010851 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.008409600192789898
                  , g = 0.1908167755712748
                  , b = 0.18805220156724411
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.591354483260229, y = 0.2, z = -8.221942943145413 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.020749410748277373
                  , g = 0.06993685685080678
                  , b = 0.024408603616338845
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.0263679690427985, y = 0.2, z = -7.710790019774578 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.03183442135275727
                  , g = 0.15175181038730565
                  , b = 0.013260336306429081
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.578317806224222, y = 0.2, z = -6.5698878151627 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.24084488127500123
                  , g = 0.1346571988346826
                  , b = 0.5352195051099858
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.080061658552027, y = 0.2, z = -5.4145628855119385 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.15146074696868633
                  , g = 0.3253421244245214
                  , b = 0.08255364047459014
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.612991937433665, y = 0.2, z = -4.9144113735108 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.48489562352263943
                  , g = 0.21655861467463783
                  , b = 0.180056557850185
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.239992696867907, y = 0.2, z = -3.562299412457325 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.39121077626347645
                  , g = 0.07291665822555315
                  , b = 0.12796837955278237
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.858694060459372, y = 0.2, z = -2.641017029927817 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4308440941580463
                  , g = 0.19222011107168813
                  , b = 0.5474909906721834
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.191175556143525, y = 0.2, z = -1.5788028627266466 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2815723936783283
                  , g = 0.4555282272910033
                  , b = 0.7161664529445301
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.184821209259589, y = 0.2, z = -0.9932180518633316 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.42616289668047924
                  , g = 0.5078995958402344
                  , b = 0.4813224330851536
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.035131191045146, y = 0.2, z = 1.8465144294530726 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.31351527783374067
                  , g = 0.23461781627468653
                  , b = 0.3898166010077963
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.7967147399855286, y = 0.2, z = 2.877874377299668 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.24335279418806216
                  , g = 0.1416463223996049
                  , b = 0.28112144190612853
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.84266857191265, y = 0.2, z = 3.3892596803828443 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.7284523979161353
                  , g = 0.9679465870031028
                  , b = 0.9793970804006792
                  }
                , fuzz = 0.3540674919275001
                }
          }
      , Object.Sphere
          { center = { x = 4.7314230519827145, y = 0.2, z = 4.58348184106944 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.34601435499710415
                  , g = 0.3800331511697687
                  , b = 0.05056634690047438
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.475718584164738, y = 0.2, z = 5.645233430346993 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0422419842436067
                  , g = 0.18943275478917965
                  , b = 0.1360172895065156
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.2193180621502915, y = 0.2, z = 6.5144309117061185 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09629438032973586
                  , g = 0.06557551980215022
                  , b = 0.105226208503104
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.729276260470264, y = 0.2, z = 7.496414043538163 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6291113022431045
                  , g = 0.59560957418265
                  , b = 0.7845239404769596
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.335377966813519, y = 0.2, z = 8.4586083868773 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9542059142344742
                  , g = 0.5605562732468002
                  , b = 0.6750770242356203
                  }
                , fuzz = 0.19608249259458754
                }
          }
      , Object.Sphere
          { center = { x = 4.3515567569864695, y = 0.2, z = 9.82097691472315 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2088971933430256
                  , g = 0.17918678520897463
                  , b = 0.051894922390122625
                  }
                }
          }
      , Object.Sphere
          { center = { x = 4.645534965222362, y = 0.2, z = 10.351041826228728 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6010461087284246
                  , g = 0.3774181240234975
                  , b = 0.5949611181705635
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.568102844647108, y = 0.2, z = -10.885487643154189 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.20696492988642898
                  , g = 0.5494961288328742
                  , b = 0.43435619903786526
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.342821363879817, y = 0.2, z = -9.645732002076816 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.12378008414730299
                  , g = 0.20213798110595266
                  , b = 0.12832768496346456
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.330055003192324, y = 0.2, z = -8.789215317421887 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5663566732746216
                  , g = 0.5344291700234499
                  , b = 0.0678653973980731
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.531221916274731, y = 0.2, z = -7.401371652409972 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0904230230656201
                  , g = 0.08164346228499487
                  , b = 0.055533531334176704
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.31670414273901, y = 0.2, z = -6.493082829962297 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.011504336819713525
                  , g = 0.013513781364439398
                  , b = 0.00016317899907187762
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.236105680340715, y = 0.2, z = -5.497913437585928 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.39452369368625834
                  , g = 0.33589095389045925
                  , b = 0.8039214321399483
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.086583087824718, y = 0.2, z = -4.522077521948622 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19917820053387122
                  , g = 0.31466136235173303
                  , b = 0.22892926794797908
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.038859806604945, y = 0.2, z = -3.951574305351574 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6125522343486489
                  , g = 0.2586642479771899
                  , b = 0.3644927497148182
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.014221439654861, y = 0.2, z = -2.156930382080157 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.45301738689966686
                  , g = 0.3555425676625589
                  , b = 0.4560440970090097
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.488972330754063, y = 0.2, z = -1.9132337238738406 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09834969823630214
                  , g = 0.5293285199086791
                  , b = 0.7301232345537045
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.027398724058331, y = 0.2, z = -0.621397342703004 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.035290022330989296
                  , g = 0.10172024004190892
                  , b = 0.07481131377580072
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.745766675848859, y = 0.2, z = 0.41139285021804944 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.08707018418469124
                  , g = 0.3115273642709912
                  , b = 0.1936445438411341
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.305088043606813, y = 0.2, z = 1.1241406551152906 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.619228822049477
                  , g = 0.7926195863694688
                  , b = 0.19313848280491772
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.450056683793881, y = 0.2, z = 2.471961449547942 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.10007889464868648
                  , g = 0.13975369572283328
                  , b = 0.09604098690403523
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.663804902045586, y = 0.2, z = 3.4017313894006715 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1695086473500877
                  , g = 0.5057444484232566
                  , b = 0.2971521141635661
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.237880000485674, y = 0.2, z = 4.432331535758428 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.6847822030062718
                  , g = 0.689942123046819
                  , b = 0.7371612722186768
                  }
                , fuzz = 0.39913295340324695
                }
          }
      , Object.Sphere
          { center = { x = 5.897285785400491, y = 0.2, z = 5.136550285342683 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5698253908713318
                  , g = 0.45341285875630677
                  , b = 0.15457142044605213
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.295422216587859, y = 0.2, z = 6.645410476048887 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.03992130215343369
                  , g = 0.19302614238852364
                  , b = 0.18520996565607742
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.552546716469324, y = 0.2, z = 7.17183899275458 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6011147689912817
                  , g = 0.37948662198487654
                  , b = 0.49658903984619995
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.4176919798883185, y = 0.2, z = 8.00821377414385 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5786310592213119
                  , g = 0.5813782465892199
                  , b = 0.7715592047449246
                  }
                , fuzz = 0.028608756956131964
                }
          }
      , Object.Sphere
          { center = { x = 5.7233751021326436, y = 0.2, z = 9.405039540008051 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5771452504019341
                  , g = 0.30250151613389903
                  , b = 0.6007299530360947
                  }
                }
          }
      , Object.Sphere
          { center = { x = 5.856781655877498, y = 0.2, z = 10.286477257781534 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.07599803431715325
                  , g = 0.23785018988541126
                  , b = 0.7052569935065256
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.47867801334814, y = 0.2, z = -10.486131556006296 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.004206673732956131
                  , g = 0.12766521800955508
                  , b = 0.1094357108183567
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.566806546615008, y = 0.2, z = -9.936475307900945 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1339782319260941
                  , g = 0.034934096637992414
                  , b = 0.12003509610726158
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.45849345801873, y = 0.2, z = -8.99822743077318 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1819727155637353
                  , g = 0.12047791643150847
                  , b = 0.2105296711010711
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.862255228096649, y = 0.2, z = -7.863697092625474 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.24230776874449608
                  , g = 0.08261527730638107
                  , b = 0.07880639423118231
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.731844794000176, y = 0.2, z = -6.574309448636001 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.48808426075693634
                  , g = 0.4287505924377142
                  , b = 0.4086698408359005
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.121223433600977, y = 0.2, z = -5.942325614702609 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19739606558497155
                  , g = 0.20174287971872434
                  , b = 0.16801299405740622
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.3048608900511764, y = 0.2, z = -4.585919075864417 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.06290192902678855
                  , g = 0.053381118659599464
                  , b = 0.05196105364102434
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.052319054076601, y = 0.2, z = -3.979602591471686 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5531109066786285
                  , g = 0.03146182257929275
                  , b = 0.1585026147562734
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 6.0356140880492415, y = 0.2, z = -2.7512196785522405 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.030967413952820207
                  , g = 0.11259687744228492
                  , b = 0.16755141568474843
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.07237269312491, y = 0.2, z = -1.4538756450811916 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.28014328789802945
                  , g = 0.3895882247070703
                  , b = 0.1919913826588287
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.577666434930191, y = 0.2, z = -0.29612047133135 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.18672547628925226
                  , g = 0.3503190522015853
                  , b = 0.1429526348465704
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.036827983394741, y = 0.2, z = 0.5966135709840139 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 6.1409087447203845, y = 0.2, z = 1.6455607371400236 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9677954969088061
                  , g = 0.7333831681865918
                  , b = 0.578239431005583
                  }
                , fuzz = 0.3593375126123246
                }
          }
      , Object.Sphere
          { center = { x = 6.015253977068214, y = 0.2, z = 2.7194611051903483 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.10040629980753754
                  , g = 0.1572717772271595
                  , b = 0.6018849545497065
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.158947970928382, y = 0.2, z = 3.5965755863975652 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.29245475638783724
                  , g = 0.14286868101554984
                  , b = 0.10368713850767629
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.012906597805196, y = 0.2, z = 4.725724649742901 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6312519960173387
                  , g = 0.22988490712959186
                  , b = 0.10083509512167202
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.647578548483997, y = 0.2, z = 5.892298240826627 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 6.191147347221358, y = 0.2, z = 6.252058641367353 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.04723965926479134
                  , g = 0.3286747704890242
                  , b = 0.1561943035758414
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.474452972209669, y = 0.2, z = 7.0671339558693465 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1547458108823133
                  , g = 0.006548030420524682
                  , b = 0.3168322913519922
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.479347453634377, y = 0.2, z = 8.580861879021255 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0509374395862206
                  , g = 0.014263550016337116
                  , b = 0.04085532239375508
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.636470127097082, y = 0.2, z = 9.315898402311529 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.031912371592439745
                  , g = 0.017285551515481435
                  , b = 0.025651981860123504
                  }
                }
          }
      , Object.Sphere
          { center = { x = 6.748477994812608, y = 0.2, z = 10.145079255162567 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.8414877305774953
                  , g = 0.5027621659810502
                  , b = 0.5925699798007438
                  }
                , fuzz = 0.30501886074972473
                }
          }
      , Object.Sphere
          { center = { x = 7.287637184022539, y = 0.2, z = -10.25951558050267 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.07730346629680271
                  , g = 0.12917584379581573
                  , b = 0.12820757298504387
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.678500337918879, y = 0.2, z = -9.527478923013046 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2095081513361619
                  , g = 0.5010468543212956
                  , b = 0.4305949036830771
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.498619808218041, y = 0.2, z = -8.648149740852187 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.18436159130421342
                  , g = 0.0010471044066322143
                  , b = 0.34067764771293324
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.786900029297257, y = 0.2, z = -7.598356584920271 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9300202233087183
                  , g = 0.9202722056693378
                  , b = 0.8971236803105964
                  }
                , fuzz = 0.31328632564860714
                }
          }
      , Object.Sphere
          { center = { x = 7.3974015848669765, y = 0.2, z = -6.124878334470145 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 7.886001769507357, y = 0.2, z = -5.19264873371456 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center =
            { x = 7.7097412970371035, y = 0.2, z = -4.9019871869749805 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8400663548404513
                  , g = 0.4226375512920745
                  , b = 0.3786190535993505
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.021808581259418, y = 0.2, z = -3.994658437321852 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3654528775288292
                  , g = 0.30208661858384644
                  , b = 0.21302562414797138
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.69923509991252, y = 0.2, z = -2.464708424372644 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 7.615044851028883, y = 0.2, z = -1.4214898163420613 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.21448461541726083
                  , g = 0.08113317489588012
                  , b = 0.21062995286024014
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.439361775898661, y = 0.2, z = -0.9127098496540892 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4653587083109758
                  , g = 0.7077052483700877
                  , b = 0.35608820802620433
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.2458655991439445, y = 0.2, z = 0.8690032123767698 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.34828100508584164
                  , g = 0.24249052052386538
                  , b = 0.27505324543314535
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.16710380794082, y = 0.2, z = 1.2645165327894268 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3405566379258897
                  , g = 0.026891332135834663
                  , b = 0.3732274655297665
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.423466670773386, y = 0.2, z = 2.27362849369598 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6243942008475012
                  , g = 0.41615363635669367
                  , b = 0.17874202846196402
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.67437845484101, y = 0.2, z = 3.335902967240191 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1655224517404049
                  , g = 0.09403284236149957
                  , b = 0.11069239541633115
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.061039797338168, y = 0.2, z = 4.02091282188569 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.03787187946662027
                  , g = 0.0933690590611527
                  , b = 0.21714276083562686
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.101133748617543, y = 0.2, z = 5.475485394746724 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3409316648707073
                  , g = 0.3698029879033795
                  , b = 0.3691947154976101
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.2180858169909765, y = 0.2, z = 6.192042684015342 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.15328740148468098
                  , g = 0.056026262549396494
                  , b = 0.051004784361947185
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.182786389957338, y = 0.2, z = 7.580630138059474 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4422019817845867
                  , g = 0.046557030978620156
                  , b = 0.06094455290041222
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.7247034567140025, y = 0.2, z = 8.257272611499506 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3212170846068817
                  , g = 0.5157477022960474
                  , b = 0.4529133273035784
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.180213027378691, y = 0.2, z = 9.116041330703569 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.032435093059503574
                  , g = 0.020098984312764502
                  , b = 0.003816115462820473
                  }
                }
          }
      , Object.Sphere
          { center = { x = 7.077255301943373, y = 0.2, z = 10.787969972716333 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4360957524716289
                  , g = 0.3498444233677904
                  , b = 0.0005708236620155599
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.678666570063726, y = 0.2, z = -10.171659305450849 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17591824115582036
                  , g = 0.23004675865258367
                  , b = 0.021744478739535986
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.448149614357446, y = 0.2, z = -9.552410277451896 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2258804265397764
                  , g = 0.6120039710903086
                  , b = 0.3558059127361869
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.26953624726747, y = 0.2, z = -8.869587315837947 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.05120781016527747
                  , g = 0.061269898649311115
                  , b = 0.07302946322478146
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.31472950477868, y = 0.2, z = -7.70166365888886 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.13987909718594665
                  , g = 0.04663801903573044
                  , b = 0.10044149032498069
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.14833530671364, y = 0.2, z = -6.265341362570807 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.005036091192191421
                  , g = 0.2359555646914991
                  , b = 0.2251776716848268
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.386082405621321, y = 0.2, z = -5.382614158136433 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19745729921657493
                  , g = 0.07671123956104406
                  , b = 0.3420300132234391
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.05256793100841, y = 0.2, z = -4.1045799448827385 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.14926274520067956
                  , g = 0.28298666934788225
                  , b = 0.3355829973060218
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.402113481586177, y = 0.2, z = -3.232905372933333 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.09234616078619126
                  , g = 0.061806491221608945
                  , b = 0.27222208264140163
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.852073899389813, y = 0.2, z = -2.4066191915800506 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.12645529044292692
                  , g = 0.2242335880040244
                  , b = 0.08762148411631354
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.79145097152355, y = 0.2, z = -1.1673391394322365 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.010811113313983586
                  , g = 0.059402546766696644
                  , b = 0.09474779707181823
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.709114086549917, y = 0.2, z = -0.5169790233384499 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.40945818013976915
                  , g = 0.05213199253545386
                  , b = 0.03345117392100855
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 8.071289491005905, y = 0.2, z = 0.022816926248685344 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.7610567329337923
                  , g = 0.6776222744533724
                  , b = 0.9645532778378744
                  }
                , fuzz = 0.44220409307783204
                }
          }
      , Object.Sphere
          { center = { x = 8.318360412112739, y = 0.2, z = 1.4062755974620735 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.8017247639683364
                  , g = 0.6299734798287491
                  , b = 0.9696282708818195
                  }
                , fuzz = 0.33711744768135976
                }
          }
      , Object.Sphere
          { center = { x = 8.058222266344842, y = 0.2, z = 2.8766620395100206 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.24036962238814036
                  , g = 0.3158144008853117
                  , b = 0.4966533726950971
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.52806862079985, y = 0.2, z = 3.1053101879265967 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1762758600902686
                  , g = 0.5162203295671167
                  , b = 0.439344402121938
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.287775296517054, y = 0.2, z = 4.036559552052255 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.6550000914417966
                  , g = 0.874202729574902
                  , b = 0.4929248986441629
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.323149089520953, y = 0.2, z = 5.303438163320527 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.12905207893799372
                  , g = 0.4779421117661894
                  , b = 0.470208541060817
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.298399086049482, y = 0.2, z = 6.655141411335166 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.522392983560283
                  , g = 0.6971860500398023
                  , b = 0.7116201517967693
                  }
                , fuzz = 0.1413331239105049
                }
          }
      , Object.Sphere
          { center = { x = 8.764079912511344, y = 0.2, z = 7.051767873504685 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17631545479496671
                  , g = 0.44609001097313145
                  , b = 0.055615342711966304
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.01758131713446, y = 0.2, z = 8.685054994448953 }
          , radius = 0.2
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = 8.785670054969673, y = 0.2, z = 9.475815464291836 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5388187214970623
                  , g = 0.4504943580316499
                  , b = 0.6647338993009562
                  }
                }
          }
      , Object.Sphere
          { center = { x = 8.81224251152229, y = 0.2, z = 10.46617257003884 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2608170150295874
                  , g = 0.05431529176263657
                  , b = 0.0453520243061539
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.464783427588245, y = 0.2, z = -10.836730206385933 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.21230593969296763
                  , g = 0.06466653476302987
                  , b = 0.6795727252011318
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.64950891176258, y = 0.2, z = -9.486199375175488 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.8120517144112798
                  , g = 0.7777969545332202
                  , b = 0.7734351219452559
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.896897265019295, y = 0.2, z = -8.807870398268772 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.12365687339673981
                  , g = 0.0942061439129455
                  , b = 0.06347521511327783
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.106285102394834, y = 0.2, z = -7.432136442343682 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.12596524728621902
                  , g = 0.05035401056980517
                  , b = 0.2332948939869549
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.053467801206919, y = 0.2, z = -6.266911755486369 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.48949471923850396
                  , g = 0.10179469815422915
                  , b = 0.4570661860681726
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.659677114975011, y = 0.2, z = -5.961690637099412 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.25756805644910125
                  , g = 0.11676767172365553
                  , b = 0.23919334249834887
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.790794487872336, y = 0.2, z = -4.696079998456379 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.2272015134082529
                  , g = 0.33380309657852625
                  , b = 0.3728833895145067
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.220987033714547, y = 0.2, z = -3.993957280703405 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3016309106867
                  , g = 0.3516093948385095
                  , b = 0.3640163895933959
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.86377343412168, y = 0.2, z = -2.24514594816924 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5879168130211729
                  , g = 0.0952754905890106
                  , b = 0.3321211621918067
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.891369165969662, y = 0.2, z = -1.1782987531864415 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.002922787493176278
                  , g = 0.02012717322420748
                  , b = 0.005854130130726239
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.815189886038128, y = 0.2, z = -0.478689578563413 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19891069342620268
                  , g = 0.1775236190001513
                  , b = 0.23091394395617965
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.774832568995057, y = 0.2, z = 0.48563754983740964 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3075793146444608
                  , g = 0.31116530776290136
                  , b = 0.6610751926359809
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.842867769843384, y = 0.2, z = 1.320202717834744 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.736199371270665
                  , g = 0.5148069960568774
                  , b = 0.9393255869654376
                  }
                , fuzz = 0.4015098602071646
                }
          }
      , Object.Sphere
          { center = { x = 9.591925203975384, y = 0.2, z = 2.030269242949064 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.016925946104662377
                  , g = 0.1810014342592415
                  , b = 0.7982033341870406
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.160650536216291, y = 0.2, z = 3.576304794625984 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1819400250195866
                  , g = 0.2846942696205729
                  , b = 0.015657050771182193
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.669929631884806, y = 0.2, z = 4.764795165583967 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.28696562556106586
                  , g = 0.13728438820494904
                  , b = 0.6387486320515
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.747765375391822, y = 0.2, z = 5.588738879944064 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.025620829854423998
                  , g = 0.2893524575654328
                  , b = 0.19147696671748515
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.136934242568387, y = 0.2, z = 6.17829664099648 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4828239484292379
                  , g = 0.35341937070507107
                  , b = 0.527545032555312
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.054656807550119, y = 0.2, z = 7.788322910380245 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.23005987668022454
                  , g = 0.22088712312173484
                  , b = 0.5336125438816754
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.307357726509604, y = 0.2, z = 8.888330917607869 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.14956220684724092
                  , g = 0.41591645111485015
                  , b = 0.1184615314123784
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.476268387876313, y = 0.2, z = 9.871126265866872 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.18306208066499205
                  , g = 0.06930013253074599
                  , b = 0.12180246914634758
                  }
                }
          }
      , Object.Sphere
          { center = { x = 9.248284701918882, y = 0.2, z = 10.831934769208063 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.02873779203833617
                  , g = 0.03427536565935449
                  , b = 0.01636481542114153
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.85898397775745, y = 0.2, z = -10.690840319611047 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.5439058623197005
                  , g = 0.7570554345027629
                  , b = 0.6369635987262322
                  }
                , fuzz = 0.05102606584633729
                }
          }
      , Object.Sphere
          { center = { x = 10.112074607389175, y = 0.2, z = -9.42384255349498 }
          , radius = 0.2
          , material =
              Material.Metal
                { albedo =
                  { r = 0.9117794940577153
                  , g = 0.9951210225056534
                  , b = 0.9182795451196533
                  }
                , fuzz = 0.46255181343218965
                }
          }
      , Object.Sphere
          { center = { x = 10.657145093056654, y = 0.2, z = -8.126409805498744 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.47217008161726803
                  , g = 0.6167518274865275
                  , b = 0.20537590145453358
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.077819168535926, y = 0.2, z = -7.700163339581547 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.17114386826828168
                  , g = 0.35638110371384263
                  , b = 0.24333449624896758
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.266645217029122, y = 0.2, z = -6.529216149484866 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.19080676034118565
                  , g = 0.48335767559693094
                  , b = 0.44064612568219236
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.569113256235294, y = 0.2, z = -5.125075238390956 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.022800535538268114
                  , g = 0.08682435803891361
                  , b = 0.07368511351245317
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.867443961012981, y = 0.2, z = -4.576767143121111 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0702946018455089
                  , g = 0.10045298846850723
                  , b = 0.06508020782081142
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.09995923320136, y = 0.2, z = -3.2015251835161216 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.14400847271487438
                  , g = 0.13913518932271804
                  , b = 0.23560140745633099
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 10.212668604711588, y = 0.2, z = -2.2739186985193993 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.04443819112902176
                  , g = 0.06283195212784645
                  , b = 0.012280103180842297
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 10.222245224845354, y = 0.2, z = -1.7517585621852327 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.1240656898563166
                  , g = 0.03888702093255796
                  , b = 0.2873694820020754
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.12916582126508, y = 0.2, z = -0.9217311867330934 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.37472486788255116
                  , g = 0.4697082480770967
                  , b = 0.4695076918795469
                  }
                }
          }
      , Object.Sphere
          { center =
            { x = 10.148738666753562, y = 0.2, z = 0.039219874143636015 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.22500511875423249
                  , g = 0.5363636282838077
                  , b = 0.41348561127409994
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.843185376039218, y = 0.2, z = 1.7974525317551366 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.22435778038800025
                  , g = 0.20883887015688374
                  , b = 0.3072512628979603
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.817525894960827, y = 0.2, z = 2.335385200437536 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.06220558434718677
                  , g = 0.12337777970501158
                  , b = 0.1602891581085212
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.479343670000764, y = 0.2, z = 3.8792277772805295 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.5149894062196315
                  , g = 0.039149045923185424
                  , b = 0.2978450758493326
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.00358822311355, y = 0.2, z = 4.070206852408219 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.3163469261396813
                  , g = 0.2763237831473403
                  , b = 0.11682250021215286
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.792146268220298, y = 0.2, z = 5.477141315082971 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.007561420770237955
                  , g = 0.6597907112432525
                  , b = 0.5091965573039766
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.143209118889006, y = 0.2, z = 6.258713843107613 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.632790022902541
                  , g = 0.007220949516329828
                  , b = 0.8508581683024157
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.799644162156273, y = 0.2, z = 7.346910296236099 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.570215514196014
                  , g = 0.3607795753476996
                  , b = 0.7083205693606679
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.512059688828518, y = 0.2, z = 8.70474555516023 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.021954840967632904
                  , g = 0.3272384263140253
                  , b = 0.020226174155652307
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.151998371668922, y = 0.2, z = 9.893117889536903 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.4230144413388708
                  , g = 0.21406138877110628
                  , b = 0.1797044364470903
                  }
                }
          }
      , Object.Sphere
          { center = { x = 10.607560393806345, y = 0.2, z = 10.167020954533154 }
          , radius = 0.2
          , material =
              Material.Lambertian
                { albedo =
                  { r = 0.0004623447664717823
                  , g = 0.009138427663970229
                  , b = 0.010430159680794544
                  }
                }
          }
      , Object.Sphere
          { center = { x = 0.0, y = 1.0, z = 0.0 }
          , radius = 1.0
          , material = Material.Dielectric { ir = 1.5 }
          }
      , Object.Sphere
          { center = { x = -4.0, y = 1.0, z = 0.0 }
          , radius = 1.0
          , material =
              Material.Lambertian { albedo = { r = 0.4, g = 0.2, b = 0.1 } }
          }
      , Object.Sphere
          { center = { x = 4.0, y = 1.0, z = 0.0 }
          , radius = 1.0
          , material =
              Material.Metal
                { albedo = { r = 0.7, g = 0.6, b = 0.5 }, fuzz = 0.0 }
          }
      ]

in  scene

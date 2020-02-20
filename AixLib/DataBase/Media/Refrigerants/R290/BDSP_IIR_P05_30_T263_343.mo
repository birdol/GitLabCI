within AixLib.DataBase.Media.Refrigerants.R290;
record BDSP_IIR_P05_30_T263_343
  "Record with fitting coefficients taken from the Fast_Propane model"

  extends
    AixLib.DataBase.Media.Refrigerants.BubbleDewStatePropertiesBaseDataDefinition(
    name="Coefficients taken from Fast_Propane model developed by Sangi et al.",
    psat_Nt=5,
    psat_N={-6.7722, 1.6938,
            -1.3341, -3.1876,
            0.94937},
    psat_E={1, 1.5,
            2.2, 4.8,
            6.5},
    Tsat_Nt=36,
    Tsat_N={398148862.940126, -199919955.396472,
            -757908233.955288, 367952699.725659,
            667046798.608578, -312549990.204649,
            -357938868.07772, 161410013.061604,
            130510724.837043, -56445981.8598188,
            -34132767.2831829, 14097753.337877,
            6597033.14683305, -2588996.07334184,
            -956016.453555908, 354129.363109993,
            104671.21653575, -36365.4299997343,
            -8551.71765339857, 2737.41277992834,
            548.032269738263, -169.618396241937,
            -14.0609083306686, -0.171965430903563,
            5.1496074119545, -3.2101839991522,
            2.10314346387695, -1.50075370184942,
            1.08909694031671, -0.809987090417357,
            0.624647765942656, -0.509758482228388,
            0.452113517399419, -0.485252422559269,
            0.812915722176255, 0.049784532},
    Tsat_IO={1570581.06473046, 2557900,
             314.714456959068, 89.9988984287752},
    dl_Nt=27,
    dl_N={168.562039493205, 102.498679842295,
          -417.252850518645, -379.369839448631,
          259.875445333347, 360.650888848736,
          -34.286073230572, -167.388526468939,
          -38.3089822429208, 32.2321439731247,
          16.240179568742, -1.02099838936652,
          -2.73648898021723, -1.28146729979824,
          -0.699142505344287, -0.486571806528472,
          -0.362711228684454, -0.295698328266597,
          -0.257687633710071, -0.232292001969948,
          -0.214228995994567, -0.20556940574841,
          -0.209973677149465, -0.241754621811309,
          -0.31988094531161, -0.921191170759037,
          0.0299586382685047},
    dl_IO={303.15, 90,
           479.63605641964, 158.710809951891},
    dv_Nt=30,
    dv_N={24729.5537485333, -4790.47306548912,
          -52999.2668562323, 7058.92241323013,
          52982.2892015502, -2370.58912808463,
          -31858.637385946, -1861.34451993193,
          12491.6995976091, 2253.53926320725,
          -3122.52067135369, -1051.27601610942,
          412.3820502853, 267.637744405501,
          12.9822226129711, -27.0147438072994,
          -10.2971934822874, -0.739113632299647,
          1.49114325185849, 1.35527523720564,
          0.923630488185071, 0.672792235972464,
          0.560751132479985, 0.509690199864535,
          0.490192151807828, 0.495282411314377,
          0.590898303947074, 0.811832008381672,
          0.808375476827012, -0.0754744015174044},
    dv_IO={303.15, 90,
           28.4811865500103, 66.6559013317995},
    hl_Nt=41,
    hl_N={-9294767843.63885, 4601044486.87677,
          20637884091.3137, -9916466348.59996,
          -21359403718.5665, 9947264847.89552,
          13636958532.2276, -6142679157.11019,
          -6000574809.17466, 2607836222.80069,
          1926833832.78873, -805551262.020446,
          -466601813.162386, 187005402.363897,
          86860131.7909424, -33235234.3082519,
          -12561996.4230609, 4567071.19402525,
          1416354.0638898, -486313.365924655,
          -124542.594195178, 40167.0083231862,
          8397.46595050577, -2498.28167363608,
          -462.619336965067, 137.536958919031,
          6.47029425217843, 2.64758244293881,
          -5.32098880051055, 3.46672373461629,
          -2.26302221729487, 1.59069973995372,
          -1.13913175345066, 0.832473481266347,
          -0.610337601733258, 0.487787294421858,
          -0.381084129429948, 0.372237411342447,
          -0.34966667159822, 0.849926390294104,
           0.0361438659731507},
    hl_IO={1570581.06473046, 2557900,
           315624.984387066, 256478.426329608},
    hv_Nt=41,
    hv_N={-18775386313.6055, 9394086287.20505,
          41644196829.4943, -20247895189.1885,
          -43051291028.3205, 20309540510.172,
          27452478313.3802, -12538264110.1784,
          -12063991762.716, 5319760814.06607,
          3868950611.13826, -1641348684.22018,
          -936106557.039505, 380310593.940752,
          174364505.252102, -67425029.5319391,
          -25335355.2373842, 9258056.41821587,
          2898773.57918601, -997509.402878578,
          -263711.217390457, 88279.4166642683,
          18539.6674822496, -7265.37195240485,
          -791.349145978091, 783.380077339674,
          -118.386708715477, -87.4509889200359,
          28.7466309562791, 22.7165909170454,
          -12.9134840899498, 0.37918804346481,
          -1.09461342269619, 2.21831905224981,
          -1.37432108544607, 0.840516589045987,
          -0.879264408088915, 0.602870738214699,
          -0.988765189667206, 0.73697777870168,
           0.0980593948500622},
    hv_IO={1570581.06473046, 2557900,
           611770.95439052, 72569.9367503185},
    sl_Nt=41,
    sl_N={-15349607814.6221, 7636274154.59154,
          34083168950.6415, -16468859514.8044,
          -35274256182.5208, 16529163595.4961,
          22520438414.7263, -10212384678.3319,
          -9909434496.20396, 4337708567.68782,
          3182094478.82347, -1340537038.4187,
          -770642130.02999, 311344581.740643,
          143483390.503767, -55358907.3112437,
          -20756825.7164981, 7610600.46375838,
          2341379.49521742, -810782.536880512,
          -205991.835180489, 66975.5024566354,
          13911.5167143464, -4172.85884728481,
          -763.056131634308, 226.059931948838,
          12.7752539636391, 3.11268958206643,
          -7.85167676769299, 5.00328992083909,
          -3.24391515196012, 2.26101216009097,
          -1.60045805379047, 1.15217954418816,
          -0.838779616598381, 0.651059130787342,
          -0.506702271997059, 0.465184273228716,
          -0.435627195532008, 0.805470640142587,
          0.0457609974234471},
    sl_IO={1570581.06473046, 2557900,
           1376.30588505819, 826.068105213303},
    sv_Nt=41,
    sv_N={77490431827.9399, -38415276654.6987,
          -172242854661.379, 82962121367.1925,
          178399484846.286, -83356734431.6106,
          -113970547248.801, 51553752249.9676,
          50177422017.5857, -21921194748.1992,
          -16120343329.1663, 6783508534.79747,
          3904793200.14042, -1578181058.50373,
          -726577962.8212, 281202937.346275,
          104799948.851401, -38715062.2946953,
          -11716161.8016396, 4105031.67420979,
          1007213.05553646, -326165.883627773,
          -65541.5043152719, 16329.6212516804,
          3852.60757433586, 91.0319174951408,
          -343.494332982509, -224.377993905924,
          107.45943824896, 24.4635507698644,
          -8.50688453256311, -13.0500554559933,
          6.58097770859788, -1.42438707828771,
          1.58146106221061, -1.50959232991508,
          0.66941156982168, -0.759627313555789,
          -0.113920392204933, -0.624499077638527,
          -0.00619048868799449},
    sv_IO={1570581.06473046, 2557900,
           2335.75170536325, 97.9077112667096});
  annotation (Documentation(revisions="<html>
<ul>
  <li>
  June 10, 2017, by Mirko Engelpracht, Christian Vering:<br/>
  First implementation
  (see <a href=\"https://github.com/RWTH-EBC/AixLib/issues/408\">issue 408</a>).
  </li>
</ul>
</html>", info="<html>
<p>
In this record, fitting coefficients are provided for thermodynamic properties
at bubble and dew line. For detailed information of these thermodynamic
properties as well as the fitting coefficients, please checkout
<a href=\"modelica://AixLib.DataBase.Media.Refrigerants.BubbleDewStatePropertiesBaseDataDefinition\">
AixLib.DataBase.Media.Refrigerants.BubbleDewStatePropertiesBaseDataDefinition
</a>.
The fitting coefficients are used in a hybrid refrigerant model provided in
<a href=\"modelica://AixLib.Media.Refrigerants\">AixLib.Media.Refrigerants</a>.
For detailed information, please checkout
<a href=\"modelica://AixLib.Media.Refrigerants.Interfaces.TemplateHybridTwoPhaseMediumRecord\">
AixLib.Media.Refrigerants.Interfaces.TemplateHybridTwoPhaseMediumRecord</a>.
</p>
<h4>Assumptions and limitations</h4>
<p>
The provided coefficients are fitted to external data by Sangi et al. and
are valid within the following range:<br />
</p>
<table summary=\"Range of validiry\" cellspacing=\"0\" cellpadding=\"2\"
border=\"1\" width=\"30%\" style=\"border-collapse:collapse;\">
<tr>
  <td><p>Parameter</p></td>
  <td><p>Minimum Value</p></td>
  <td><p>Maximum Value</p></td>
</tr>
<tr>
  <td><p>Pressure (p) in bar</p></td>
  <td><p>0.5</p></td>
  <td><p>30</p></td>
</tr>
<tr>
  <td><p>Temperature (T) in K</p></td>
  <td><p>263.15</p></td>
  <td><p>343.15</p></td>
</tr>
</table>
<p>
The reference point is defined as 200 kJ/kg and 1 kJ/kg/K, respectively, for
enthalpy and entropy for the saturated liquid at 273.15 K.
</p>
<h4>References</h4>
<p>
Sangi, Roozbeh; Jahangiri, Pooyan; Klasing, Freerk; Streblow, Rita;
M&uuml;ller, Dirk (2014): <a href=\"http://dx.doi.org/10.3384/ecp14096\">A
Medium Model for the Refrigerant Propane for Fast and Accurate Dynamic
Simulations</a>. In: <i>The 10th International Modelica Conference</i>. Lund,
Sweden, March 10-12, 2014: Link&ouml;ping University Electronic Press
(Link&ouml;ping Electronic Conference Proceedings), S. 1271&ndash;1275
</p>
</html>"));
end BDSP_IIR_P05_30_T263_343;

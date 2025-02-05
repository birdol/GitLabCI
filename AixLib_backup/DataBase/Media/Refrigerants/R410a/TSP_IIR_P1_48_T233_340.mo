within AixLib.DataBase.Media.Refrigerants.R410a;
record TSP_IIR_P1_48_T233_340
  "Record with fitting coefficients calculated for first implementation"

  extends AixLib.DataBase.Media.Refrigerants.ThermodynamicStatePropertiesBaseDataDefinition(
    name="Coefficients taken from Engelpracht",
    T_phNt={4, 10,
            45, 5,
            10, 51},
    Tl_phA={0.0784539758046494, -0.0139499454480583,
            0.0014409474800833, -0.00847904392329953},
    Tl_phB={53.34763090261, -5.88862734169674,
            -2.04065167066883, -0.431165279279122,
            0.176294552751571, -0.370648789311289,
            -0.872911774900146, -0.297748052935782,
            0.171784244137346, 0.0864117831531705},
    Tl_phC={-0.0754087777872457, -0.113732590174603,
            0.0174851132885221, 0.348152824991852,
            -0.0060899049206074, 0.0279225582194194,
            0.793238216844397, -0.180427599342632,
            0.0913740201046021, -0.0201076646974901,
            0.328350703575568, -0.269409245572516,
            0.0811142564076022, -0.0586819391563395,
            -0.070776597639706, -0.0997281511935187,
            -0.00805504114050181, -0.0302212183613812,
            0.304572997097524, -0.015533863828046,
            -0.0236752632712486, 0.0433631502561081,
            0.669171917292208, -0.0638071155038644,
            0.0123678914525845, 0.0337585408958696,
            0.786295970183816, -0.0457611197544299,
            0.011937105968086, -0.00956248998345363},
    Tl_phD={287.021664392518},
    Tv_phA={18.9181570336269, -1.4460957111986,
            0.128879370267952, -0.0378180176318431,
            0.00571427728154803},
    Tv_phB={48.7849078146379, 1.59922925673916,
            -1.30007177175693, 0.373024232467583,
            -0.0468655416614089, 0.0305368941798241,
            -0.0318835866306795, 0.0140533923437734,
            -0.0040237368844822, 0.000664861068806102},
    Tv_phC={0.000468436089337861, -0.00398289557684647,
            -0.00632335505692255, 0.0457897081241502,
            0.0447110011535857, -0.0272344003138221,
            -0.133688844832315, -0.0432943953851347,
            0.114342018012712, -0.0273374878631007,
            0.055161676993571, -0.121948064385487,
            -0.0987734536871835, 0.0992382178078569,
            -0.0111860675691328, 0.228460205670602,
            0.0584811624438732, -0.0574573938569313,
            -0.091975243010589, 0.0295616887105625,
            -0.680869863314376, 0.50926697462963,
            -0.0638816419306195, 0.0306063416218453,
            -0.0281126961811652, 2.70679496102607,
            -1.04932002479848, 0.328793925176839,
            -0.104611635551803, 0.0291925169706824,
            -8.72511614453892, 1.4613603371237,
            -0.303189728394237, 0.127239121598212,
            -0.0253808809174481},
    Tv_phD={355.510911331556},
    T_phIO={3386089.75740898,1327435.5559674,
             2.225030101956707e+05-1100, 8.333408900667726e+04,
             0, 1,
             1828440.07440206, 1651068.26737977,
             4.912932696824134e+05-1300, 52280.2024068182,
             0, 1},
    T_psNt={4, 10,
            45, 5,
            10, 51},
    Tl_psA={1.02968381585158, 0.275193128445195,
            0.043941556562575, 0.00203028958902996},
    Tl_psB={39.25784184622, -0.538203800364751,
            -1.35891209361109, -0.37547776638412,
            0.103684161622761, -0.0674005888547959,
            -0.287988292846959, -0.115330088394623,
            0.0316726651980843, 0.0176359573966827},
    Tl_psC={-0.0164121223780564, -0.021049391159093,
            0.00964207302480855, 0.160836146227042,
            0.00446666151932734, 0.000448400580450467,
            0.407078466782749, -0.136779662319749,
            0.0237831303795189, -0.00184914832370402,
            0.232664909912497, -0.331019995172275,
            0.113054265723455, -0.0155224543284392,
            -0.0570300608606503, -0.226383454966623,
            0.202926583202097, -0.0489805912413537,
            0.118289457566212, 0.0619867405719159,
            0.156042986921594, -0.0744032871840306,
            0.444334054359482, 0.159824750585592,
            0.0432588380531332, -0.0560518828539283,
            0.712211978720827, 0.181304075574015,
            0.0174579733698449, -0.0169796856907351},
    Tl_psD={285.694699667815},
    Tv_psA={53.4524886207332, 3.46209163015464,
            0.444680383304694, 0.0553158085523391,
            -0.0022349731521148},
    Tv_psB={63.6083149561675, 5.49531435397497,
            -1.01356267291782, 0.222438139282022,
            -0.0146570062631716, 0.0246783900765901,
            -0.0147428202029603, 0.00448954787158712,
            -0.00741437901373733, 0.00310380139642257},
    Tv_psC={0.0194055969657806, -0.0495407606347934,
            0.0444292560081583, 0.0182958707394186,
            -0.108929463221465, 0.0515888927719554,
            0.00783052006384202, 0.026192048061914,
            -0.124013449981662, 0.0317260816164067,
            0.0244430826926872, 0.0578445265137205,
            0.0286564869346609, -0.0757790985121584,
            0.0102448430800938, -0.0135671197103399,
            0.021117616150203, 0.0836942132317105,
            0.0165057054764454, -0.0321874526720959,
            0.023140444373838, -0.0746327014360172,
            -0.0451392647684845, 0.0413756294930583,
            0.0266983160352966, 0.377843086012363,
            0.301141558843086, 0.0245140368245663,
            -0.00918454208336028, -0.00255059969916032,
            1.34811712218406, -0.992980687409664,
            -0.0925350619257881, 0.00577747037367436,
            0.00482444147971987},
    Tv_psD={353.111903524476},
    T_psIO={14.8682464548966,0.572967793317542,
            1.133256902616489e+03-71, 214.725037980704,
            0, 1,
            13.9079664294572, 1.05962819040279,
            2.089844878394273e+03-70.6, 177.775161517312,
            0, 1},
    d_pTNt={4, 10,
            45, 12,
            4, 55},
    dl_pTA={7.87960605987028, -0.257941704085539,
            0.0359536256629997, 0.00468405676173685},
    dl_pTB={-133.244855967764, -23.0011865132665,
            2.65009519098121, 7.41012261893865,
            -18.6737509725287, -13.42480950003,
            11.9194637097639, 7.18763169338531,
            -3.14754559007914, -1.72623019772007},
    dl_pTC={1.34539694151813, 3.89985990853728,
            -0.477663643528785, -1.01963032819307,
            -1.58757914444201, 0.0535260150930145,
            -9.82580093531666, -0.688688832277525,
            0.238676850832625, -0.0128186939933804,
            -1.63106702729664, 1.9888439943296,
            0.340643562102322, -0.00246289257004601,
            10.360113896152, 1.02660482095755,
            0.0543199338072468, 0.0558666269760638,
            5.26843887978288, -1.40297227072936,
            -0.221168110890005, 0.00360942200618328,
            0.881530520864514, -0.930022610155721,
            -0.0481483280978479, -0.0835073418715788,
            4.79216519948661, -0.284394146008372,
            0.10599088619427, -0.0311912243742686},
    dl_pTD={1128.29342170365},
    dv_pTA={67.6100707083323, 18.8214831219552,
            7.88742448104687, 4.84880513849624,
            5.26283636517838, 3.02091398421476,
            -0.704366042615507, -0.760435798997538,
            0.914800113049461, 0.963585468711737,
            0.274216301297376, 0.017261709321129},
    dv_pTB={-16.9606407389203, 6.77158339360549,
            -4.11016853249533, 1.38727891703213},
    dv_pTC={-0.248878323514509, -2.3845382310834,
            1.21239256484831, -6.84683212512403,
            7.907146451594, -2.26093972663603,
            -6.02383816032881, 17.9959884739015,
            -11.6557332748761, 1.34734913070178,
            2.4805263727, 13.3565194267492,
            -20.3703200914964, 6.43947650667893,
            1.07942630583476, -4.46379459562203,
            -10.5583543972069, 9.30964627311458,
            -14.4835385246543, 2.4057682137968,
            3.91570074600322, 0.929959359240351,
            -24.1103495016718, 31.8063400583554,
            -5.10339352652816, -5.7446593077267,
            -23.8187899707303, 40.208541359721,
            -23.4724075893299, 2.33153900957907,
            -24.2592217972724, 28.8800649919003,
            -25.5769665769935, 9.19536897161365,
            -26.4413770963882, 17.8897180948262,
            -14.6913315929263, 5.73661907561273},
    dv_pTD={84.139999758958},
    d_pTIO={3230978.96987517,1215430.51013093,
            286.37703960126, 30.2813023973015,
            0, 1,
            2450527.84438656, 1412272.92887283,
            335.125102884223, 26.6939958044661,
            0, 1});
   annotation (Documentation(revisions="<html>
<ul>
  <li>
  June 14, 2017, by Mirko Engelpracht, Christian Vering:<br/>
  First implementation
  (see <a href=\"https://github.com/RWTH-EBC/AixLib/issues/408\">issue 408</a>).
  </li>
</ul>
</html>", info="<html>
<p>
In this record, fitting coefficients are provided for thermodynamic properties
calculated from two independent state variables. For detailed information of
these thermodynamic properties as well as the fitting coefficients, please
checkout
<a href=\"modelica://AixLib.DataBase.Media.Refrigerants.ThermodynamicStatePropertiesBaseDataDefinition\">
AixLib.DataBase.Media.Refrigerants.ThermodynamicStatePropertiesBaseDataDefinition
</a>.
The fitting coefficients are used in a hybrid refrigerant model provided in
<a href=\"modelica://AixLib.Media.Refrigerants\">AixLib.Media.Refrigerants
</a>.
For detailed information, please checkout
<a href=\"modelica://AixLib.Media.Refrigerants.Interfaces.TemplateHybridTwoPhaseMediumRecord\">
AixLib.Media.Refrigerants.Interfaces.TemplateHybridTwoPhaseMediumRecord
</a>.
</p>
<h4>Assumptions and limitations</h4>
<p>
The provided coefficients are fitted to external data by Engelpracht and are
valid within the following range:<br />
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
  <td><p>1</p></td>
  <td><p>48</p></td>
</tr>
<tr>
  <td><p>Temperature (T) in K</p></td>
  <td><p>233.15</p></td>
  <td><p>340.15</p></td>
</tr>
</table>
<p>
The reference point is defined as 200 kJ/kg and 1 kJ/kg/K, respectively, for
enthalpy and entropy for the saturated liquid at 273.15 K.
</p>
<h4>References</h4>
<p>
Engelpracht, Mirko (2017): Development of modular and scalable simulation
models for heat pumps and chillers considering various refrigerants.
<i>Master Thesis</i>
</p>
</html>"));
end TSP_IIR_P1_48_T233_340;

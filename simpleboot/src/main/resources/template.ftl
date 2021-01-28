<!DOCTYPE html >
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>html2pdf</title>

    <style type="text/css">
        body{
            font-family: SimSun;
        }

        .article {
            background-color: #fff;
            padding: 17px 20px 20px 20px!important;
        }
        .col-xs-12 {
            width: 96%;
        }
        .tab-content>.active {
            display: block;
        }
        .tab-pane {
            user-select: none;
        }
        .pl5 {
            padding-left: 5px;
        }
        #home img {
            display: inline-block;
            max-height: 60px;
            width: 80px;
            height: auto;
            margin-left:0px;
            padding:0px;
            overflow: hidden;
        }
        .list_papers p {
            /*word-wrap: break-word;*/
            word-break: break-all;
            overflow: hidden;
            padding-left: 25px;
        }
        .bt_add {
            width: 6px;
            height: 20px;
            background: #009ee7;
            display: inline-block;
            margin-bottom: -6px;
        }
        .table-bordered {
            border: 1px solid #ddd;
        }
        .table {
            width: 100%;
            max-width: 100%;
            margin-bottom: 20px;
        }
        table {
            background-color: transparent;
        }
        table {
            border-spacing: 0;
            border-collapse: collapse;
        }
        .table>thead:first-child>tr:first-child>th {
            border-top: 0;
        }
        .color_red {
            color: #ff0000 !important;
        }
        .color_green{
            color:#009ee7 !important;
        }
        .list_papers_head {
            line-height: 40px;
            height: 40px;
            background: #f2fafe;
        }
        .table_bt tr th {
            background: #f2fafe;
            text-align: center;
            line-height: 30px !important;
            height: 30px;
            font-size: 14px;
            color: #555555 !important;
        }
        .table>caption+thead>tr:first-child>td, .table>caption+thead>tr:first-child>th, .table>colgroup+thead>tr:first-child>td, .table>colgroup+thead>tr:first-child>th, .table>thead:first-child>tr:first-child>td, .table>thead:first-child>tr:first-child>th {
            border-top: 0;
        }
        .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
            vertical-align: middle !important;
        }
        .table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
            border-bottom-width: 2px;
        }
        .table-bordered>tbody>tr>td, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>td, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
            border: 1px solid #ddd;
        }
        .table>tbody>tr>td {
            text-align: center;
        }
        .test_paper_head {
            /* display: inline-flex; */
            word-break: break-word;
        }
        .test_paper_head {
            line-height: 35px;
            font-size: 16px;
            color: #666666;
            padding-left: 10px;
        }
        /*考试——考试管理*/
        /*bootstrop样式初始化*/
        .table_bt a{color:#009ee7;}
        .font_color_yellow{color:#ffbb33 !important;}
        .font_color_blue{color:#009ee7 !important;}
        .font_color_green{color:#009c84 !important;}
        .pl5{padding-right: 5px;}
        .form-control{background-image:black !important;}
        .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{vertical-align:middle !important;}
        .btn-info {
            color: #fff;
            background-color: #009ee7 !important;
            border-color: #009ee7 !important;
        }
        .btn{
            padding: 6px 21px !important;
        }
        .pl10{padding-left: 10px;}
        .btn:hover{color:#fff !important;}

        .table_bt tr th{background: #f2fafe;text-align: center;line-height: 30px !important;height:30px;font-size: 14px;color:#555555 !important;}
        .table_bt tr td{text-align: center;color:#666666;font-size: 13px;line-height: 20px !important;}
        .table_bt .w_name{width: 200px;}
        /*搜索条件*/
        .search_criteria .float_left{float:left;width: 29%;margin-right: 1%;}
        .wk_29{width: 14% !important;}
        .wenzsh{width: 46% !important;float: left;}
        .fgx_style{float:left;width: 2%;float: left;font-size: 14px;font-weight: 600;line-height: 30px;padding-right: 2px;color: #aaa7a7;padding-left: 2px;}
        .new_examination{float:right;margin-top: 2%;position: relative;}
        .img_add{position: absolute;left:10px;top:10px;}
        .btn-green{background: #4ec180;border:#4ec180 1px solid;color:#fff;}
        .button-styleg{width: 102px;}
        .po_st{position:relative;}
        .magni_aboust{position:absolute;left:6px;top:6px;}
        .ksmc{padding-left: 30px !important;}
        .ticz_zj{width: 102px;float: right;margin-top: 10px;margin-right: 21px;}




        /*添加机构*/
        .bt_add{width: 6px;height: 20px;background: #009ee7;display: inline-block;margin-bottom: -6px;}
        .text_head{}
        .error_table{margin-top:5%;}
        .error_table dl{width: 100%;overflow: hidden;}
        .error_table dl dt{float:left;width: 20%;text-align: right;color:#666666;font-size: 14px;line-height: 34px;height: 34px;}
        .error_table dl dd{float:left;width: 40%;text-align: left;padding-left: 10px;}
        .text_float{float:right;color: #666666;font-size: 14px;line-height: 34px;height: 34px;}
        /*初始化build*/
        .radio label::after{background-image:#009ee7 !important;}
        input,select,option,textarea{outline: none;}



        /*考试分析*/
        .analysis_head {font-size: 24px;color:#666666;text-align: center;}
        .examination_analysis tr td{line-height: 26px !important;}


        /*班级列表*/
        .new_examination_relation{float:right;margin-top: 1%;position: relative;}
        .img_relation{position: absolute;left:13px;top:12px;}
        .w_name230{width: 300px;text-align: left !important;}
        .table_bt_ck tr th{background: #f2fafe;text-align: center;line-height: 30px !important;height:30px;font-size: 14px;color:#555555 !important;}
        .table_bt_ck tr td{text-align: center;color:#666666;font-size: 14px;line-height: 30px !important;}
        .table_bt .w_name{width: 200px;}
        .w_name{width: 200px;}
        .w_name185{width: 185px !important;}
        .w_name150{width: 150px !important;}
        .w_name125{width: 125px !important;}
        .w_name105{width: 105px !important;}
        .w_name80{width: 80px !important;}
        /*试题题型*/
        .list_papers{border:#e5e5e5 1px solid;overflow: hidden;border-radius: 4px;}
        .list_papers_head{line-height: 40px;height: 40px;background: #f2fafe;}
        .ju_pl5{font-size: 14px;color:#666666;padding-left: 10px;padding-right:10px;font-weight: 600;}
        .test_paper_head{line-height: 35px;font-size: 16px;color:#666666;padding-left: 10px;}
        .test_paper {padding-right: 20px;overflow: hidden;}
        .test_paper ul li{COLOR: #666666;width: 90%;list-style: none;font-size: 14px;overflow: hidden;padding-left: 25px;line-height: 30px;}
        .test_paper ul li .xh{font-weight: bold;font-size: 16px;color:#333333;padding-right: 10px;}
        .text_bt{padding-left: 25px;margin-top:25px;overflow: hidden;}
        .answer{color:#009ee7;font-size: 16px;}
        .answer_d{color:#ffbb33;font-size: 16px;font-weight: bold;padding-left: 10px;white-space: pre-line;}
        .selected{text-align: center;width: 90px; background: #d9f1fb;color: #009ee7;padding: 8px 10px; border-radius: 4px;float: right;margin-bottom: 10px;}
        /*  8.08新样式 */
        .clear_both{overflow: hidden;}
        .mt15{margin-top: 15px;}
        .article_title{font-size: 16px;color:#333333;padding: 10px;font-weight: 500;line-height: 32px;word-break:break-all;}
        .div2 p {word-break:break-all;}
        .serial_number{float:left;padding-left: 15px;font-size: 14px;}
        .xh{font-weight: bold;font-size: 16px;color:#333333;padding-right: 10px;width:26px !important;display:inline-block;}




        /*查看结果—成绩分析*/
        .caption_description dl dt{float:left;}
        .caption_description dl dd{float:right;}


        /*新增开始*/
        .error_table_add{margin-top:5%;}
        .error_table_add dl{width: 100%;overflow: hidden;}
        .error_table_add dl dt{float:left;width: 20%;text-align: right;color:#666666;font-size: 14px;line-height: 34px;height: 34px;}
        .error_table_add dl dd{float:left;width: 64%;text-align: left;padding-left: 10px;}
        .wk_48{width:48%;}
        .parting_line{color: #bcbcbc;line-height: 36px;height: 36px;padding-left: 10px;padding-right: 10px;}


        /*我的错题库*/
        .table_collection{float:right;margin-bottom: 10px;}
        .table_collection ul li{float:left;line-height: 40px !important;height: 40px !important;width: 50% !important;}
        .btn_info_gray {color: #fff;background-color: #cccccc !important;border-color: #cccccc !important;}
        .answers{color:#009ee7;font-size: 14px;}

        /*我的作业*/
        .w_word{width: 160px;}
        .list_papers:hover{border:#009ee7  1px solid;}

        /*班级用户*/
        .search_criteria dl dt{float:left;width: 19%;}
        .search_criteria dl dd{float:right;width: 80%;}
        .wk_23{width: 24% !important;}
        .btn-green{background: #4ec180;}
        .ml10{margin-left: 10px !important;}


        /*弹出框样式*/
        /*选择试卷弹出框样式*/
        .test_paper_Popup{width: 800px;height:640px;margin:0 auto;text-align: center;background: #fff;}
        .text_head_xz{text-align: left;width: 100%;}
        .w_49{width: 48% !important;}
        .line_grzy{border-bottom: 1px solid #e5e5e5;padding-bottom: 20px;}

        /*选择发布对象弹出框样式*/
        .width_54{float: left;width: 54%;margin-right: 1%;}
        .selected_class{border:#e5e5e5 1px solid;overflow: hidden;}
        .select_text{background: #e5e5e5;width: 120px;height: 40px;line-height: 40px;font-size: 16px;}
        .padding20{padding:20px;}
        .line_center24 tr td{line-height: 35px !important;}
        .w_name_work{width: 154px;}
        .w_name_works{width: 174px;}
        .img_adds{position: absolute;left: 10px;top: 7px;}
        .pl30{padding-left: 30px !important;}
        .button_green{width: 87px;margin-left: 10px;line-height: 35px;border-radius: 4px;height: 35px;}
        .fgx_style{padding-left: 3px !important;padding-right: 7px !important;}


        /*查看用户*/
        .error_tables{margin-top: 5%;}
        .error_tables dl{width: 100%;overflow: hidden;}
        .error_tables dl dt{float:left;width: 20%;text-align: right;color:#666666;font-size: 14px;line-height: 34px;height: 34px;}
        .error_tables dl dd{float: left;width: 40%;text-align: left; padding-left: 10px;margin-top: 8px;color: #666666;font-size: 14px;}

        .btn-info-gray {
            color: #666666;
            background-color: #e5e5e5 !important;
            border-color: #e5e5e5 !important;
        }
        .btn-info-gray:hover {
            color: #666666 !important;
        }


        .model {
            line-height: 3em;
            font-size: 2em;
            font-weight: bold;
        }

        .model td:last-child {
            border-bottom: 1px dashed #cccccc;
        }
        .text_bt{
            margin-top: 15px;
        }
        .test_paper_head {
            /*display: inline-flex;*/
            word-break: break-word;
        }
        .test_paper ul{
            padding-top:5px;
        }

        .test_paper ul li{
            /*display: inline-flex;*/
        }
        .jie p{
            display: inline;
        }

        .list_papers p{
            word-wrap: break-word;
            word-break: break-all;
            overflow: hidden;
            padding-left: 25px;
        }
        .xstp_right {
            display: none;
            position: fixed;
            top: 220px;
            left: 60%;
            z-index: 100;
            max-width: 600px;
            max-height: 500px;
            background: #f7f7f7;
        }
    </style>
</head>
<body>

<div class="col-xs-12 article" style="padding-top:0px !important;">
    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
            <em class="bt_add"></em>
            <span class="text_head fl6 pl5"
                  style="font-size: 16px;">考试查看</span>
            <table class="table table-bordered" style="margin-bottom:0px;margin-top: 10px;">
                <thead class="table_bt">
                <tr>
                    <th >考试名称</th>
                    <th >试题总题量</th>
                    <th >答题数</th>
                    <th >错误题数</th>
                </tr>
                </thead>
                <tbody class="table_bt">
                <tr>
                    <td style="white-space: normal;">考试全部题型1109</td>
                    <td >60</td>
                    <td >60</td>
                    <td >30</td>
                </tr>
                </tbody>
            </table>
            <table id="contentTable" class="wrongPaper" >
                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：A</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">1.与维生素的概念<strong>不符</strong>的是</span>
                        <ul>
                            <li ><span class="xh ">A</span>是维持人体正常代谢机能所必需的微量物质</li>
                            <li ><span class="xh ">B</span>只能从食物中摄取，不能在体内合成</li>
                            <li class="color_red"><span class="xh color_red">C</span>不是细胞的一个组成部分</li>
                            <li ><span class="xh ">D</span>不能供给体内能量</li>
                            <li ><span class="xh ">E</span>体内需保持一定水平</li>
                        </ul>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">B</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">维生素D可由体内合成。</span></div>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：A</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">2.关于脂溶性维生素的叙述<strong>不正确</strong>的是</span>
                        <ul>
                            <li ><span class="xh ">A</span>溶于脂肪和脂溶性溶剂</li>
                            <li ><span class="xh ">B</span>大多不溶于水</li>
                            <li ><span class="xh ">C</span>在肠道中与脂肪共同吸收</li>
                            <li class="color_red"><span class="xh color_red">D</span>长期摄入量过多可引起相应的中毒症</li>
                            <li ><span class="xh ">E</span>可随尿排出体外</li>
                        </ul>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">E</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">D</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">水溶性维生素可随尿排出体外，但脂溶性维生素较难随尿排出，一般经体内代谢后排出，服用过多时代谢困难，会导致蓄积中毒。</span></div>
                    </div>
                </div>






                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：A3</span>
                    </div>
                    <span class="test_paper_head">（3-5共用题干）&#160;小然，男，10个月。因腹泻伴呕吐2天入院。大便每天8～10次，蛋花汤样便，闻之有腥臭味，1天来口唇干燥、尿量减少。该患儿以人工喂养为主，家长卫生习惯差，奶具很少消毒。无既往腹泻史。查体：体温37.8oC，精神欠佳，前囟、眼窝明显凹陷，口唇干，哭时泪少。大便常规：色黄，有黏液，白细胞数0～5个/HP</span>

                    <div class="test_paper" style="padding-top: 20px;">
                        <div class="test_paper">
                            <span class="test_paper_head">3.导致该患儿腹泻的原因及其脱水程度是</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>A.饮食因素，中度脱水</li>
                                <li class="color_green"><span class="xh color_green">B</span>B.致病性大肠杆菌，中度脱水</li>
                                <li ><span class="xh ">C</span>C.致病性大肠杆菌，重度脱水</li>
                                <li ><span class="xh ">D</span>D.轮状病毒，中度脱水</li>
                                <li ><span class="xh ">E</span>E.轮状病毒，重度脱水</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">B</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">患儿大便呈水样有腥臭，应考虑致病性大肠杆菌。前囟、眼窝明显凹陷，口唇干，哭时泪少应考虑为中度脱水</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">4.导致该患儿腹泻的可能因素应除外</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>A.饮食因素，中度脱水</li>
                                <li class="color_red"><span class="xh color_red">B</span>B.过热导致胃酸及消化酶分泌减少</li>
                                <li ><span class="xh ">C</span>C.缺乏乳糖酶，不能耐受乳类食品</li>
                                <li ><span class="xh ">D</span>D.血中免疫球蛋白及胃肠道sIgA较少</li>
                                <li ><span class="xh ">E</span>E.卫生习惯差，奶具很少消毒</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">C</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">患儿10个月，消化系统发育不完善，胃酸及消化酶分泌少，消化酶活性低，胃肠道功能较差，对食物量和质的变化耐受性差。人工喂养不能从母乳中获得SIgA等成分，血液中免疫球蛋白和胃肠道SIgA均较低，对感染的防御能力差。患儿家长卫生习惯差，奶具很少消毒易被污染。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">5.该患儿最初24小时补液总量及液体种类应为</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>A.100～120ml/kg，2:3:1液</li>
                                <li ><span class="xh ">B</span>B.120～150ml/kg，2:3:1液</li>
                                <li class="color_red"><span class="xh color_red">C</span>C.150～180ml/kg，2:3:1液</li>
                                <li ><span class="xh ">D</span>D.100～120ml/kg，4:3:2液</li>
                                <li ><span class="xh ">E</span>E.150～180ml/kg，4:3:2液</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">B</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">患儿中度脱水，应补充液体120～150ml/kg，可按医嘱应用2:3:1含钠液（1/2张）。</span></div>
                    </div>
                </div>



                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：B</span>
                    </div>
                    <div class="test_paper">

                        <span class="test_paper_head">（6-9）&#160;共用备选答案</span>
                        <ul>
                            <li>A.&#160;&#160;维生素B<sub>1</sub></li>
                            <li>B.&#160;&#160;维生素D<sub>2</sub></li>
                            <li>C.&#160;&#160;维生素K<sub>3</sub></li>
                            <li>D.&#160;&#160;维生素C</li>
                            <li>E.&#160;&#160;维生素E</li>
                        </ul>
                        <div class="test_paper">
                            <span class="test_paper_head">6.结构的2位有一个16碳侧链的苯并二氢吡喃醇衍生物的维生素是</span>
                            <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">E</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        </div>
                        <div style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">苯并二氢吡喃醇为维生素E的典型结构。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">7.与空气长期接触，可被氧化成为具有荧光的硫色素的维生素是</span>
                            <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">A</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        </div>
                        <div style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">在空气中，维生素B1缓慢开环分解，分解产物脱水形成嘧啶并嘧啶化合物，再与空气中的氧接触，生成具有荧光的硫色素。碱性环境会加速该反应的发生。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">8.在体内转变为有活性的硫胺焦磷酸酯的维生素是</span>
                            <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">A</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        </div>
                        <div style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">硫胺焦磷酸酯是维生素B<sub>1</sub>的代谢活化形式。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">9.含甲萘醌结构，具有凝血作用的维生素是</span>
                            <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">C</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        </div>
                        <div style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">甲萘醌是维生素K<sub>1</sub>,K<sub>2</sub>, K<sub>3</sub>的典型结构。</span></div>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：B</span>
                    </div>
                    <div class="test_paper">

                        <span class="test_paper_head">（10-13）&#160;共用备选答案</span>
                        <ul>
                            <li>A.&#160;&#160;维生素A醋酸酯</li>
                            <li>B.&#160;&#160;维生素H</li>
                            <li>C.&#160;&#160;维生素D</li>
                            <li>D.&#160;&#160;维生素C</li>
                            <li>E.&#160;&#160;维生素E</li>
                        </ul>
                        <div class="test_paper">
                            <span class="test_paper_head">10.用于治疗眼干症、夜盲症、皮肤干燥等的药物是</span>
                            <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">A</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        </div>
                        <div class="test_paper">
                            <span class="test_paper_head">11.用于酸化尿、特发性高铁血红蛋白症治疗的药物是</span>
                            <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">D</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        </div>
                        <div class="test_paper">
                            <span class="test_paper_head">12.用于习惯性流产、不孕症、间歇性跛行的药物是</span>
                            <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">E</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        </div>
                        <div class="test_paper">
                            <span class="test_paper_head">13.预防佝偻病、骨软化病的药物是</span>
                            <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">C</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        </div>
                    </div>
                </div>





                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：C</span>
                    </div>
                    <span class="test_paper_head">（14-15共用题干）&#160;青藏高原筑路工人，长期食用罐头食品，出现下肢皮下出血、瘀斑，齿龈肿胀出血。导致该症状的原因可能是缺乏维生素C。</span>

                    <div class="test_paper" style="padding-top: 20px;">
                        <div class="test_paper">
                            <span class="test_paper_head">14.关于维生素C说法正确的是</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>大量摄入后会在体类蓄积而引起中毒</li>
                                <li class="color_green"><span class="xh color_green">B</span>人体自身不能合成，只能从食物中获取</li>
                                <li ><span class="xh ">C</span>属于脂溶性维生素</li>
                                <li ><span class="xh ">D</span>天然存在多个异构体，都具有同等生物活性</li>
                                <li ><span class="xh ">E</span>具有碱性</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">B</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">维生素C为水溶性维生素，可很快排出体外，不存在蓄积中毒问题；维生素C有四个光学异构体，但只有L-抗坏血酸活性最好，且维生素C有两个烯醇羟基，容易游离出质子，具有酸性。只有B项正确。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">15.维生素C可用以下哪种方法定性检测</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>与三氯化锑反应，显深蓝色</li>
                                <li class="color_red"><span class="xh color_red">B</span>乙醇溶液与硝酸共热，显橙红色</li>
                                <li ><span class="xh ">C</span>水溶液中加入硝酸银溶液，产生黑色沉淀</li>
                                <li ><span class="xh ">D</span>碱性水溶液中加入铁氰化钾，具有荧光</li>
                                <li ><span class="xh ">E</span>本身即具有黄绿色荧光，加入酸或碱时荧光消失</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">C</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">Vc具有还原性，可与硝酸银反应析出黑色的银单质，可以作为Vc的鉴别。</span></div>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：C</span>
                    </div>
                    <span class="test_paper_head">（16-17共用题干）&#160;一男孩在8个月内，视力逐渐恶化。医生检查发现他的视力受到严重的损害：只有当手处于30cm以内时，他才能看到手部动作。另外，男孩眼睛的外层也严重干燥。男孩没有眼睛发红；视力丧失与疼痛、头痛、发烧或光照（闪光）无关。这名男孩患有多种食物过敏和湿疹，由于担心某些食物可能引发湿疹的爆发，男孩的饮食仅限于土豆、猪肉、羊肉、苹果、黄瓜和全麦面圈。</span>

                    <div class="test_paper" style="padding-top: 20px;">
                        <div class="test_paper">
                            <span class="test_paper_head">16.该男孩的病因可能是</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>缺乏维生素A</li>
                                <li ><span class="xh ">B</span>缺乏维生素B</li>
                                <li class="color_red"><span class="xh color_red">C</span>缺乏维生素C</li>
                                <li ><span class="xh ">D</span>缺乏维生素D</li>
                                <li ><span class="xh ">E</span>缺乏维生素E</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">A</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">维生素A在视觉的形成和视循环过程中起重要作用，是重要的视觉感光物质，缺乏时视紫红质合成受阻。而维生素A主要来源于动物肝脏，奶，奶酪蛋黄及黄色根菜类植物中。病人的常用饮食中维生素A含量极少，可推断为缺乏维生素A。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">17.该病症的治疗方法<strong>不正确</strong>的是</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>治疗的前期静脉注射大剂量缺乏的相应维生素</li>
                                <li class="color_red"><span class="xh color_red">B</span>病情好转后改为口服相应维生素<sup></sup></li>
                                <li ><span class="xh ">C</span>症状消失后，应继续大剂量服用该维生素，预防复发</li>
                                <li ><span class="xh ">D</span>饮食补充胡萝卜、红薯、绿叶蔬菜、鱼类等</li>
                                <li ><span class="xh ">E</span>服用的该类维生素要注意避光低温保存</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">C</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">长期大剂量服用维生素A可能导致蓄积中毒。</span></div>
                    </div>
                </div>


                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：X</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">18.结构中含有手性碳原子的维生素有</span>
                        <ul>
                            <li class="color_red"><span class="xh color_red">A</span>维生素A</li>
                            <li class="color_red"><span class="xh color_red">B</span>维生素B<sub>1</sub></li>
                            <li class="color_red"><span class="xh color_red">C</span>维生素C</li>
                            <li ><span class="xh ">D</span>维生素E</li>
                            <li ><span class="xh ">E</span>维生素K<sub>3</sub></li>
                        </ul>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">CD</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">ABC</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">维生素C和维生素E结构上都含有手性碳。</span></div>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：X</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">19.易被氧化的维生素有</span>
                        <ul>
                            <li class="color_red"><span class="xh color_red">A</span>维生素A</li>
                            <li class="color_red"><span class="xh color_red">B</span>维生素H</li>
                            <li class="color_red"><span class="xh color_red">C</span>维生素E</li>
                            <li ><span class="xh ">D</span>维生素D<sub>2</sub></li>
                            <li ><span class="xh ">E</span>维生素C</li>
                        </ul>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">ACE</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">ABC</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">维生素A具有易被氧化的烯丙醇结构，维生素E具有苯酚结构，维生素C具有特殊的烯醇结构，都易被氧化。</span></div>
                    </div>
                </div>






                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：阅读理解</span>
                    </div>
                    <span class="test_paper_head">（20-24共用题干）&#160;After 25 years battling the mother of all viruses , have we finally got the measure of HIV? Three developments featured in this issue collectively give grounds for optimism that would have been scarcely believable a year ago in the wake of another failed vaccine and continuing problems supplying drugs to all who need them. Perhaps the most compelling hope lies in the apparent "cure" of a man with HIV who had also developed leukemia. Doctors treated his leukemia with a bone marrow transplant that also vanquished the virus. Now US Company Sangamo Biosciences is hoping to emulate the effect patients being cured with a single shot of gene therapy , instead of taking antiretroviral drugs for life. Antiretroviral therapy (ART) is itself another reason for optimism. Researchers at the World Health Organization have calculated that HIV could be effectively eradicated in Africa and other hard-hit places using existing drugs. The trick is to test everyone often, and give those who test positive ART as soon as possible. Because the drugs rapidly reduce circulating levels of the virus to almost zero. It would stop people passing it on through sex. By blocking the cycle of infection in this way, the virus could be virtually eradicated by 2050. Bankrolling such a long-term program would cost serious money, initially around ＄3.5 billion a year in South Africa alone, ring to ＄85 billion in total. Huge as it sounds, however, it is peanuts compared with the estimated ＄1.9 trillion cost of the lrag war, or the $ 700 billion spent in one go propping up the US banking sector. It also look small beer compared with the costs of carrying on as usual, which the WHO says can only lead to spiraling cases and costs. The final bit of good news is that the cost of ART could keep on falling. Last Friday, Glaxo Smith Kline chairman Andrew Witty said that his company would offer all its medicines to the poorest countries for at least 25 percent less than the typical price in rich countries. GSK has already been doing this for ART. But the hope is that the company may now offer it cheaper still and that other firms will follow their lead. No one doubt the devastation caused by AIDS. In 2007, 2 million people died and 2.7 million more contracted the virus. Those dismal numbers are not going to turn around soon, and they won't turn around at all without huge effort and investment. But at least there is renewed belief that, given the time and money, we can finally start riddling the world of this most fearsome of viruses.</span>

                    <div class="test_paper" style="padding-top: 20px;">
                        <div class="test_paper">
                            <span class="test_paper_head">20.Which of the following can be most probably perceived beyond the first paragraph?</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>The end of the world.</li>
                                <li class="color_green"><span class="xh color_green">B</span>A candle of hope.</li>
                                <li ><span class="xh ">C</span>A Nobel prize</li>
                                <li ><span class="xh ">D</span>A Quick Fix.</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">B</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">【B】细节题。题意：下列哪一个是通过第一段可以得知的？根据第一段最后一句话可以得知针对HIV病毒，研究进展又带给我们希望，因而答案为B。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">21.According to the passage, the apparent "cure" of the HIV patient who had also developed leukemia would ____.</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>make a promising transition from antiretroviral medication to gene therapy<sup></sup></li>
                                <li class="color_red"><span class="xh color_red">B</span>facilitate the development of effective vaccines for the infection</li>
                                <li ><span class="xh ">C</span>compel people to draw an analogy between AIDS and leukemia</li>
                                <li ><span class="xh ">D</span>would change the way we look at those with AIDS</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">A</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">【A】细节题。题意：根据文章，对已经患上白血病的HV病毒病人表面上将治愈。根据题干信息可定位到第二段，解题有效信息为最后一句，意思是希望仿效那些仅采用单一基因疗法患者的疗效，取代终身服用抗逆转录病毒的药物。因而答案为A。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">22.As another bit of good news, ____.</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>HIV will be virtually wiped out first in Africa</li>
                                <li class="color_green"><span class="xh color_green">B</span>the cycle of HIV infection can be broken with ART</li>
                                <li ><span class="xh ">C</span>the circulating levels of HIV have been limited to almst zero</li>
                                <li ><span class="xh ">D</span>the exising HIV drugs will be enhanced to more effective in 25 years</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">B</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">【B】细节题。题意:另一个好消息是____。根据题干和第三段首句信息可以得知解题有效信息就在第三段。首先，根据第三段第二句话可以排除选项A，原文信息中没有提到HIV病毒首先将在非洲被消灭；另外根据第四句可排除选项C，原文信息是“因为药物能快速将病毒流行程度降到零，这就防止人们通过性传播病毒”。选项D在文章中没有相应信息。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">23.The last reason for optimism is that ____.</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>governments will invest more in improving ART<sup></sup></li>
                                <li ><span class="xh ">B</span>the cost of antiretroviral therapy is on the decline</li>
                                <li class="color_red"><span class="xh color_red">C</span>everybody can afford antiretroviral therapy in the world</li>
                                <li ><span class="xh ">D</span>the financial support of ART is coming to be no problem</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">B</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">【B】细节题。题意:乐观的最后一个原因是       。根据题干信息，可定位至第五段，本段首句为有效信息，其含义与选项B吻合。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">24.The whole passage carries a tone of ____.</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>idealism</li>
                                <li class="color_red"><span class="xh color_red">B</span>activism</li>
                                <li ><span class="xh ">C</span>criticism</li>
                                <li ><span class="xh ">D</span>optimism</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">D</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">【D】态度题。题意:全篇的语气是       。根据每段的主题句内容以及上述细节题，可知全篇语气态度为乐观积极的，因而答案为D。</span></div>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：阅读理解</span>
                    </div>
                    <span class="test_paper_head">（25-29共用题干）&#160;Valeta Young, 81, a retiree from Lodi, California, suffers from congestive heart failure and requires almost constant monitoring. But she doesn't have to drive anywhere to get it. Twice a day she steps onto a special electronic scale， answers a few yes or no questions via push buttons on a small attached monitor and presses a button that sends the information to a nurse's station in San Antonio, Texas. "It's almost a direct link to my doctor," says Young, who describes herself as computer illiterate but says she has no problems using the equipment. Young is not the only patient who is dealing with her doctor from a distance. Remote monitoring is a rapidly growing field in medical technology, with more than 25 firms competing to measure remotely, and transmit by phone, Internet or through the airwaves, everything from patients'heart rates to how often they cough. <strong>Prompted</strong> both by the rise in health-care costs and the increasing computerization of health-care equipment, doctors are using remote monitoring to track a widening variety of chronic diseases. In March, St. Francis University in Pittsburgh, Pennsylvania, partnered with a company called BodyMedia on a study in which rural diabetes patients use wireless glucose meters and armband sensors to monitor their disease. Last fall, Yahoo began offering subscribers the ability to chart their asthma conditions online, using a PDA-size respiratory monitor that measures lung functions in real time and emails the data directly to doctors. Such home monitoring, says Dr. George Dailey, a physician at the Scripps Clinic in San Diego, "could someday replace less productive ways that patients track changes in their heart rate, blood sugar, lipid levels, kidney functions and even vision." Dr. Timothy Moore, executive vice president of Alere Medical, which produces the smart scales that Young and more than 10,000 other patients are using, says that almost any vital sign could, in theory, be monitored from home. But, he warns, that might not always make good medical sense. He advises against performing electrocardiograms remotely, for example, and although he acknowledges that remote monitoring of blood-sugar levels and diabetic ulcers on the skin may have real value, he points out that there are no truly independent studies that establish the value of home testing for diabetes or asthma. Such studies are needed because the technology is still in its infancy and medical experts are divided about its value. But on one thing they all agree: you should never rely on any remote testing system without clearing it with your doctor.</span>

                    <div class="test_paper" style="padding-top: 20px;">
                        <div class="test_paper">
                            <span class="test_paper_head">25.Why was Dr. Timothy Moore against performing electrocardiograms remotely?</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>Because it is a less productive way of monitoring.</li>
                                <li ><span class="xh ">B</span>Because it does not make good medical sense.</li>
                                <li class="color_red"><span class="xh color_red">C</span>Because it is value has not been proved by scientific study</li>
                                <li ><span class="xh ">D</span>Because it is not allowed by doctors</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">B</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">C</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">[B]判断题。本题题意为:“为什么 Timothy Moore 博士不能远程执行心电图”。参见原文“例如，他建议不要远程执行心电图，虽然他承认远程监测皮肤上的血糖水平和糖尿病溃疡可能具有实际价值，但他指出，没有真正独立的研究可以确定家庭检测的价值”，故选B。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">26.Which of the following is true according to the text?</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>Computer illiterate is advised not to use remote monitoring.</li>
                                <li class="color_red"><span class="xh color_red">B</span>The development of remote monitoring market is rather sluggish.</li>
                                <li ><span class="xh ">C</span>Remote monitoring is mainly used to track chronic diseases.</li>
                                <li ><span class="xh ">D</span>Medical experts agree on the value of remote monitoring.</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">C</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">[C]推断题。本题题意为:“根据文章，以下哪一项是正确的”。参见最后“由于医疗费用的增加和医疗保健设备的日益计算机化，医生们正在利用远程监控来追踪各种各样的慢性病。”故选C</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">27.How does Young monitor her health conditions?</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>By stepping on an electronic scale.</li>
                                <li class="color_red"><span class="xh color_red">B</span>By answering a few yes or no questions.</li>
                                <li ><span class="xh ">C</span>By using remote monitoring service.</li>
                                <li ><span class="xh ">D</span>By establishing a direct link to her doctor.</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">C</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">[C]细节题。本题题意为:“ 杨是如何监测她的健康状况的”。参见第一段“她每天两次踏上一个特殊的电子秤，通过小型连接显示器上的按钮回答几个是或否的问题，然后按下一个按钮，将信息发送到德克萨斯州圣安东尼奥的护士站。”故选C。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">28.Which of the following is <strong>NOT</strong> used in remote monitoring?</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>Car</li>
                                <li class="color_red"><span class="xh color_red">B</span>Telephone</li>
                                <li ><span class="xh ">C</span>Internet</li>
                                <li ><span class="xh ">D</span>The airwaves</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">A</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">[A]判断题。本题题意为:“远程监控中未使用以下哪项内容”。参见原文“年轻人并不是唯一一个远距离与她的医生打交道的病人。远程监控是医疗技术领域中一个快速发展的领域，有超过25家企业竞相远程测量 - 通过电话，互联网或通过电波传输 - 从患者的心率到咳嗽的频率。”故选A。</span></div>
                        <div class="test_paper">
                            <span class="test_paper_head">29.The word "prompted" most probably means ________.</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>made</li>
                                <li class="color_red"><span class="xh color_red">B</span>reminded</li>
                                <li ><span class="xh ">C</span>aroused</li>
                                <li ><span class="xh ">D</span>driven</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">D</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">B</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;"><span style="color:#666666;font-size: 14px;">解析：</span><span class="jie" style="font-size: 14px;">[D]细节题。本题题意为:“prompted”这个词很可能意味着________。参见原文“由于医疗费用的增加和医疗保健设备的日益计算机化，医生们正在利用远程监控来追踪各种各样的慢性病”。表示驱使、驱动”故选D。</span></div>
                    </div>
                </div>





                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：填空题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">30.in  ____   在体内，在活体内</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            1.vivo <br/>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                1.灌灌灌灌灌过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过过呵呵哈哈哈或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或呵呵哈哈哈或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或呵呵哈哈哈或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或<br/>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                    <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;">
                        <span style="color:#666666;font-size: 14px;">解析：</span>
                        <span class="jie" style="font-size: 14px;">in situ 在体；ex vivo 离体；in vitro 在体外。</span>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：填空题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">31.若<img src='http://192.168.42.30/exam/upload/img/3eb1c46712ee418a93c1d2d6ecd14dcf.png' dataImg='3eb1c46712ee418a93c1d2d6ecd14dcf.png'></img>则a=  ____ ，b= ____ 。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">2</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            1.±1<br/>2.±1/2<br/>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                1.斤斤计较军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军<br/>2.呵呵哈哈哈或或或或或或或或或或或或或或或或或或或或或或或或或或或<br/>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                    <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;">
                        <span style="color:#666666;font-size: 14px;">解析：</span>
                        <span class="jie" style="font-size: 14px;"><img src='http://192.168.42.30/exam/upload/img/73496d781fd44565abd4051ba24bf393.png' dataImg='73496d781fd44565abd4051ba24bf393.png'></img></span>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：填空题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">32.已知区域<img src='http://192.168.42.30/exam/upload/img/3b09b346a33f4b91a3cec990f422ebe0.png' dataImg='3b09b346a33f4b91a3cec990f422ebe0.png'></img> ，二重积分<img src='http://192.168.42.30/exam/upload/img/0f2a5e04aed74ee296dee783d5da621a.png' dataImg='0f2a5e04aed74ee296dee783d5da621a.png'></img>   ____ 。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            1.<img src='http://192.168.42.30/exam/upload/img/75512ffa63ec4158ba71f6864bc04ffb.png' dataImg='75512ffa63ec4158ba71f6864bc04ffb.png'></img><br/>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                1.金合欢花或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或<br/>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：填空题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">33.函数<img src='http://192.168.42.30/exam/upload/img/fae734d6b7e24447b6bd26b5ecfc9188.png' dataImg='fae734d6b7e24447b6bd26b5ecfc9188.png'></img>的间断点是    ____ ，是第    ____ 类间断点。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">2</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            1.<img src='http://192.168.42.30/exam/upload/img/fcc11422604847fbbbacffc9bd905944.png' dataImg='fcc11422604847fbbbacffc9bd905944.png'></img><br/>2.第二类<br/>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                1.很突然若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若<br/>2.行间距军军军军军军军军军军军军军军军军军军军军或所若拖不或付过或拖若付<br/>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                    <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;">
                        <span style="color:#666666;font-size: 14px;">解析：</span>
                        <span class="jie" style="font-size: 14px;"><img src='http://192.168.42.30/exam/upload/img/6b18b8b3eef94a1fb63e532981257007.png' dataImg='6b18b8b3eef94a1fb63e532981257007.png'></img></span>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：判断题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">34.曲线在点（x，y）处的切线斜率等于该点横坐标的平方，则曲线所满足的微分方程是<img src='http://192.168.42.30/exam/upload/img/10b3e1787e6c4368b4d0c7fe0a128736.png' dataImg='10b3e1787e6c4368b4d0c7fe0a128736.png'></img>（C是任意常数）。</span>
                    </div>
                    <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">错</span></p>
                    <p class="text_bt"><span class="answer">学生答案：</span><span class="answer_d">
                                            对

                                                </span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：判断题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">35.微分方程<em>xy </em>'-ln<em>x</em>=0的通解是<img src='http://192.168.42.30/exam/upload/img/9c1656cebcb443288d95881524c4bc65.png' dataImg='9c1656cebcb443288d95881524c4bc65.png'></img>（C为任意常数）。</span>
                    </div>
                    <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">对</span></p>
                    <p class="text_bt"><span class="answer">学生答案：</span><span class="answer_d">
                                            错

                                                </span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：名词解释</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">36.控制系统</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            控制整台仪器的进样、柱温、检测器的温度、气体流速等各种信号运行的系统叫控制系统。
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                <img src='http://192.168.42.30/exam_test/upload/img/5a7c60a344a349fe875129f4cbe979f0.png' dataImg='5a7c60a344a349fe875129f4cbe979f0.png'></img><br/><img src='http://192.168.42.30/exam_test/upload/img/06e12edd6146480bb5e3af4ed7e167cc.jpg' dataImg='06e12edd6146480bb5e3af4ed7e167cc.jpg'></img><br/><img src='http://192.168.42.30/exam_test/upload/img/59383df04c7847139f28c11cc652e1d5.jpg' dataImg='59383df04c7847139f28c11cc652e1d5.jpg'></img><br/><img src='http://192.168.42.30/exam_test/upload/img/adff42d3e3164458923bc3a43b233882.png' dataImg='adff42d3e3164458923bc3a43b233882.png'></img>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：名词解释</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">37.气液色谱法</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            以气体为流动相，以液体为固定相的色谱方法叫GLC。
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                <img src='http://192.168.42.30/exam_test/upload/img/44066533c3d54e3aad8496cb422b453b.png' dataImg='44066533c3d54e3aad8496cb422b453b.png'></img>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：英译汉</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">38.The increased use of prescription drugs and associated increases in cost come at a time of changes in the marketplace for outpatient prescription medications.</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            处方药使用以及相应成本增加的同时，门诊处方药市场发生了一些变化。
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                呵呵哈哈哈或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：汉译英</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">39.尽管加拿大卫生部和美国FDA在授予优先审评资质的流程不尽相同，但他们有共同的目标——临床急需的药物尽早能为患者所用。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            The processes of Health Canada and the FDA for granting priority review status are not exactly the same, but they have the same objective: to accelerate patient access to drugs for unmet medical needs.
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                教给你或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                    <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;">
                        <span style="color:#666666;font-size: 14px;">解析：</span>
                        <span class="jie" style="font-size: 14px;">注意 accelerate patient access to，drugs for unmet medical needs 等表达。</span>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：简答题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">40.简述MS、NMR在天然药物化学成分结构解析中的主要应用。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            MS主要用于确定化合物的相对分子质量、元素组成和检测官能团、辨认化合物类型、推导碳骨架；NMR能提供分子中有关氢和碳原子的类型、数目、相互连接方式、周围化学环境以及构型、构象等结构信息。
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                给对方付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：简答题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">41.如何判断化合物纯度。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            可通过样品的晶型、熔点、熔程、比旋光度、色泽等物理常数。纯的化合物外观和形态较为均一，通常有明确的熔点，熔程一般小于2℃；更多的是采用薄层色谱法或纸色谱法，一般要求至少选择三种或以上的溶剂系统进行展开，展开时样品均呈现单一斑点。
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                灌灌灌灌灌过过过过过过过过过过过过过过过过过过过过过过过过过过或或或或或或或或或或或或或或或或或或或或
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：计算题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">42.求<img src='http://192.168.42.30/exam/upload/img/2c6e6a3ef1164a65b1b451f5782c6bae.png' dataImg='2c6e6a3ef1164a65b1b451f5782c6bae.png'></img>的通解。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            <br/><img src='http://192.168.42.30/exam/upload/img/e7cdc081604844bbb9d06eba2b8eeebe.png' dataImg='e7cdc081604844bbb9d06eba2b8eeebe.png'></img>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                打扫的<sup>啊发发发<sub>刚发售所所所所付<strong>反反复复付付付付付付付付付付付付付付付付付付付付付<em>水电费付付付付付付付付付</em></strong></sub></sup>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                    <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;">
                        <span style="color:#666666;font-size: 14px;">解析：</span>
                        <span class="jie" style="font-size: 14px;"><img src='http://192.168.42.30/exam/upload/img/15daeb71360545dfabd5c0f2034069bc.png' dataImg='15daeb71360545dfabd5c0f2034069bc.png'></img></span>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：计算题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">43.求<em>y''</em>+<em>y'</em>=0的通解。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            <br/><img src='http://192.168.42.30/exam/upload/img/e6efb6e455a443f7bc91eb694d2e5f93.png' dataImg='e6efb6e455a443f7bc91eb694d2e5f93.png'></img>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                的翻版发布发布发不发的的
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                    <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;">
                        <span style="color:#666666;font-size: 14px;">解析：</span>
                        <span class="jie" style="font-size: 14px;"><img src='http://192.168.42.30/exam/upload/img/74511092ae7249cdb217114c31604965.png' dataImg='74511092ae7249cdb217114c31604965.png'></img></span>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：反应机理</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">44.写出下列可能的反应机理。<img src='http://192.168.42.30/exam/upload/img/2ba67f5efe7a491a9999f50c98e4e1d0.png' dataImg='2ba67f5efe7a491a9999f50c98e4e1d0.png'></img></span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            <img src='http://192.168.42.30/exam/upload/img/28ccfd3a466c46279561228c1c4515dd.png' dataImg='28ccfd3a466c46279561228c1c4515dd.png'></img>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                1111111111111111111111111111111111111111111111111111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：反应机理</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">45.写出下列可能的反应机理。<img src='http://192.168.42.30/exam/upload/img/6d711474be6444e3b6a26f1e5a3be310.png' dataImg='6d711474be6444e3b6a26f1e5a3be310.png' chemistry='true'></img></span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            <img src='http://192.168.42.30/exam/upload/img/393bbaf9c2584de2b29f649591c9827b.png' dataImg='393bbaf9c2584de2b29f649591c9827b.png' chemistry='true'></img>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                斤斤计较军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：推测结构</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">46.一旋光化合物A（C<sub>8</sub>H<sub>12</sub>），用铂催化加氢得到没有手性的化合物B（C<sub>8</sub>H<sub>18</sub>），A用Lindlar催化加氢得到手性化合物C（C<sub>8</sub>H<sub>14</sub>），但在Na-NH<sub>3</sub>(l)中还原得到另一个无手性化合物D（C<sub>8</sub>H<sub>14</sub>)。试推测A、B、C、D的结构式。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            <img src='http://192.168.42.30/exam/upload/img/021fc77550014bc2b5efe83775ea7d8a.png' dataImg='021fc77550014bc2b5efe83775ea7d8a.png'></img>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                斤斤计较军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：推测结构</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">47.A和B两个化合物分子式均为C<sub>7</sub>H<sub>14</sub>。A与高锰酸钾溶液加热生成4-甲基戊酸，并有一种气体逸出；B与高锰酸钾或Br<sub>2</sub>-CCl<sub>4</sub>溶液都不反应，B分子中有二级碳原子5个，三级和一级碳原子各一个。请写出A和B所有可能的构造式。 <sub></sub></span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            <img src='http://192.168.42.30/exam/upload/img/b8fe9374282b47b8b0a2386da910297f.png' dataImg='b8fe9374282b47b8b0a2386da910297f.png'></img>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                男男女女你你你地方分隔符付付付付付付付付付付付
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：合成题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">48.由<img src='http://192.168.42.30/exam/upload/img/6ba6ee61d7254c9a9cb0ef54474c3fd1.png' dataImg='6ba6ee61d7254c9a9cb0ef54474c3fd1.png'></img>合成<img src='http://192.168.42.30/exam/upload/img/e7fd895eaa444846a7555fa2b390df35.png' dataImg='e7fd895eaa444846a7555fa2b390df35.png'></img>的条件有哪些？</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            1）Br<sub>2</sub>，光照；2）NaOH，加热；3）① B<sub>2</sub>H<sub>6</sub>，② H<sub>2</sub>O, OH<sup>-</sup>
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                呵呵哈哈哈呵呵或过付付付
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：合成题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">49.完成下列合成。<img src='http://192.168.42.30/exam/upload/img/16a18de0a52b4f83b8b0acb72395def3.png' dataImg='16a18de0a52b4f83b8b0acb72395def3.png'></img></span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            1）Br<sub>2</sub>, hv；2）EtONa-EtOH；3）HOCl
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                灌灌灌灌灌过过过过过过过过过过过
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：区分题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">50.请选择合适的波谱学方法，区分下列两个化合物，并说明依据。<img src='http://192.168.42.30/exam/upload/img/a9a53732b3ce4a859f8adcd02df863f5.png' dataImg='a9a53732b3ce4a859f8adcd02df863f5.png'></img></span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            利用DEPT（135°）来区分化合物a和b。化合物a结构中有8个向下的CH<sub>2</sub>基团，b结构中有9个向下的CH<sub>2</sub>基团。（答案不唯一）
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                斗罗大陆
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：区分题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">51.请用<sup>1</sup>H-NMR区分下列两个化合物，并说明依据。<img src='http://192.168.42.30/exam/upload/img/c070e1e754e04843a0d1240c1553c3b5.png' dataImg='c070e1e754e04843a0d1240c1553c3b5.png'></img></span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            化合物a在<sup>1</sup>H-NMR中可观测到偶合常数约为10Hz的烯氢信号，为顺式双键的特征性信号；化合物b在<sup>1</sup>H-NMR中可观测到偶合常数约为16Hz的反式烯氢信号。
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                的
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：比较题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">52.比较下列化合物结构中指定氢信号A-D的化学位移大小顺序。<img src='http://192.168.42.30/exam/upload/img/4bb979563f494f6dbf0dceee405e64e2.png' dataImg='4bb979563f494f6dbf0dceee405e64e2.png'></img></span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            C>A>D>B
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                鹅鹅鹅鹅鹅鹅
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                    <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;">
                        <span style="color:#666666;font-size: 14px;">解析：</span>
                        <span class="jie" style="font-size: 14px;">C为芳香氢信号，化学位移值在<em><em>δ</em> </em>6 ~ 8；A为烯氢信号，化学位移值在<em><em>δ</em> </em>5 ~ 6；D为饱和连氧碳上的氢信号，化学位移值在<em></em><em>δ</em> 2 ~ 4；B为饱和脂肪碳上的氢信号，化学位移值在<em></em><em>δ</em> 1 ~ 2，因此排序为：C>A>D>B。</span>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：比较题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">53.比较下列化合物结构中指定氢信号的化学位移大小顺序。<img src='http://192.168.42.30/exam/upload/img/c24dac387d11454d8bc41ca9aaba89cb.png' dataImg='c24dac387d11454d8bc41ca9aaba89cb.png'></img></span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            B>C>A>D
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                <img src='http://192.168.42.30/exam_test/upload/img/d33c61edcf1041d69236c501287edb1a.jpg' dataImg='d33c61edcf1041d69236c501287edb1a.jpg'></img>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                    <div  style="padding-left: 25px; padding-top: 5px; color:#666666;margin-bottom: 10px;">
                        <span style="color:#666666;font-size: 14px;">解析：</span>
                        <span class="jie" style="font-size: 14px;">B为烯氢信号，化学位移值在<em>δ</em> 5 ~ 6；A、C均为饱和连氧碳上的氢信号，化学位移值在<em><em>δ</em> </em>2 ~ 5，但是A为伯醇碳上氢信号，C为环仲醇碳上氢信号，所以C化学位移值大于A；D为饱和脂肪碳上的氢信号，化学位移值在<em></em><em>δ</em> 1 ~ 2，故排序为：B>C>A>D。</span>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：论述题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">54.结合本地特色，论述生药资源保护与可持续利用的策略。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            一、对重点区域、重点品种确立保护等级，进行分类保护；二、建立自然保护区与国家公园进行原地保存；三、利用植物园或种质库进行迁地保存；四、药用植物GAP栽培；五、寻找珍稀濒危药材的替代种、代用品；六、科教与宣传执法结合，保护与利用并重
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                <img src='http://192.168.42.30/exam_test/upload/img/e6d0dc18f18d418d8f590811cdb64e8c.jpg' dataImg='e6d0dc18f18d418d8f590811cdb64e8c.jpg'></img>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：论述题</span>
                    </div>
                    <div class="test_paper">
                        <span class="test_paper_head">55.强心苷是生药中一类非常重要的活性成分，但其活性与结构密切相关，试述强心苷类化合物的构效关系特征。</span>
                    </div>
                    <p class="text_bt"><span class="answer">得分: </span><span class="answer_d">1</span></p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">正确答案: </span>
                        <span class="answer_d" style="display: inline-block;">
                                            C/D环必须是顺式稠合，C17位必须连有不饱和内酯环，且为β-构型，C14-OH（或-H）应为β-构型，否则强心作用减弱甚至消失。糖部分虽无强心作用，但是糖的种类及数目对强心作用有影响。一般来说，葡萄糖苷的强心活性和毒性均随着分子中糖的数目增加而减弱；2，6-二去氧糖苷则是糖数目的增加不显著影响强心苷的活性，但毒性却随之增大。葡萄糖苷的强心活性不及2，6-二去氧糖苷，但毒性较弱。
                                    </span>
                    </p>
                    <p class="text_bt">
                        <span class="answer" style="vertical-align: top;">学生答案：</span>
                        <span class="answer_d" style="display: inline-block;">
                                                <img src='http://192.168.42.30/exam_test/upload/img/d3eeb53ad5b24c0e9078ac8280c93c6e.jpg' dataImg='d3eeb53ad5b24c0e9078ac8280c93c6e.jpg'></img>
                                    </span>
                        <span style="font-weight:200;font-size:14px;color:#ffbb33;">

                                    </span>
                    </p>
                </div>



                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：A5</span>
                    </div>
                    <span class="test_paper_head">（56-58共用题干）&#160;A5型题测试nmdvnavneb</span>

                    <div class="test_paper" style="padding-top: 20px;">
                        <div class="test_paper">
                            <span class="test_paper_head">56.子题002</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>21</li>
                                <li class="color_red"><span class="xh color_red">B</span>22</li>
                                <li class="color_red"><span class="xh color_red">C</span>23</li>
                                <li ><span class="xh ">D</span>24</li>
                                <li class="color_red"><span class="xh color_red">E</span>25</li>
                                <li class="color_red"><span class="xh color_red">F</span>26</li>
                                <li class="color_red"><span class="xh color_red">G</span>27</li>
                                <li ><span class="xh ">H</span>28</li>
                                <li class="color_red"><span class="xh color_red">I</span>29</li>
                                <li class="color_red"><span class="xh color_red">J</span>30</li>
                                <li ><span class="xh ">K</span>31</li>
                                <li class="color_red"><span class="xh color_red">L</span>32</li>
                                <li ><span class="xh ">M</span>33</li>
                                <li ><span class="xh ">N</span>34</li>
                                <li ><span class="xh ">O</span>35</li>
                                <li class="color_red"><span class="xh color_red">P</span>36</li>
                                <li ><span class="xh ">Q</span>37</li>
                                <li class="color_red"><span class="xh color_red">R</span>38</li>
                                <li ><span class="xh ">S</span>39</li>
                                <li ><span class="xh ">T</span>40</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">QRST</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">BCEFGIJLPR</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div class="test_paper">
                            <span class="test_paper_head">57.子题001</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li ><span class="xh ">A</span>1</li>
                                <li ><span class="xh ">B</span>2</li>
                                <li class="color_red"><span class="xh color_red">C</span>3</li>
                                <li ><span class="xh ">D</span>4</li>
                                <li ><span class="xh ">E</span>5</li>
                                <li ><span class="xh ">F</span>6</li>
                                <li class="color_red"><span class="xh color_red">G</span>7</li>
                                <li ><span class="xh ">H</span>8</li>
                                <li ><span class="xh ">I</span>9</li>
                                <li ><span class="xh ">J</span>10</li>
                                <li class="color_red"><span class="xh color_red">K</span>11</li>
                                <li ><span class="xh ">L</span>12</li>
                                <li ><span class="xh ">M</span>13</li>
                                <li class="color_red"><span class="xh color_red">N</span>14</li>
                                <li ><span class="xh ">O</span>15</li>
                                <li ><span class="xh ">P</span>16</li>
                                <li class="color_red"><span class="xh color_red">Q</span>17</li>
                                <li ><span class="xh ">R</span>18</li>
                                <li ><span class="xh ">S</span>19</li>
                                <li ><span class="xh ">T</span>20</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">EFGHIJKLMNOPQRST</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">CGKNQ</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div class="test_paper">
                            <span class="test_paper_head">58.子题003</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li class="color_red"><span class="xh color_red">A</span>41</li>
                                <li class="color_red"><span class="xh color_red">B</span>42</li>
                                <li class="color_red"><span class="xh color_red">C</span>43</li>
                                <li class="color_red"><span class="xh color_red">D</span>44</li>
                                <li class="color_red"><span class="xh color_red">E</span>45</li>
                                <li class="color_red"><span class="xh color_red">F</span>46</li>
                                <li class="color_red"><span class="xh color_red">G</span>47</li>
                                <li class="color_red"><span class="xh color_red">H</span>48</li>
                                <li class="color_red"><span class="xh color_red">I</span>49</li>
                                <li class="color_red"><span class="xh color_red">J</span>50</li>
                                <li class="color_red"><span class="xh color_red">K</span>51</li>
                                <li class="color_red"><span class="xh color_red">L</span>52</li>
                                <li class="color_red"><span class="xh color_red">M</span>53</li>
                                <li class="color_red"><span class="xh color_red">N</span>54</li>
                                <li class="color_red"><span class="xh color_red">O</span>55</li>
                                <li class="color_red"><span class="xh color_red">P</span>56</li>
                                <li class="color_red"><span class="xh color_red">Q</span>57</li>
                                <li class="color_red"><span class="xh color_red">R</span>58</li>
                                <li class="color_red"><span class="xh color_red">S</span>59</li>
                                <li class="color_red"><span class="xh color_red">T</span>60</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">ABCD</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">ABCDEFGHIJKLMNOPQRST</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                    </div>
                </div>




                <div class="list_papers mt15">
                    <div class="list_papers_head">
                        <span class="ju_pl5">题型：A5</span>
                    </div>
                    <span class="test_paper_head">（59-60共用题干）&#160;A5型题测试数据</span>

                    <div class="test_paper" style="padding-top: 20px;">
                        <div class="test_paper">
                            <span class="test_paper_head">59.子题2</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li class="color_red"><span class="xh color_red">A</span>124</li>
                                <li class="color_red"><span class="xh color_red">B</span>546</li>
                                <li class="color_red"><span class="xh color_red">C</span>5745</li>
                                <li class="color_red"><span class="xh color_red">D</span>5645</li>
                                <li class="color_red"><span class="xh color_red">E</span>456</li>
                                <li class="color_red"><span class="xh color_red">F</span>346345</li>
                                <li class="color_red"><span class="xh color_red">G</span>3464574</li>
                                <li class="color_red"><span class="xh color_red">H</span>6342</li>
                                <li class="color_red"><span class="xh color_red">I</span>6856</li>
                                <li class="color_red"><span class="xh color_red">J</span>564</li>
                                <li class="color_red"><span class="xh color_red">K</span>6868</li>
                                <li class="color_red"><span class="xh color_red">L</span>897</li>
                                <li class="color_red"><span class="xh color_red">M</span>3435</li>
                                <li class="color_red"><span class="xh color_red">N</span>675678</li>
                                <li class="color_red"><span class="xh color_red">O</span>5674</li>
                                <li class="color_red"><span class="xh color_red">P</span>89879</li>
                                <li class="color_red"><span class="xh color_red">Q</span>87686</li>
                                <li class="color_red"><span class="xh color_red">R</span>88708</li>
                                <li class="color_red"><span class="xh color_red">S</span>76585</li>
                                <li class="color_red"><span class="xh color_red">T</span>5685</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">BGPQRS</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">ABCDEFGHIJKLMNOPQRST</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                        <div class="test_paper">
                            <span class="test_paper_head">60.子题1</span>
                        </div>
                        <div class="test_paper">
                            <ul>
                                <li class="color_red"><span class="xh color_red">A</span>131</li>
                                <li ><span class="xh ">B</span>124214</li>
                                <li class="color_red"><span class="xh color_red">C</span>12323</li>
                                <li ><span class="xh ">D</span>w45</li>
                                <li class="color_red"><span class="xh color_red">E</span>453</li>
                                <li ><span class="xh ">F</span>235243</li>
                                <li class="color_red"><span class="xh color_red">G</span>2423</li>
                                <li ><span class="xh ">H</span>233523</li>
                                <li ><span class="xh ">I</span>325235</li>
                                <li ><span class="xh ">J</span>32523553</li>
                                <li ><span class="xh ">K</span>1232435</li>
                                <li ><span class="xh ">L</span>686556</li>
                                <li class="color_red"><span class="xh color_red">M</span>78565</li>
                                <li ><span class="xh ">N</span>477</li>
                                <li ><span class="xh ">O</span>56758</li>
                                <li ><span class="xh ">P</span>6747</li>
                                <li ><span class="xh ">Q</span>657568</li>
                                <li class="color_red"><span class="xh color_red">R</span>57657</li>
                                <li ><span class="xh ">S</span>4577</li>
                                <li ><span class="xh ">T</span>45747586</li>
                            </ul>
                        </div>
                        <p class="text_bt"><span class="answer">正确答案: </span><span class="answer_d">AFHJLN</span><span class="answer" style="padding-left: 20px;">学生答案：</span><span class="answer_d">ACEGMR</span><span style="font-weight:200;font-size:14px;color:#ffbb33;"></span></p>
                    </div>
                </div>


            </table>
        </div>
    </div>
</div>
</body>
</html>
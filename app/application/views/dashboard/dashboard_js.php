<script>


    function countClients() {
        $.ajax({

            url: 'user',

            type: 'GET',

            dataType: 'json',

            success: function (response) {


                var count = 0;
                if (response.status == 200) {
                    if (response.data.lenght != 0) {
                        count = response.data.length;
                    }

                }
                $('#clientCount').html(count);

            }

        });
    }

    countClients();

    function countProjects() {
        $.ajax({

            url: 'products',

            type: 'GET',

            dataType: 'json',

            success: function (response) {

                var count = 0;
                if (response.status == 200) {
                    var list = '';
                    if (response.data.lenght != 0) {
                        count = response.data.length;
                    }

                }
                $('#projectCount').html(count);

            }

        });
    }

    countProjects();


    function countIssues() {
        $.ajax({

            url: 'issue',

            type: 'GET',

            dataType: 'json',

            success: function (response) {


                var count = 0;
                var list = '';
                if (response.status == 200) {
                    if (response.data.lenght != 0) {
                        for (var i = 0; i < response.data.length; i++) {
                            if (response.data[i].status != 'DONE' && response.data[i].status != 'REJECTED') {
                                count++;
//                                issue list
                                list += `<tr>
                                        <td><span class="txt-dark">` + response.data[i].owner_name + `</span></td>
                                        <td><span class="txt-dark">` + response.data[i].product_name + `</span></td>
                                        <td><span class="txt-dark">` + response.data[i].issue + `</span></td>
                                        <td>
                                            <span class="badge badge-danger">` + response.data[i].status + `</span>
                                        </td>
                                        <td>
                                            <span class="txt-dark">` + response.data[i].call_date + `</span>
                                        </td>
                                    </tr>`;
//                                issue list
                            }
                        }
                        if(count==0){
                            list = `<tr><td colspan="5" align="center"><marquee scrolldelay="100"><h3 class="text-danger">No Issues are open !</h3></marquee></td></tr>`;
                        }
                    }

                } else {
                    list = `<tr><td colspan="5" align="center"><marquee scrolldelay="100"><h3 class="text-danger">No Data are available !</h3></marquee></td></tr>`;
                }
                $('#projectList').html(list);
                $('#openIssues').html(count);

            }

        });
    }

    countIssues();

    function totalInvestments() {
        $.ajax({

            url: 'investment',

            type: 'GET',

            dataType: 'json',

            success: function (response) {


                var total = 0;
                if (response.status == 200) {
                    if (response.data.lenght != 0) {
                        for (var i = 0; i < response.data.length; i++) {
                            total += parseFloat(response.data[i].investment);
                        }

                    }
                }
                $('#totalInvestment').html(total);

            }

        });
    }
    totalInvestments();


    function getAMCAlert() {
        $.ajax({

            url: 'expiry-alert',

            type: 'GET',

            dataType: 'json',

            success: function (response) {

                var list = '';
                if (response.status == 200) {
                    if (response.data.lenght != 0) {
                        for (var i = 0; i < response.data.length; i++) {
                            list += `<tr>
                                        <td><span class="txt-dark">` + response.data[i].business_name + `</span></td>
                                        <td>` + response.data[i].owner_name + `</td>
                                        <td>` + response.data[i].contact1 + `</td>
                                        <td>` + response.data[i].product_name + `</td>
                                        <td>
                                            <span class="txt-dark"><i class="fa fa-fw fa-rupee"></i> ` + response.data[i].amc_amount_per_year + `</span>
                                        </td>
                                        <td>
                                            ` + response.data[i].upcomming_amc_date + `
                                        </td>
                                    </tr>`;
                        }

                    }
//                    $('#amcAlertList').html(list);
                } else if (response.status == 404) {
                    list += `<tr><td colspan="6" align="center"><marquee scrolldelay="100"><h3 class="text-danger">No AMC Alert !</h3></marquee></td></tr>`;
                }
                $('#amcAlertList').html(list);

            }

        });
    }

    getAMCAlert();


</script>

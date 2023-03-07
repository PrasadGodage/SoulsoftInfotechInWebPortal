<div class="modal fade bs-example-modal-lg" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <!--form start-->
            <div class="modal-header">
                <h4 class="modal-title" id="myLargeModalLabel">Owner Product Details</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form class="form" id="addUserproductForm" method="post">

                    <div class="box-body">
                        <h4 class="box-title text-info"><i class="fa fa-shopping-cart"></i> Owner Product Info </h4>
                        <hr class="my-15">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><span class="error">*</span>Owner Name</label>
                                    <select class="form-control"  id="userId" name="userId">
                                        <!--                                        <option> Pradyumn </option>
                                                                                <option> Lalit </option>
                                                                                <option> Sumit </option>
                                                                                <option> Aditya </option>-->
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><span class="error">*</span>Product Name</label>
                                    <select class="form-control" id="productId" name="productId">
<!--                                        <option> Krushi </option>
                                        <option> abc </option>
                                        <option> softsoul </option>
                                        <option> abcd </option>-->
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><span class="error">*</span>Installation Date</label>
                                    <input type="date" name="installationDate" class="form-control" id="installationDate">
                                </div>
                            </div>

                            <!--<div class="row">-->                       
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><span class="error">*</span>Installation Amount</label>
                                    <input type="text" class="form-control" placeholder="Installation Amount" id="installationAmount" name="installationAmount">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><span class="error">*</span>AMC Amount Per Year</label>
                                    <input type="text" class="form-control" placeholder="AMC Amount Per Year" id="amcAmountPerYear" name="amcAmountPerYear">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><span class="error">*</span>Upcoming AMC Date</label>
                                    <input type="date" name="upcommingAmcDate" class="form-control" id="upcommingAmcDate">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Description</label>
                                    <textarea rows="2" class="form-control" placeholder="Description" id="description" name="description"></textarea>
                                </div>
                            </div>

                            <!--</div>-->
                        </div>

                        <!-- /.box-body -->


                    </div>
                    <div class="modal-footer text-right">
                        <button type="button" class="btn btn-danger waves-effect text-left" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary btn-outline">
                            <i class="ti-save-alt"></i> Save
                        </button>
                    </div>
                </form>
                <!--form end-->
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

</div>
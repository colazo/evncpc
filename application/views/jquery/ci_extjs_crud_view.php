<head>
    <meta content="text/html; charset=UTF-8" http-equiv="content-type">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/js/ext/resources/css/ext-all.css"/>

    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/ext/adapter/ext/ext-base.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/ext/ext-all.js"></script>
	<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/ext/plugins/searchfield.js"></script>
    <script type="text/javascript">
    var BASE_URL = '<?php echo base_url(); ?>';
    var BASE_PATH = '<?php echo base_url(); ?>';
    var BASE_ICONS = BASE_PATH + 'assets/icons/';
    Ext.onReady(function() {
        var strCountries = new Ext.data.Store({
            reader: new Ext.data.JsonReader({
                fields: ['id', 'country_name', 'abc', 'vietnamese', 'CountryCode'], root: 'countries'
            }),
            proxy: new Ext.data.HttpProxy({
                url: BASE_URL + 'Ci_extjs_crud/ext_get_all_countries', method: 'POST'
            })
        });

        var strUsers = new Ext.data.Store({
            reader: new Ext.data.JsonReader({
                fields: [
                    'id', 'username', 'email', 'activated', 'banned',
                    'ban_reason', 'new_password_key', 'new_password_requested',
                    'new_email', 'new_email_key', 'last_ip', 'last_login',
                    'created', 'modified', 'country_id',
                    'country_name', 'occupation', 'birthdate'
                ],
                root: 'rows', totalProperty: 'results'
            }),
            proxy: new Ext.data.HttpProxy({
                url: BASE_URL + 'Ci_extjs_crud/ext_get_all',
                method: 'POST'
            })
        });
		
		// the new search field
		var searchUsers = new Ext.app.SearchField({
			store: strUsers,
			params: {start: 0, limit: 10},
			width: 180,left:120,
			id: 'fieldUsersSearch'
		});

        var tbUsers = new Ext.Toolbar({
            items:[{
                text: 'Add',
                icon: BASE_ICONS + 'user_add.png',
                handler: function() {
                    var User = gridUsers.getStore().recordType;
                    var u = new User({
                        username: 'New Full Name',
                        email: 'New Email',
                        country: 'Water Seven',
                        occupation: 'Occupation',
                        birthdate: '1899-10-10'
                    });
                    gridUsers.stopEditing();
                    strUsers.insert(0, u);
                    gridUsers.startEditing(0, 0);
                }
            }, '-', {
                text: 'Save Selected',
                disabled: true,
                id: 'btnSave',
                icon: BASE_ICONS + 'save.gif',
                handler: updateUsers
            }, '-', {
                text: 'Delete',
                icon: BASE_ICONS + 'user_delete.png',
                handler: deleteUsers
            }, '->', searchUsers]
        });

        function updateUsers() {
            var sm = gridUsers.getSelectionModel();
            var sel = sm.getSelections();
            var data = '';
            for (i = 0; i<sel.length; i++) {
                data = data + sel[i].get('id') + ';'
                        + sel[i].get('username')
                        + ';' + sel[i].get('email')
                        + ';' + sel[i].get('country_id')
                        + ';' + sel[i].get('occupation')
                        + ';' + sel[i].get('birthdate')
                        + '||';
            }
            Ext.Ajax.request({
                url: BASE_URL + 'Ci_extjs_crud/ext_update',
                method: 'POST',
                params: { postdata: data }
            });
            strUsers.load();
        }

        function deleteUsers() {
            Ext.Msg.show({
                title: 'Confirm',
                msg: 'Delete Selected Users ?',
                buttons: Ext.Msg.YESNO,
                fn: function(btn) {
                    if (btn == 'yes') {
                        var sm = gridUsers.getSelectionModel();
                        var sel = sm.getSelections();
                        var data = '';
                        for (i = 0; i<sel.length; i++) {
                            data = data + sel[i].get('id') + ';';
                        }
                        Ext.Ajax.request({
                            url: BASE_URL + 'Ci_extjs_crud/ext_delete',
                            method: 'POST',
                            params: { postdata: data }
                        });
                        strUsers.load();
                    }
                }
            });
        }

        var cbGrid = new Ext.grid.CheckboxSelectionModel();

        var gridUsers = new Ext.grid.EditorGridPanel({
            frame: true, border: true, stripeRows: true, sm: cbGrid,
            store: strUsers, loadMask: true, title: 'Users List',
            style: 'margin:0 auto;', height: 360, width: 950,
            columns: [
                cbGrid, {
                    header: "Username",
                    dataIndex: 'username',
                    width: 180,
                    editor: new Ext.form.TextField({
                        allowBlank: false
                    })
                }, {
                    header: "Email",
                    dataIndex: 'email',
                    width: 180,
                    editor: new Ext.form.TextField({
                        allowBlank: false,
                        vtype: 'email'
                    })
                }, {
                    header: "Country",
                    dataIndex: 'country_name',
                    width: 120,
                    editor: new Ext.form.ComboBox({
                        id: 'cbCountry',
                        triggerAction: 'all',
                        store: strCountries,
                        valueField: 'id',
                        displayField: 'country_name'
                    })
                }, {
                    header: "Occupation",
                    dataIndex: 'occupation',
                    width: 120,
                    editor: new Ext.form.TextField({
                        allowBlank: false
                    })
                }, {
                    header: "Birth",
                    dataIndex: 'birthdate',
                    width: 80,
                    renderer : Ext.util.Format.dateRenderer('d/m/Y'),
                    editor: new Ext.form.DateField({
                        format: 'd/m/Y',
                        allowBlank: false
                    })
                }
            ],
            listeners: {
                'rowclick': function() {
                    var sm = gridUsers.getSelectionModel();
                    var sel = sm.getSelections();
                    if (sel.length == 0) {
                        Ext.getCmp('btnSave').setDisabled(true);
                    } else {
                        Ext.getCmp('btnSave').setDisabled(false);
                    }
                }
            },
            tbar: tbUsers,
            bbar: new Ext.PagingToolbar({
                pageSize: 10,
                store: strUsers,
                displayInfo: true
            })
        });

        gridUsers.render('divgrid');
        strUsers.load();
        strCountries.load();
    });
    </script>
    <style type="text/css">
        #divgrid {
            background: #e9e9e9;
            border: 1px solid #d3d3d3;
            margin: 10px;
            padding: 10px;
        }
    </style>

</head>
<body>
    <div id="divgrid"></div>
</body>

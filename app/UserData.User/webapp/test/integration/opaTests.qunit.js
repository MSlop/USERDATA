sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'UserData/User/test/integration/FirstJourney',
		'UserData/User/test/integration/pages/UserList',
		'UserData/User/test/integration/pages/UserObjectPage'
    ],
    function(JourneyRunner, opaJourney, UserList, UserObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('UserData/User') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheUserList: UserList,
					onTheUserObjectPage: UserObjectPage
                }
            },
            opaJourney.run
        );
    }
);
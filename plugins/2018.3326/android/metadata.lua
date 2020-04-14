local metadata =
{
	plugin =
	{
		format = "jar",
		manifest =
		{
			applicationChildElements =
			{
				[[
        <service
            android:name="com.yandex.metrica.MetricaService" android:enabled="true"
            android:exported="true" android:process=":Metrica" >
            <intent-filter>
                <category android:name="android.intent.category.DEFAULT" />
                <action android:name="com.yandex.metrica.IMetricaService" />
                <data android:scheme="metrica" />
            </intent-filter>
            <meta-data
                android:name="metrica:api:level"
                android:value="85" />
        </service>
        <service
            android:name="com.yandex.metrica.ConfigurationService" android:enabled="true"
            android:exported="false" android:process=":Metrica" >
            <meta-data
                android:name="metrica:configuration:api:level" android:value="3" />
            <intent-filter>
                <action android:name="com.yandex.metrica.configuration.ACTION_INIT" />
            </intent-filter>
        </service>
        <service
            android:name="com.yandex.metrica.ConfigurationJobService" android:enabled="true"
            android:exported="false"
            android:permission="android.permission.BIND_JOB_SERVICE"
            android:process=":Metrica" >
        </service>
        <receiver
            android:name="com.yandex.metrica.MetricaEventHandler" android:enabled="true"
            android:exported="true">
            <intent-filter>
                <action android:name="com.android.vending.INSTALL_REFERRER" />
            </intent-filter>
        </receiver>


        <!--suppress AndroidDomInspection -->
        <activity android:name="com.yandex.mobile.ads.AdActivity"
            android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize" />
        <receiver
            android:name="com.yandex.metrica.ConfigurationServiceReceiver" android:enabled="true"
            android:exported="true" android:process=":Metrica" tools:ignore="ExportedReceiver">
            <intent-filter>
                <action android:name="com.yandex.metrica.configuration.service.PLC" />
            </intent-filter>
        </receiver>

        ]]
			}
		}
	},
}

return metadata
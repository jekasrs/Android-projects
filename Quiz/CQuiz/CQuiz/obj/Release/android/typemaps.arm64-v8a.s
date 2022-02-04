	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	16
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	444
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	94
/* java_name_width: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: 9dacff00-72e1-4073-8271-48d1b82d2ea7 */
	.byte	0x00, 0xff, 0xac, 0x9d, 0xe1, 0x72, 0x73, 0x40, 0x82, 0x71, 0x48, 0xd1, 0xb8, 0x2d, 0x2e, 0xa7
	/* entry_count */
	.word	6
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: CQuiz */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: cbef4d2d-2f68-4546-a1fa-98995a059a7f */
	.byte	0x2d, 0x4d, 0xef, 0xcb, 0x68, 0x2f, 0x46, 0x45, 0xa1, 0xfa, 0x98, 0x99, 0x5a, 0x05, 0x9a, 0x7f
	/* entry_count */
	.word	99
	/* duplicate_count */
	.word	6
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	module1_managed_to_java_duplicates
	/* assembly_name: Microsoft.AppCenter.Android.Bindings */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 2d828332-e8a8-4fad-82ad-df4d9bd51fc8 */
	.byte	0x32, 0x83, 0x82, 0x2d, 0xa8, 0xe8, 0xad, 0x4f, 0x82, 0xad, 0xdf, 0x4d, 0x9b, 0xd5, 0x1f, 0xc8
	/* entry_count */
	.word	22
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	module2_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 0d469737-7cab-4b5d-9e93-be53a4f30d70 */
	.byte	0x37, 0x97, 0x46, 0x0d, 0xab, 0x7c, 0x5d, 0x4b, 0x9e, 0x93, 0xbe, 0x53, 0xa4, 0xf3, 0x0d, 0x70
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Support.DrawerLayout */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b8133439-8cc7-4079-a9a3-fd61f42c670b */
	.byte	0x39, 0x34, 0x13, 0xb8, 0xc7, 0x8c, 0x79, 0x40, 0xa9, 0xa3, 0xfd, 0x61, 0xf4, 0x2c, 0x67, 0x0b
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Loader */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1967ad3f-8331-4234-8194-f3afb47892f7 */
	.byte	0x3f, 0xad, 0x67, 0x19, 0x31, 0x83, 0x34, 0x42, 0x81, 0x94, 0xf3, 0xaf, 0xb4, 0x78, 0x92, 0xf7
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Microsoft.AppCenter */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: dcc9c357-b325-4597-a727-fed706ae4c23 */
	.byte	0x57, 0xc3, 0xc9, 0xdc, 0x25, 0xb3, 0x97, 0x45, 0xa7, 0x27, 0xfe, 0xd7, 0x06, 0xae, 0x4c, 0x23
	/* entry_count */
	.word	21
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	module6_managed_to_java_duplicates
	/* assembly_name: Microsoft.AppCenter.Crashes.Android.Bindings */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 2385405c-c6f9-4a2f-8764-65587edbb5a0 */
	.byte	0x5c, 0x40, 0x85, 0x23, 0xf9, 0xc6, 0x2f, 0x4a, 0x87, 0x64, 0x65, 0x58, 0x7e, 0xdb, 0xb5, 0xa0
	/* entry_count */
	.word	18
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	module7_managed_to_java_duplicates
	/* assembly_name: Microsoft.AppCenter.Analytics.Android.Bindings */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: d0906070-920c-4ebd-a390-173ac972b67c */
	.byte	0x70, 0x60, 0x90, 0xd0, 0x0c, 0x92, 0xbd, 0x4e, 0xa3, 0x90, 0x17, 0x3a, 0xc9, 0x72, 0xb6, 0x7c
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	module8_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.LiveData.Core */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 5652a09f-24d4-49d8-862d-a612d497dfcd */
	.byte	0x9f, 0xa0, 0x52, 0x56, 0xd4, 0x24, 0xd8, 0x49, 0x86, 0x2d, 0xa6, 0x12, 0xd4, 0x97, 0xdf, 0xcd
	/* entry_count */
	.word	10
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module9_managed_to_java
	/* duplicate_map */
	.xword	module9_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Fragment */
	.xword	.L.map_aname.9
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b587fe9f-fb1f-48c7-aade-27f2c7ef72d1 */
	.byte	0x9f, 0xfe, 0x87, 0xb5, 0x1f, 0xfb, 0xc7, 0x48, 0xaa, 0xde, 0x27, 0xf2, 0xc7, 0xef, 0x72, 0xd1
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module10_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Support.Design */
	.xword	.L.map_aname.10
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: e72e94a8-8df9-49d3-b1ab-0ab743fc2949 */
	.byte	0xa8, 0x94, 0x2e, 0xe7, 0xf9, 0x8d, 0xd3, 0x49, 0xb1, 0xab, 0x0a, 0xb7, 0x43, 0xfc, 0x29, 0x49
	/* entry_count */
	.word	30
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module11_managed_to_java
	/* duplicate_map */
	.xword	module11_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.v7.AppCompat */
	.xword	.L.map_aname.11
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 6ab406c2-7f04-4088-b058-2ed5df66c238 */
	.byte	0xc2, 0x06, 0xb4, 0x6a, 0x04, 0x7f, 0x88, 0x40, 0xb0, 0x58, 0x2e, 0xd5, 0xdf, 0x66, 0xc2, 0x38
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module12_managed_to_java
	/* duplicate_map */
	.xword	module12_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.Common */
	.xword	.L.map_aname.12
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 18ac0ac5-ad32-4c0b-81f1-e126fafed39a */
	.byte	0xc5, 0x0a, 0xac, 0x18, 0x32, 0xad, 0x0b, 0x4c, 0x81, 0xf1, 0xe1, 0x26, 0xfa, 0xfe, 0xd3, 0x9a
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module13_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Microsoft.AppCenter.Crashes */
	.xword	.L.map_aname.13
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 8c7c9ecb-6225-4cf9-bb1a-76f0f7c106b8 */
	.byte	0xcb, 0x9e, 0x7c, 0x8c, 0x25, 0x62, 0xf9, 0x4c, 0xbb, 0x1a, 0x76, 0xf0, 0xf7, 0xc1, 0x06, 0xb8
	/* entry_count */
	.word	215
	/* duplicate_count */
	.word	36
	/* map */
	.xword	module14_managed_to_java
	/* duplicate_map */
	.xword	module14_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.14
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: e4048fd9-f99b-4e68-ab20-4fc1fb513337 */
	.byte	0xd9, 0x8f, 0x04, 0xe4, 0x9b, 0xf9, 0x68, 0x4e, 0xab, 0x20, 0x4f, 0xc1, 0xfb, 0x51, 0x33, 0x37
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module15_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.ViewModel */
	.xword	.L.map_aname.15
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 1152
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554679
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	68

	/* #1 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554681
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	51

	/* #2 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554683
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	46

	/* #3 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554685
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	53

	/* #4 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554688
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	60

	/* #5 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554690
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	74

	/* #6 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554691
	/* java_name */
	.ascii	"android/app/Application"
	.zero	71

	/* #7 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554693
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	44

	/* #8 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554694
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	76

	/* #9 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554698
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	69

	/* #10 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle"
	.zero	62

	/* #11 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle$State"
	.zero	56

	/* #12 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleObserver"
	.zero	54

	/* #13 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleOwner"
	.zero	57

	/* #14 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/LiveData"
	.zero	63

	/* #15 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Observer"
	.zero	63

	/* #16 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStore"
	.zero	57

	/* #17 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStoreOwner"
	.zero	52

	/* #18 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554706
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	60

	/* #19 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554708
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	59

	/* #20 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554701
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	65

	/* #21 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554699
	/* java_name */
	.ascii	"android/content/Context"
	.zero	71

	/* #22 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554703
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	64

	/* #23 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554714
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	63

	/* #24 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554710
	/* java_name */
	.ascii	"android/content/DialogInterface$OnCancelListener"
	.zero	46

	/* #25 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554712
	/* java_name */
	.ascii	"android/content/DialogInterface$OnDismissListener"
	.zero	45

	/* #26 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554700
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	72

	/* #27 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554715
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	66

	/* #28 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554721
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	61

	/* #29 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554717
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	54

	/* #30 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554719
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	28

	/* #31 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554723
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	64

	/* #32 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554725
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	61

	/* #33 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554728
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	60

	/* #34 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554729
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	61

	/* #35 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554730
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	65

	/* #36 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554533
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	62

	/* #37 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554666
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	71

	/* #38 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554667
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	66

	/* #39 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554668
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	71

	/* #40 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554669
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	72

	/* #41 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554670
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	72

	/* #42 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554671
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	67

	/* #43 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554672
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	62

	/* #44 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554673
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	73

	/* #45 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554674
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	72

	/* #46 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554675
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	60

	/* #47 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554677
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	51

	/* #48 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554660
	/* java_name */
	.ascii	"android/media/MediaPlayer"
	.zero	69

	/* #49 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554662
	/* java_name */
	.ascii	"android/media/VolumeAutomation"
	.zero	64

	/* #50 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554663
	/* java_name */
	.ascii	"android/media/VolumeShaper"
	.zero	68

	/* #51 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554664
	/* java_name */
	.ascii	"android/media/VolumeShaper$Configuration"
	.zero	54

	/* #52 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554658
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	79

	/* #53 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554648
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	73

	/* #54 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554649
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	77

	/* #55 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554647
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	76

	/* #56 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554654
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	77

	/* #57 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554655
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	77

	/* #58 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554653
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	73

	/* #59 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554651
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	65

	/* #60 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554657
	/* java_name */
	.ascii	"android/os/PersistableBundle"
	.zero	66

	/* #61 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554646
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	58

	/* #62 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554777
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	60

	/* #63 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/design/internal/ScrimInsetsFrameLayout"
	.zero	40

	/* #64 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/design/widget/NavigationView"
	.zero	50

	/* #65 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/design/widget/NavigationView$OnNavigationItemSelectedListener"
	.zero	17

	/* #66 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"
	.zero	41

	/* #67 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	57

	/* #68 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	22

	/* #69 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	32

	/* #70 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	18

	/* #71 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/app/DialogFragment"
	.zero	57

	/* #72 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/app/Fragment"
	.zero	63

	/* #73 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/app/Fragment$SavedState"
	.zero	52

	/* #74 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/app/FragmentActivity"
	.zero	55

	/* #75 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager"
	.zero	56

	/* #76 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$BackStackEntry"
	.zero	41

	/* #77 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	29

	/* #78 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$OnBackStackChangedListener"
	.zero	29

	/* #79 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"android/support/v4/app/FragmentTransaction"
	.zero	52

	/* #80 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager"
	.zero	58

	/* #81 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager$LoaderCallbacks"
	.zero	42

	/* #82 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554469
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	50

	/* #83 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	20

	/* #84 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder"
	.zero	55

	/* #85 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder$SupportParentable"
	.zero	37

	/* #86 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	54

	/* #87 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/content/Loader"
	.zero	61

	/* #88 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCanceledListener"
	.zero	38

	/* #89 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCompleteListener"
	.zero	38

	/* #90 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenu"
	.zero	50

	/* #91 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenuItem"
	.zero	46

	/* #92 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider"
	.zero	56

	/* #93 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$SubUiVisibilityListener"
	.zero	32

	/* #94 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$VisibilityListener"
	.zero	37

	/* #95 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"android/support/v4/view/DisplayCutoutCompat"
	.zero	51

	/* #96 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorCompat"
	.zero	44

	/* #97 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorListener"
	.zero	42

	/* #98 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorUpdateListener"
	.zero	36

	/* #99 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"android/support/v4/view/WindowInsetsCompat"
	.zero	52

	/* #100 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout"
	.zero	56

	/* #101 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout$DrawerListener"
	.zero	41

	/* #102 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar"
	.zero	62

	/* #103 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$LayoutParams"
	.zero	49

	/* #104 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnMenuVisibilityListener"
	.zero	37

	/* #105 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnNavigationListener"
	.zero	41

	/* #106 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$Tab"
	.zero	58

	/* #107 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$TabListener"
	.zero	50

	/* #108 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle"
	.zero	50

	/* #109 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$Delegate"
	.zero	41

	/* #110 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	33

	/* #111 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatActivity"
	.zero	54

	/* #112 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatCallback"
	.zero	54

	/* #113 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDelegate"
	.zero	54

	/* #114 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v7/graphics/drawable/DrawerArrowDrawable"
	.zero	38

	/* #115 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode"
	.zero	60

	/* #116 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode$Callback"
	.zero	51

	/* #117 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder"
	.zero	54

	/* #118 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554480
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder$Callback"
	.zero	45

	/* #119 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554487
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuItemImpl"
	.zero	53

	/* #120 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter"
	.zero	52

	/* #121 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter$Callback"
	.zero	43

	/* #122 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554486
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuView"
	.zero	57

	/* #123 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"android/support/v7/view/menu/SubMenuBuilder"
	.zero	51

	/* #124 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"android/support/v7/widget/DecorToolbar"
	.zero	56

	/* #125 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView"
	.zero	43

	/* #126 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	20

	/* #127 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar"
	.zero	61

	/* #128 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar$OnMenuItemClickListener"
	.zero	37

	/* #129 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	28

	/* #130 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554644
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	69

	/* #131 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554642
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	67

	/* #132 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554645
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	70

	/* #133 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554580
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	71

	/* #134 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554582
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	62

	/* #135 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554585
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	67

	/* #136 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554594
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	70

	/* #137 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554592
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	54

	/* #138 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554587
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	62

	/* #139 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554588
	/* java_name */
	.ascii	"android/view/Display"
	.zero	74

	/* #140 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554589
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	72

	/* #141 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554603
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	71

	/* #142 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554565
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	73

	/* #143 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554567
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	64

	/* #144 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554568
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	67

	/* #145 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554570
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	59

	/* #146 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554572
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	58

	/* #147 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554596
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	77

	/* #148 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554618
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	69

	/* #149 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554602
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	73

	/* #150 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554598
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	50

	/* #151 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554600
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	49

	/* #152 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554573
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	70

	/* #153 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554621
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	70

	/* #154 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554606
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	74

	/* #155 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554557
	/* java_name */
	.ascii	"android/view/View"
	.zero	77

	/* #156 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554559
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	61

	/* #157 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554562
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	49

	/* #158 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554625
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	72

	/* #159 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554626
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	59

	/* #160 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554627
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	53

	/* #161 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554608
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	70

	/* #162 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554610
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	71

	/* #163 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554629
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	61

	/* #164 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554574
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	65

	/* #165 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554576
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	47

	/* #166 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554577
	/* java_name */
	.ascii	"android/view/Window"
	.zero	75

	/* #167 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554579
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	66

	/* #168 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554613
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	68

	/* #169 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554611
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	55

	/* #170 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554635
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	49

	/* #171 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554641
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	43

	/* #172 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554636
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	48

	/* #173 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554631
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	62

	/* #174 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554634
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	59

	/* #175 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554546
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	72

	/* #176 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554535
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	68

	/* #177 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554537
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	45

	/* #178 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554540
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	73

	/* #179 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554548
	/* java_name */
	.ascii	"android/widget/Checkable"
	.zero	70

	/* #180 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554541
	/* java_name */
	.ascii	"android/widget/CompoundButton"
	.zero	65

	/* #181 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554543
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	68

	/* #182 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554544
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	59

	/* #183 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554549
	/* java_name */
	.ascii	"android/widget/ImageView"
	.zero	70

	/* #184 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554552
	/* java_name */
	.ascii	"android/widget/LinearLayout"
	.zero	67

	/* #185 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554553
	/* java_name */
	.ascii	"android/widget/ProgressBar"
	.zero	68

	/* #186 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554554
	/* java_name */
	.ascii	"android/widget/RadioButton"
	.zero	68

	/* #187 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554551
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	65

	/* #188 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554538
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	71

	/* #189 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554555
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	74

	/* #190 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"com/microsoft/appcenter/AbstractAppCenterService"
	.zero	46

	/* #191 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"com/microsoft/appcenter/AppCenter"
	.zero	61

	/* #192 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"com/microsoft/appcenter/AppCenterHandler"
	.zero	54

	/* #193 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"com/microsoft/appcenter/AppCenterService"
	.zero	54

	/* #194 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"com/microsoft/appcenter/BuildConfig"
	.zero	59

	/* #195 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"com/microsoft/appcenter/CancellationException"
	.zero	49

	/* #196 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"com/microsoft/appcenter/Constants"
	.zero	61

	/* #197 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"com/microsoft/appcenter/CustomProperties"
	.zero	54

	/* #198 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"com/microsoft/appcenter/DependencyConfiguration"
	.zero	47

	/* #199 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"com/microsoft/appcenter/Flags"
	.zero	65

	/* #200 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/Analytics"
	.zero	51

	/* #201 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/AnalyticsTransmissionTarget"
	.zero	33

	/* #202 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/AuthenticationProvider"
	.zero	38

	/* #203 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback"
	.zero	15

	/* #204 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider"
	.zero	24

	/* #205 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/AuthenticationProvider$Type"
	.zero	33

	/* #206 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/BuildConfig"
	.zero	49

	/* #207 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/EventProperties"
	.zero	45

	/* #208 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/PropertyConfigurator"
	.zero	40

	/* #209 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/channel/AnalyticsListener"
	.zero	35

	/* #210 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/channel/AnalyticsValidator"
	.zero	34

	/* #211 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/channel/SessionTracker"
	.zero	38

	/* #212 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/ingestion/models/EventLog"
	.zero	35

	/* #213 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties"
	.zero	19

	/* #214 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/ingestion/models/PageLog"
	.zero	36

	/* #215 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/ingestion/models/StartSessionLog"
	.zero	28

	/* #216 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"com/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog"
	.zero	19

	/* #217 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554554
	/* java_name */
	.ascii	"com/microsoft/appcenter/channel/AbstractChannelListener"
	.zero	39

	/* #218 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554574
	/* java_name */
	.ascii	"com/microsoft/appcenter/channel/Channel"
	.zero	55

	/* #219 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554556
	/* java_name */
	.ascii	"com/microsoft/appcenter/channel/Channel$GroupListener"
	.zero	41

	/* #220 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554562
	/* java_name */
	.ascii	"com/microsoft/appcenter/channel/Channel$Listener"
	.zero	46

	/* #221 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554575
	/* java_name */
	.ascii	"com/microsoft/appcenter/channel/OneCollectorChannelListener"
	.zero	35

	/* #222 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554576
	/* java_name */
	.ascii	"com/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq"
	.zero	23

	/* #223 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/AbstractCrashesListener"
	.zero	39

	/* #224 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/BuildConfig"
	.zero	51

	/* #225 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/Crashes"
	.zero	55

	/* #226 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/Crashes$CallbackProcessor"
	.zero	37

	/* #227 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/Crashes$DefaultCrashesListener"
	.zero	32

	/* #228 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/Crashes$ErrorLogReport"
	.zero	40

	/* #229 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder"
	.zero	33

	/* #230 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/CrashesListener"
	.zero	47

	/* #231 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/WrapperSdkExceptionManager"
	.zero	36

	/* #232 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog"
	.zero	29

	/* #233 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog"
	.zero	27

	/* #234 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/ingestion/models/Exception"
	.zero	36

	/* #235 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog"
	.zero	30

	/* #236 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog"
	.zero	30

	/* #237 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/ingestion/models/StackFrame"
	.zero	35

	/* #238 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/ingestion/models/Thread"
	.zero	39

	/* #239 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/model/ErrorReport"
	.zero	45

	/* #240 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/model/NativeException"
	.zero	41

	/* #241 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/model/TestCrashException"
	.zero	38

	/* #242 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"com/microsoft/appcenter/crashes/utils/ErrorLogHelper"
	.zero	42

	/* #243 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554549
	/* java_name */
	.ascii	"com/microsoft/appcenter/http/HttpClient"
	.zero	55

	/* #244 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554547
	/* java_name */
	.ascii	"com/microsoft/appcenter/http/HttpClient$CallTemplate"
	.zero	42

	/* #245 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554544
	/* java_name */
	.ascii	"com/microsoft/appcenter/http/HttpException"
	.zero	52

	/* #246 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554545
	/* java_name */
	.ascii	"com/microsoft/appcenter/http/HttpResponse"
	.zero	53

	/* #247 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554551
	/* java_name */
	.ascii	"com/microsoft/appcenter/http/ServiceCall"
	.zero	54

	/* #248 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554553
	/* java_name */
	.ascii	"com/microsoft/appcenter/http/ServiceCallback"
	.zero	50

	/* #249 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554489
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/AppCenterIngestion"
	.zero	42

	/* #250 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554491
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/Ingestion"
	.zero	51

	/* #251 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554492
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/OneCollectorIngestion"
	.zero	39

	/* #252 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554493
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate"
	.zero	17

	/* #253 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554494
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/AbstractLog"
	.zero	42

	/* #254 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554496
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/CommonProperties"
	.zero	37

	/* #255 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554497
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/CustomPropertiesLog"
	.zero	34

	/* #256 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554498
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/Device"
	.zero	47

	/* #257 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554500
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/Log"
	.zero	50

	/* #258 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554503
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/LogContainer"
	.zero	41

	/* #259 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554504
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/LogWithProperties"
	.zero	36

	/* #260 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554502
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/Model"
	.zero	48

	/* #261 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554506
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/StartServiceLog"
	.zero	38

	/* #262 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554507
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/WrapperSdk"
	.zero	43

	/* #263 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554531
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/json/AbstractLogFactory"
	.zero	30

	/* #264 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554533
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/json/CustomPropertiesLogFactory"
	.zero	22

	/* #265 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554534
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer"
	.zero	28

	/* #266 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554541
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/json/JSONDateUtils"
	.zero	35

	/* #267 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554542
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/json/JSONUtils"
	.zero	39

	/* #268 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554536
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/json/LogFactory"
	.zero	38

	/* #269 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554538
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/json/LogSerializer"
	.zero	35

	/* #270 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554540
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/json/ModelFactory"
	.zero	36

	/* #271 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554543
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/json/StartServiceLogFactory"
	.zero	26

	/* #272 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554516
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/AppExtension"
	.zero	37

	/* #273 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554517
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils"
	.zero	28

	/* #274 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554518
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/CommonSchemaLog"
	.zero	34

	/* #275 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554520
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/Data"
	.zero	45

	/* #276 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554521
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/DeviceExtension"
	.zero	34

	/* #277 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554522
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/Extensions"
	.zero	39

	/* #278 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554523
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/LocExtension"
	.zero	37

	/* #279 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554524
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/MetadataExtension"
	.zero	32

	/* #280 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554525
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/NetExtension"
	.zero	37

	/* #281 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554526
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/OsExtension"
	.zero	38

	/* #282 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554527
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/PartAUtils"
	.zero	39

	/* #283 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554528
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/ProtocolExtension"
	.zero	32

	/* #284 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554529
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/SdkExtension"
	.zero	37

	/* #285 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554530
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/one/UserExtension"
	.zero	36

	/* #286 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554508
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty"
	.zero	22

	/* #287 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554509
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty"
	.zero	21

	/* #288 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554510
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty"
	.zero	23

	/* #289 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554511
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/properties/LongTypedProperty"
	.zero	25

	/* #290 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554512
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/properties/StringTypedProperty"
	.zero	23

	/* #291 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554513
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/properties/TypedProperty"
	.zero	29

	/* #292 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554515
	/* java_name */
	.ascii	"com/microsoft/appcenter/ingestion/models/properties/TypedPropertyUtils"
	.zero	24

	/* #293 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/AppCenterLog"
	.zero	52

	/* #294 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/AppNameHelper"
	.zero	51

	/* #295 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/ApplicationLifecycleListener"
	.zero	36

	/* #296 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks"
	.zero	6

	/* #297 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/AsyncTaskUtils"
	.zero	50

	/* #298 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/DeviceInfoHelper"
	.zero	48

	/* #299 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException"
	.zero	28

	/* #300 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/HandlerUtils"
	.zero	52

	/* #301 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/HashUtils"
	.zero	55

	/* #302 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/IdHelper"
	.zero	56

	/* #303 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/InstrumentationRegistryHelper"
	.zero	35

	/* #304 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/NetworkStateHelper"
	.zero	46

	/* #305 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/NetworkStateHelper$Listener"
	.zero	37

	/* #306 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/PrefStorageConstants"
	.zero	44

	/* #307 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/ShutdownHelper"
	.zero	50

	/* #308 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/TicketCache"
	.zero	53

	/* #309 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554486
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/async/AppCenterConsumer"
	.zero	41

	/* #310 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/async/AppCenterFuture"
	.zero	43

	/* #311 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/async/DefaultAppCenterFuture"
	.zero	36

	/* #312 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554477
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/context/SessionContext"
	.zero	42

	/* #313 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/context/SessionContext$SessionInfo"
	.zero	30

	/* #314 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/context/UserIdContext"
	.zero	43

	/* #315 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554481
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/context/UserIdContext$Listener"
	.zero	34

	/* #316 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/crypto/CryptoUtils"
	.zero	46

	/* #317 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554469
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry"
	.zero	27

	/* #318 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554470
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData"
	.zero	32

	/* #319 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher"
	.zero	38

	/* #320 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory"
	.zero	31

	/* #321 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"com/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator"
	.zero	32

	/* #322 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"crc64350623dcb797cc38/AndroidHttpClientAdapter"
	.zero	48

	/* #323 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"crc64350623dcb797cc38/ServiceCall"
	.zero	61

	/* #324 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"crc6456a717e906b6d9ef/CompletedFragment"
	.zero	55

	/* #325 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"crc6487344babf955990e/ActivityAboutUs"
	.zero	57

	/* #326 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"crc6487344babf955990e/DescriptionActivity"
	.zero	53

	/* #327 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"crc6487344babf955990e/QuizActivity"
	.zero	60

	/* #328 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"crc6487344babf955990e/SplashActivity"
	.zero	58

	/* #329 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"crc64a4555f9f70c213ae/Crashes_AndroidCrashListener"
	.zero	44

	/* #330 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc64e58dc5e1616f264b/MainActivity"
	.zero	60

	/* #331 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554923
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	77

	/* #332 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554919
	/* java_name */
	.ascii	"java/io/File"
	.zero	82

	/* #333 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554920
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	72

	/* #334 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554921
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	71

	/* #335 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554925
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	77

	/* #336 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554928
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	75

	/* #337 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554926
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	75

	/* #338 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554931
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	74

	/* #339 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554933
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	75

	/* #340 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554930
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	74

	/* #341 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554934
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	74

	/* #342 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554935
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	80

	/* #343 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554885
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	74

	/* #344 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554887
	/* java_name */
	.ascii	"java/lang/AutoCloseable"
	.zero	71

	/* #345 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554861
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	77

	/* #346 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554862
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	80

	/* #347 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554888
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	72

	/* #348 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554863
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	75

	/* #349 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554864
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	79

	/* #350 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554880
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	66

	/* #351 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554865
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	62

	/* #352 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554891
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	75

	/* #353 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554893
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	74

	/* #354 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554866
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	78

	/* #355 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554881
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	80

	/* #356 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554883
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	79

	/* #357 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554867
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	75

	/* #358 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554868
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	79

	/* #359 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554896
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	60

	/* #360 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554897
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	63

	/* #361 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554898
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	59

	/* #362 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554870
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	77

	/* #363 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554895
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	76

	/* #364 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554901
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	72

	/* #365 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554871
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	80

	/* #366 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554902
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	64

	/* #367 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554903
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	64

	/* #368 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554904
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	78

	/* #369 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554872
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	78

	/* #370 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554906
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	56

	/* #371 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554900
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	76

	/* #372 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554873
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	68

	/* #373 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554874
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	79

	/* #374 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554907
	/* java_name */
	.ascii	"java/lang/StackTraceElement"
	.zero	67

	/* #375 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554875
	/* java_name */
	.ascii	"java/lang/String"
	.zero	78

	/* #376 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554877
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	78

	/* #377 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554879
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	75

	/* #378 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554908
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	55

	/* #379 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554910
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	63

	/* #380 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554912
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	60

	/* #381 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554914
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	58

	/* #382 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554916
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	72

	/* #383 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554918
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	64

	/* #384 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554801
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	72

	/* #385 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554803
	/* java_name */
	.ascii	"java/net/URL"
	.zero	82

	/* #386 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554837
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	79

	/* #387 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554839
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	75

	/* #388 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554844
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	65

	/* #389 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554846
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	69

	/* #390 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554841
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	65

	/* #391 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554848
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	56

	/* #392 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554850
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	56

	/* #393 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554852
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	57

	/* #394 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554854
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	55

	/* #395 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554856
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	57

	/* #396 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554858
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	57

	/* #397 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554859
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	44

	/* #398 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554822
	/* java_name */
	.ascii	"java/security/Key"
	.zero	77

	/* #399 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554823
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	72

	/* #400 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554825
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	53

	/* #401 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554827
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	52

	/* #402 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554830
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	64

	/* #403 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554832
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	57

	/* #404 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554835
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	60

	/* #405 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554834
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	62

	/* #406 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554829
	/* java_name */
	.ascii	"java/security/spec/AlgorithmParameterSpec"
	.zero	53

	/* #407 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554804
	/* java_name */
	.ascii	"java/util/AbstractCollection"
	.zero	66

	/* #408 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554806
	/* java_name */
	.ascii	"java/util/AbstractList"
	.zero	72

	/* #409 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554769
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	75

	/* #410 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554758
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	74

	/* #411 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554809
	/* java_name */
	.ascii	"java/util/Date"
	.zero	80

	/* #412 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554760
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	77

	/* #413 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554778
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	77

	/* #414 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554813
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	76

	/* #415 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554815
	/* java_name */
	.ascii	"java/util/List"
	.zero	80

	/* #416 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554817
	/* java_name */
	.ascii	"java/util/ListIterator"
	.zero	72

	/* #417 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554819
	/* java_name */
	.ascii	"java/util/RandomAccess"
	.zero	72

	/* #418 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554820
	/* java_name */
	.ascii	"java/util/UUID"
	.zero	80

	/* #419 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554527
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	68

	/* #420 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554530
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	61

	/* #421 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554529
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	64

	/* #422 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554958
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	70

	/* #423 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554753
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	55

	/* #424 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	64

	/* #425 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554775
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	63

	/* #426 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554793
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	54

	/* #427 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"mono/android/support/design/widget/NavigationView_OnNavigationItemSelectedListenerImplementor"
	.zero	1

	/* #428 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	13

	/* #429 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	16

	/* #430 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor"
	.zero	21

	/* #431 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	25

	/* #432 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	21

	/* #433 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	21

	/* #434 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554560
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	45

	/* #435 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"mono/com/microsoft/appcenter/analytics/channel/AnalyticsListenerImplementor"
	.zero	19

	/* #436 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554560
	/* java_name */
	.ascii	"mono/com/microsoft/appcenter/channel/Channel_GroupListenerImplementor"
	.zero	25

	/* #437 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554572
	/* java_name */
	.ascii	"mono/com/microsoft/appcenter/channel/Channel_ListenerImplementor"
	.zero	30

	/* #438 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"mono/com/microsoft/appcenter/crashes/CrashesListenerImplementor"
	.zero	31

	/* #439 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"mono/com/microsoft/appcenter/utils/NetworkStateHelper_ListenerImplementor"
	.zero	21

	/* #440 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554483
	/* java_name */
	.ascii	"mono/com/microsoft/appcenter/utils/context/UserIdContext_ListenerImplementor"
	.zero	18

	/* #441 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554878
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	60

	/* #442 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554524
	/* java_name */
	.ascii	"org/json/JSONObject"
	.zero	75

	/* #443 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554525
	/* java_name */
	.ascii	"org/json/JSONStringer"
	.zero	73

	.size	map_java, 45288
/* Java to managed map: END */


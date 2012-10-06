.class public Lcom/android/systemui/statusbar/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;
    }
.end annotation


# static fields
.field private static mBluetoothA2dpConnected:Z

.field private static mBluetoothEnabled:Z

.field private static mBluetoothHeadsetState:I

.field private static mBluetoothPbapState:I

.field private static sBluetoothHaveInited:Z

.field private static final sDataNetType_1x:[[I

.field private static final sDataNetType_3g:[[I

.field private static final sDataNetType_e:[[I

.field private static final sDataNetType_g:[[I

.field private static final sDataNetType_h:[[I

.field private static final sRoamingIndicatorImages_cdma:[I

.field private static final sSignalImages:[[I

.field private static final sSignalImages_cdma:[I

.field private static final sSignalImages_evdo:[I

.field private static final sSignalImages_r:[[I

.field private static final sWifiSignalImages:[[I

.field private static final sWimaxSignalImages:[[I


# instance fields
.field private mBatteryFirst:Z

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mIsWimaxConnected:Z

.field private mIsWimaxEnabled:Z

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrivacyModeEnabled:Z

.field private final mService:Landroid/app/StatusBarManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumeVisible:Z

.field private mWimaxSignal:I

.field private mWimaxState:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 117
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages:[[I

    .line 129
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_r:[[I

    .line 142
    new-array v0, v6, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_evdo:[I

    .line 149
    new-array v0, v6, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_cdma:[I

    .line 156
    const/16 v0, 0xf0

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 415
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_g:[[I

    .line 425
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    .line 435
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_e:[[I

    .line 446
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_h:[[I

    .line 459
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_1x:[[I

    .line 494
    sput-boolean v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sBluetoothHaveInited:Z

    .line 504
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    .line 521
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWimaxSignalImages:[[I

    return-void

    .line 117
    nop

    :array_0
    .array-data 0x4
        0x94t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x96t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
    .end array-data

    .line 129
    :array_2
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x7ft 0x0t 0x2t 0x7ft
        0x82t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 142
    :array_4
    .array-data 0x4
        0x6ct 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
    .end array-data

    .line 149
    :array_5
    .array-data 0x4
        0xb7t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
    .end array-data

    .line 156
    :array_6
    .array-data 0x4
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
    .end array-data

    .line 415
    :array_7
    .array-data 0x4
        0x27t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 425
    :array_9
    .array-data 0x4
        0x22t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x2ct 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
    .end array-data

    .line 435
    :array_b
    .array-data 0x4
        0x25t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x2et 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
    .end array-data

    .line 446
    :array_d
    .array-data 0x4
        0x29t 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x30t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 459
    :array_f
    .array-data 0x4
        0x21t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x2bt 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
    .end array-data

    .line 504
    :array_11
    .array-data 0x4
        0xabt 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0xadt 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 521
    :array_13
    .array-data 0x4
        0x62t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0x63t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "alarm_clock"

    const-string v9, "bluetooth"

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v4, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;

    invoke-direct {v4, p0, v10}, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;Lcom/android/systemui/statusbar/StatusBarPolicy$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 100
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryFirst:Z

    .line 107
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 413
    sget-object v4, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_g:[[I

    aget-object v4, v4, v7

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    .line 472
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 473
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    .line 474
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:I

    .line 475
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    .line 517
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 518
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    .line 534
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 535
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    .line 536
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    .line 537
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxState:I

    .line 540
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    .line 546
    new-instance v4, Lcom/android/systemui/statusbar/StatusBarPolicy$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 939
    new-instance v4, Lcom/android/systemui/statusbar/StatusBarPolicy$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1011
    new-instance v4, Lcom/android/systemui/statusbar/StatusBarPolicy$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 614
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    .line 615
    const-string v4, "statusbar"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 616
    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 617
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 620
    new-instance v4, Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {v4, p1}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 621
    const-string v4, "storage"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 622
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 625
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "battery"

    const v6, 0x10805db

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 628
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 629
    const v4, 0x7f0200a5

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 630
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "phone_signal"

    iget v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 633
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 634
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "phone_evdo_signal"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 637
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x1e1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 645
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "privacy_mode"

    const v6, 0x10805ea

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 646
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "privacy_mode_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v8, v4, :cond_2

    move v4, v8

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    .line 648
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "privacy_mode"

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 651
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "data_connection"

    const v6, 0x7f020027

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 652
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "data_connection"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 655
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wifi"

    sget-object v6, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v6, v6, v7

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 656
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wifi"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 661
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 663
    .local v3, isWimaxEnabled:Z
    if-eqz v3, :cond_0

    .line 664
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wimax"

    const v6, 0x7f02006a

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 665
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wimax"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 669
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    const v6, 0x7f0200a7

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 670
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 673
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "cdma_eri"

    const v6, 0x7f020090

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 674
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "cdma_eri"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 677
    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBarPolicy;->sBluetoothHaveInited:Z

    if-nez v4, :cond_1

    .line 678
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 679
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_3

    .line 680
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 684
    :goto_1
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    .line 685
    sput v7, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothHeadsetState:I

    .line 686
    sput v7, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothPbapState:I

    .line 687
    sput-boolean v8, Lcom/android/systemui/statusbar/StatusBarPolicy;->sBluetoothHaveInited:Z

    .line 689
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showBluetoothConnectedIcon()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 690
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    const v5, 0x7f02001f

    invoke-virtual {v4, v9, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 694
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v4, v9, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 697
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "gps"

    const v6, 0x7f020078

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 698
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "gps"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 701
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "alarm_clock"

    const v5, 0x7f02001a

    invoke-virtual {v4, v11, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 702
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "alarm_clock"

    invoke-virtual {v4, v11, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 705
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "sync_active"

    const v6, 0x10805c8

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 706
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "sync_failing"

    const v6, 0x10805c9

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 707
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "sync_active"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 708
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "sync_failing"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 711
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    const v6, 0x7f02008c

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 712
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 713
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateVolume()V

    .line 715
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 718
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 719
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    const-string v4, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    const-string v4, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    const-string v4, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string v4, "android.intent.action.PRIVACY_MODE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    const-string v4, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v4, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    const-string v4, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    const-string v4, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    const-string v4, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    const-string v4, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    const-string v4, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 737
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    const-string v4, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    const-string v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 741
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    const-string v4, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    const-string v4, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v4, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v4, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v4, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string v4, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v2, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 753
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f07

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_3
    return-void

    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #isWimaxEnabled:Z
    :cond_2
    move v4, v7

    .line 646
    goto/16 :goto_0

    .line 682
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v3       #isWimaxEnabled:Z
    :cond_3
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_1

    .line 692
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    const v5, 0x7f02001d

    invoke-virtual {v4, v9, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 755
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 756
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_3
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updatePrivacyMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateHeadset(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method private closeLastBatteryView()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 956
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 959
    :cond_0
    return-void
.end method

.method private getCdmaLevel()I
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1160
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1164
    const/16 v2, -0x4b

    if-lt v0, v2, :cond_0

    move v2, v5

    .line 1171
    :goto_0
    const/16 v3, -0x5a

    if-lt v1, v3, :cond_4

    move v3, v5

    .line 1177
    :goto_1
    const-string v4, "CDMA"

    const-string v5, "phone cdma signal: dbm=%d, ecio=%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    if-ge v2, v3, :cond_8

    move v0, v2

    :goto_2
    return v0

    .line 1165
    :cond_0
    const/16 v2, -0x55

    if-lt v0, v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 1166
    :cond_1
    const/16 v2, -0x5f

    if-lt v0, v2, :cond_2

    move v2, v6

    goto :goto_0

    .line 1167
    :cond_2
    const/16 v2, -0x64

    if-lt v0, v2, :cond_3

    move v2, v8

    goto :goto_0

    :cond_3
    move v2, v7

    .line 1168
    goto :goto_0

    .line 1172
    :cond_4
    const/16 v3, -0x6e

    if-lt v1, v3, :cond_5

    move v3, v4

    goto :goto_1

    .line 1173
    :cond_5
    const/16 v3, -0x82

    if-lt v1, v3, :cond_6

    move v3, v6

    goto :goto_1

    .line 1174
    :cond_6
    const/16 v3, -0x96

    if-lt v1, v3, :cond_7

    move v3, v8

    goto :goto_1

    :cond_7
    move v3, v7

    .line 1175
    goto :goto_1

    :cond_8
    move v0, v3

    .line 1178
    goto :goto_2
.end method

.method private getEvdoLevel()I
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1183
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1187
    const/16 v2, -0x41

    if-lt v0, v2, :cond_0

    move v2, v5

    .line 1193
    :goto_0
    const/4 v3, 0x7

    if-lt v1, v3, :cond_4

    move v3, v5

    .line 1199
    :goto_1
    const-string v4, "CDMA"

    const-string v5, "phone evdo signal: dbm=%d, ecio=%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    if-ge v2, v3, :cond_8

    move v0, v2

    :goto_2
    return v0

    .line 1188
    :cond_0
    const/16 v2, -0x4b

    if-lt v0, v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 1189
    :cond_1
    const/16 v2, -0x5a

    if-lt v0, v2, :cond_2

    move v2, v6

    goto :goto_0

    .line 1190
    :cond_2
    const/16 v2, -0x69

    if-lt v0, v2, :cond_3

    move v2, v7

    goto :goto_0

    :cond_3
    move v2, v8

    .line 1191
    goto :goto_0

    .line 1194
    :cond_4
    const/4 v3, 0x5

    if-lt v1, v3, :cond_5

    move v3, v4

    goto :goto_1

    .line 1195
    :cond_5
    if-lt v1, v4, :cond_6

    move v3, v6

    goto :goto_1

    .line 1196
    :cond_6
    if-lt v1, v7, :cond_7

    move v3, v7

    goto :goto_1

    :cond_7
    move v3, v8

    .line 1197
    goto :goto_1

    :cond_8
    move v0, v3

    .line 1200
    goto :goto_2
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1098
    :pswitch_0
    const/4 v0, 0x1

    .line 1101
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1096
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1101
    goto :goto_0

    .line 1093
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showLowBatteryWarning()V

    .line 835
    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 843
    :cond_0
    return-void
.end method

.method private showBluetoothConnectedIcon()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 497
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothPbapState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLowBatteryWarning()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 857
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->closeLastBatteryView()V

    .line 860
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f090007

    new-array v10, v13, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevel:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 863
    .local v4, levelText:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 864
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 899
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v8, "power_sounds_enabled"

    invoke-static {v1, v8, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v13, :cond_0

    .line 902
    const-string v8, "low_battery_sound"

    invoke-static {v1, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 904
    .local v6, soundPath:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 905
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 906
    .local v7, soundUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 907
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 908
    .local v5, sfx:Landroid/media/Ringtone;
    if-eqz v5, :cond_0

    .line 909
    invoke-virtual {v5, v13}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 910
    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    .line 915
    .end local v5           #sfx:Landroid/media/Ringtone;
    .end local v6           #soundPath:Ljava/lang/String;
    .end local v7           #soundUri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 866
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 867
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 868
    const v8, 0x7f090005

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 869
    sget-object v8, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 870
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 871
    const v8, 0x7f020011

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 872
    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 874
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x5880

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 879
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 880
    const v8, 0x7f090008

    new-instance v9, Lcom/android/systemui/statusbar/StatusBarPolicy$2;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/StatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 891
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 892
    .local v2, d:Landroid/app/AlertDialog;
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 893
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 894
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 895
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 767
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 768
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 769
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "level"

    .line 780
    const-string v4, "icon-small"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 781
    .local v0, id:I
    const-string v4, "level"

    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 783
    .local v1, level:I
    const/16 v4, 0x64

    if-ge v1, v4, :cond_0

    const/4 v4, 0x5

    const-string v5, "status"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 786
    :cond_0
    const v0, 0x10805cc

    .line 789
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "battery"

    invoke-virtual {v4, v5, v0, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 791
    const-string v4, "plugged"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v3, v7

    .line 792
    .local v3, plugged:Z
    :goto_0
    const-string v4, "level"

    const/4 v4, -0x1

    invoke-virtual {p1, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 801
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryPlugged:Z

    .line 803
    .local v2, oldPlugged:Z
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryPlugged:Z

    .line 804
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevel:I

    .line 806
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v4, :cond_2

    .line 807
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryFirst:Z

    .line 819
    :cond_2
    return-void

    .end local v2           #oldPlugged:Z
    .end local v3           #plugged:Z
    :cond_3
    move v3, v6

    .line 791
    goto :goto_0
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "bluetooth"

    .line 1339
    const v0, 0x7f02001d

    .line 1340
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1341
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1342
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1343
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    move v1, v4

    :goto_0
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 1361
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showBluetoothConnectedIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    const v0, 0x7f02001f

    .line 1365
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1367
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 1343
    goto :goto_0

    .line 1344
    :cond_3
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1345
    const-string v1, "android.bluetooth.headset.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    .line 1347
    :cond_4
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1348
    new-instance v1, Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1349
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1350
    sput-boolean v4, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1352
    :cond_5
    sput-boolean v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1354
    :cond_6
    const-string v2, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1355
    const-string v1, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothPbapState:I

    goto :goto_1
.end method

.method private final updateCallState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 918
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    .line 924
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    .line 925
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    .line 926
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    .line 927
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showLowBatteryWarning()V

    .line 929
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 937
    :cond_1
    :goto_0
    return-void

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "StatusBarPolicy"

    const-string v4, "cdma_eri"

    .line 1517
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1563
    :goto_0
    return-void

    .line 1522
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1527
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 1528
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    .line 1529
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 1531
    if-ne v1, v7, :cond_2

    .line 1532
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1536
    :cond_2
    if-ne v2, v7, :cond_3

    .line 1537
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1541
    :cond_3
    if-ne v1, v6, :cond_4

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1547
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 1562
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 1549
    :pswitch_0
    array-length v2, v0

    if-lt v1, v2, :cond_5

    .line 1550
    const-string v0, "StatusBarPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown iconIndex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping ERI icon update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1553
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "cdma_eri"

    aget v0, v0, v1

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1557
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    const v1, 0x7f020091

    invoke-virtual {v0, v4, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1558
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "wifi"

    .line 962
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    move-object v0, v3

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v2, v0

    .line 968
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1009
    :goto_0
    return-void

    .line 970
    :sswitch_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataNetType(I)V

    .line 971
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon()V

    .line 972
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_0

    .line 975
    :sswitch_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 976
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    .line 978
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v3, v4, :cond_0

    .line 979
    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v3, v4

    aget v1, v3, v5

    .line 983
    .local v1, iconId:I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v7, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 985
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 995
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_0

    .line 981
    .end local v1           #iconId:I
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v1, v3, v4

    .restart local v1       #iconId:I
    goto :goto_1

    .line 987
    .end local v1           #iconId:I
    :cond_1
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 988
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    .line 989
    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v3, v3, v5

    aget v1, v3, v5

    .line 991
    .restart local v1       #iconId:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v7, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 993
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v7, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2

    .line 998
    .end local v1           #iconId:I
    :sswitch_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 999
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 1000
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wimax"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1004
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    goto :goto_0

    .line 1002
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxConnected:Z

    goto :goto_3

    .line 968
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateDataIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "data_connection"

    .line 1254
    .line 1256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 1259
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_2

    .line 1260
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_0

    .line 1271
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1274
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    .line 1306
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1308
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1314
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v1, v0, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1316
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconVisible:Z

    .line 1318
    :cond_1
    return-void

    .line 1262
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_0

    .line 1265
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_0

    .line 1268
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1276
    goto :goto_1

    .line 1279
    :cond_3
    const v0, 0x7f02007b

    .line 1280
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1284
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_5

    .line 1285
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1300
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1287
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_3

    .line 1290
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_3

    .line 1293
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_3

    :cond_5
    move v0, v3

    .line 1302
    goto :goto_1

    .line 1309
    :catch_0
    move-exception v3

    .line 1311
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1285
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 2
    .parameter "net"

    .prologue
    .line 1204
    packed-switch p1, :pswitch_data_0

    .line 1233
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    .line 1236
    :goto_0
    return-void

    .line 1206
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1209
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1214
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    .line 1215
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_h:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1217
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1222
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1225
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1230
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1204
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "gps"

    .line 1472
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1473
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1475
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x10805e7

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1487
    :goto_0
    return-void

    .line 1479
    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 1481
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x7f020078

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1485
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateHeadset(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "headset"

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    const-string v1, "microphone"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const v1, 0x1080083

    :goto_0
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    const-string v1, "state"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1514
    return-void

    .line 1508
    :cond_0
    const v1, 0x10805e8

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1513
    goto :goto_1
.end method

.method private final updatePrivacyMode(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "privacy_mode"

    .line 1239
    const-string v1, "privacy_mode_enabled"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1242
    .local v0, isPrivacyEnabled:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1243
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    .line 1244
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPrivacyModeEnabled:Z

    if-eqz v1, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "privacy_mode"

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "privacy_mode"

    invoke-virtual {v1, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateSignalStrength()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "GSM"

    const-string v6, "phone_evdo_signal"

    .line 1106
    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1114
    const v0, 0x7f0200a3

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1118
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_evdo_signal"

    invoke-virtual {v0, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1120
    const-string v0, "GSM"

    const-string v0, "no service"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_1
    return-void

    .line 1116
    :cond_1
    const v0, 0x7f0200a5

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_0

    .line 1124
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1126
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1127
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_r:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    .line 1135
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1136
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 1142
    if-le v1, v3, :cond_3

    const/16 v2, 0x63

    if-ne v1, v2, :cond_6

    :cond_3
    move v2, v5

    .line 1147
    :goto_3
    const-string v3, "GSM"

    const-string v3, "phone gsm signal: asu=%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1154
    :goto_4
    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1129
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    goto :goto_2

    .line 1132
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    goto :goto_2

    .line 1143
    :cond_6
    const/16 v2, 0xc

    if-lt v1, v2, :cond_7

    const/4 v2, 0x4

    goto :goto_3

    .line 1144
    :cond_7
    const/16 v2, 0x8

    if-lt v1, v2, :cond_8

    const/4 v2, 0x3

    goto :goto_3

    .line 1145
    :cond_8
    const/4 v2, 0x5

    if-lt v1, v2, :cond_9

    move v2, v3

    goto :goto_3

    :cond_9
    move v2, v4

    .line 1146
    goto :goto_3

    .line 1149
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_cdma:[I

    .line 1150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getCdmaLevel()I

    move-result v1

    .line 1151
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "phone_evdo_signal"

    sget-object v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_evdo:[I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getEvdoLevel()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v6, v3, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1152
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "phone_evdo_signal"

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isEvdo()Z

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1053
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1055
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1074
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon()V

    .line 1075
    return-void

    .line 1057
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1058
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1060
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1061
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1063
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1065
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1066
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1069
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1072
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 772
    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 773
    .local v0, isActive:Z
    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 774
    .local v1, isFailing:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 777
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "tty"

    .line 1490
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1491
    const-string v0, "ttyEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1495
    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v1, 0x7f0200a7

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1499
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1505
    :goto_0
    return-void

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v3, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "volume"

    .line 1321
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1322
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1323
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_3

    :cond_0
    move v1, v2

    .line 1325
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVibrateEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f02008e

    .line 1328
    :goto_1
    if-eqz v1, :cond_1

    .line 1329
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    invoke-virtual {v2, v5, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1332
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v1, v0, :cond_2

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "volume"

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1334
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mVolumeVisible:Z

    .line 1336
    :cond_2
    return-void

    :cond_3
    move v1, v4

    .line 1323
    goto :goto_0

    .line 1325
    :cond_4
    const v0, 0x7f02008c

    goto :goto_1
.end method

.method private final updateWiMAX(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f02006a

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v6, "wimax"

    .line 1406
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1409
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1410
    const-string v0, "wimax_status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1412
    packed-switch v0, :pswitch_data_0

    .line 1468
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    invoke-virtual {v0, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1469
    return-void

    .line 1414
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 1417
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 1420
    :cond_1
    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1421
    const-string v0, "curWimaxEnabledState"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1423
    if-ne v0, v5, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    .line 1424
    :cond_3
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1425
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    goto :goto_0

    .line 1426
    :cond_4
    const-string v1, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1427
    const-string v0, "newRssiLevel"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1428
    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiMAX RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    if-lt v0, v5, :cond_5

    .line 1430
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    goto :goto_0

    .line 1431
    :cond_5
    if-gtz v0, :cond_6

    .line 1432
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    goto :goto_0

    .line 1434
    :cond_6
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    goto :goto_0

    .line 1436
    :cond_7
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1437
    const-string v0, "WimaxState"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxState:I

    .line 1439
    const-string v0, "WimaxStateDetail"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1443
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxState:I

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    move v0, v3

    .line 1456
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wimax"

    invoke-virtual {v1, v6, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_4
    move v0, v3

    .line 1446
    goto :goto_2

    .line 1448
    :pswitch_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 1449
    const v0, 0x7f02006b

    goto :goto_2

    .line 1452
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWimaxSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    aget v0, v0, v1

    goto :goto_2

    .line 1457
    :cond_9
    const-string v1, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1459
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1460
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWimaxSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    aget v0, v0, v1

    .line 1466
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wimax"

    invoke-virtual {v1, v6, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1461
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1462
    const v0, 0x7f02006b

    goto :goto_3

    :cond_b
    move v0, v3

    .line 1464
    goto :goto_3

    .line 1412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1443
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "wifi"

    .line 1370
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1371
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1373
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1376
    :goto_0
    if-nez v0, :cond_0

    .line 1378
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1402
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    invoke-virtual {v0, v4, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1403
    return-void

    :cond_1
    move v0, v3

    .line 1373
    goto :goto_0

    .line 1381
    :cond_2
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1382
    const-string v0, "connected"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1384
    if-nez v0, :cond_0

    .line 1385
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    goto :goto_1

    .line 1387
    :cond_3
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1390
    sget-object v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1392
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v0, v1, :cond_0

    .line 1393
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1394
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v1, :cond_4

    .line 1395
    sget-object v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    .line 1399
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v4, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1397
    :cond_4
    const v0, 0x7f0200a9

    goto :goto_2
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 764
    return-void
.end method

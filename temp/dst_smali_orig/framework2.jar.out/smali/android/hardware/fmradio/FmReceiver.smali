.class public Landroid/hardware/fmradio/FmReceiver;
.super Landroid/hardware/fmradio/FmTransceiver;
.source "FmReceiver.java"


# static fields
.field public static final FM_RX_AUDIO_MODE_MONO:I = 0x1

.field public static final FM_RX_AUDIO_MODE_STEREO:I = 0x0

.field public static final FM_RX_DWELL_PERIOD_0S:I = 0x0

.field public static final FM_RX_DWELL_PERIOD_1S:I = 0x1

.field public static final FM_RX_DWELL_PERIOD_2S:I = 0x2

.field public static final FM_RX_DWELL_PERIOD_3S:I = 0x3

.field public static final FM_RX_DWELL_PERIOD_4S:I = 0x4

.field public static final FM_RX_DWELL_PERIOD_5S:I = 0x5

.field public static final FM_RX_DWELL_PERIOD_6S:I = 0x6

.field public static final FM_RX_DWELL_PERIOD_7S:I = 0x7

.field public static final FM_RX_LOW_POWER_MODE:I = 0x1

.field public static final FM_RX_MUTE:I = 0x1

.field public static final FM_RX_NORMAL_POWER_MODE:I = 0x0

.field public static final FM_RX_RDS_GRP_AF_EBL:I = 0x4

.field public static final FM_RX_RDS_GRP_PS_EBL:I = 0x2

.field public static final FM_RX_RDS_GRP_PS_SIMPLE_EBL:I = 0x10

.field public static final FM_RX_RDS_GRP_RT_EBL:I = 0x1

.field private static final FM_RX_RSSI_LEVEL_STRONG:I = -0x60

.field private static final FM_RX_RSSI_LEVEL_VERY_STRONG:I = -0x5a

.field private static final FM_RX_RSSI_LEVEL_VERY_WEAK:I = -0x69

.field private static final FM_RX_RSSI_LEVEL_WEAK:I = -0x64

.field public static final FM_RX_SEARCHDIR_DOWN:I = 0x0

.field public static final FM_RX_SEARCHDIR_UP:I = 0x1

.field public static final FM_RX_SIGNAL_STRENGTH_STRONG:I = 0x2

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_STRONG:I = 0x3

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_WEAK:I = 0x0

.field public static final FM_RX_SIGNAL_STRENGTH_WEAK:I = 0x1

.field public static final FM_RX_SRCHLIST_MAX_STATIONS:I = 0xc

.field public static final FM_RX_SRCHLIST_MODE_STRONG:I = 0x2

.field public static final FM_RX_SRCHLIST_MODE_STRONGEST:I = 0x8

.field public static final FM_RX_SRCHLIST_MODE_WEAK:I = 0x3

.field public static final FM_RX_SRCHLIST_MODE_WEAKEST:I = 0x9

.field public static final FM_RX_SRCHRDS_MODE_SCAN_PTY:I = 0x5

.field public static final FM_RX_SRCHRDS_MODE_SEEK_AF:I = 0x7

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PI:I = 0x6

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PTY:I = 0x4

.field public static final FM_RX_SRCH_MODE_SCAN:I = 0x1

.field public static final FM_RX_SRCH_MODE_SEEK:I = 0x0

.field public static final FM_RX_UNMUTE:I = 0x0

.field static final STD_BUF_SIZE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "FMRadio"

.field private static final TAVARUA_BUF_AF_LIST:I = 0x5

.field private static final TAVARUA_BUF_EVENTS:I = 0x1

.field private static final TAVARUA_BUF_MAX:I = 0x6

.field private static final TAVARUA_BUF_PS_RDS:I = 0x3

.field private static final TAVARUA_BUF_RAW_RDS:I = 0x4

.field private static final TAVARUA_BUF_RT_RDS:I = 0x2

.field private static final TAVARUA_BUF_SRCH_LIST:I = 0x0

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008

.field public static mSearchState:I


# instance fields
.field private mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/hardware/fmradio/FmReceiver;->mSearchState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    new-instance v0, Landroid/hardware/fmradio/FmRxRdsData;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;)V
    .locals 1
    .parameter "devicePath"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    iput-object p2, p0, Landroid/hardware/fmradio/FmReceiver;->mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    return-void
.end method

.method static getSearchState()I
    .locals 1

    .prologue
    sget v0, Landroid/hardware/fmradio/FmReceiver;->mSearchState:I

    return v0
.end method

.method static setSearchState(I)V
    .locals 1
    .parameter "state"

    .prologue
    sput p0, Landroid/hardware/fmradio/FmReceiver;->mSearchState:I

    sget v0, Landroid/hardware/fmradio/FmReceiver;->mSearchState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .local v0, state:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v2, "FMRadio"

    const-string v3, "cancelSearch: Cancelling the on going search operation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    iget-object v2, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v2, v3}, Landroid/hardware/fmradio/FmRxControls;->cancelSearch(I)V

    const/4 v1, 0x1

    .end local v1           #status:Z
    :goto_0
    return v1

    .restart local v1       #status:Z
    :cond_0
    const-string v2, "FMRadio"

    const-string v3, "cancelSearch: No on going search operation to cancel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public configureSpurTable()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->configureSpurTable(I)I

    move-result v0

    return v0
.end method

.method public disable()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    .local v2, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x6

    invoke-static {v3}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    const-string v3, "FMRadio"

    const-string v4, "disable: CURRENT-STATE : FMRxOn ---> NEW-STATE : FMTurningOff"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->disable()Z

    const/4 v2, 0x1

    .end local v2           #status:Z
    :goto_1
    return v2

    .restart local v2       #status:Z
    :pswitch_1
    const-string v3, "FMRadio"

    const-string v4, "FM already tuned Off."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1

    :pswitch_2
    const-string v3, "FMRadio"

    const-string v4, "disable: Cancelling the on going search operation prior to disabling FM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->cancelSearch()Z

    const-string v3, "FMRadio"

    const-string v4, "disable: Wait for the state to change from : Search ---> FMRxOn"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_3
    const-string v3, "FMRadio"

    const-string v4, "disable: FM not yet turned On..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    if-ne v1, v5, :cond_0

    const-string v3, "FMRadio"

    const-string v4, "disable: FM in bad state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_4
    const-string v3, "FMRadio"

    const-string v4, "disable: FM is getting turned Off."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 6
    .parameter "configSettings"

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v1, 0x0

    .local v1, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .local v0, state:I
    if-eq v0, v5, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v3, "FMRadio"

    const-string v4, "enable: FM already turned On and running"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1           #status:Z
    .local v2, status:I
    :goto_0
    return v2

    .end local v2           #status:I
    .restart local v1       #status:Z
    :cond_1
    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    const-string v3, "FMRadio"

    const-string v4, "FM is in the process of turning off.Pls wait for sometime."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .restart local v2       #status:I
    goto :goto_0

    .end local v2           #status:I
    :cond_2
    if-ne v0, v4, :cond_3

    const-string v3, "FMRadio"

    const-string v4, "FM is in the process of turning On.Pls wait for sometime."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .restart local v2       #status:I
    goto :goto_0

    .end local v2           #status:I
    :cond_3
    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    const-string v3, "FMRadio"

    const-string v4, "enable: CURRENT-STATE : FMOff ---> NEW-STATE : FMRxStarting"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, v5}, Landroid/hardware/fmradio/FmTransceiver;->enable(Landroid/hardware/fmradio/FmConfig;I)Z

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    invoke-virtual {p0, v3}, Landroid/hardware/fmradio/FmReceiver;->registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v1

    new-instance v3, Landroid/hardware/fmradio/FmRxRdsData;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v3, v4}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    :goto_1
    move v2, v1

    .restart local v2       #status:I
    goto :goto_0

    .end local v2           #status:I
    :cond_4
    const/4 v1, 0x0

    const-string v3, "FMRadio"

    const-string v4, "enable: Error while turning FM On"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FMRadio"

    const-string v4, "enable: CURRENT-STATE : FMRxStarting ---> NEW-STATE : FMOff"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    goto :goto_1
.end method

.method public enableAFjump(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .local v1, state:I
    if-eqz v1, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    :cond_0
    const-string v3, "FMRadio"

    const-string v4, "enableAFjump: Device currently busy in executing another command."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, v3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .local v0, re:I
    if-nez v0, :cond_1

    iget-object v4, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, p1}, Landroid/hardware/fmradio/FmRxRdsData;->enableAFjump(Z)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public getAFInfo()[I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/16 v4, 0x80

    new-array v1, v4, [B

    .local v1, buff:[B
    const/16 v4, 0x28

    new-array v0, v4, [I

    .local v0, AfList:[I
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v5, 0x5

    invoke-static {v4, v1, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    aget-byte v4, v1, v7

    if-lez v4, :cond_0

    aget-byte v4, v1, v7

    const/16 v5, 0x19

    if-le v4, v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    .end local v0           #AfList:[I
    :cond_1
    return-object v0

    .restart local v0       #AfList:[I
    :cond_2
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v3

    .local v3, lowerBand:I
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Low band "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF_buff 4: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    aget-byte v4, v1, v7

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v3

    aput v4, v0, v2

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AF : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFMState()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v0

    .local v0, currFMState:I
    return v0
.end method

.method public getIntDet()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->IntDet(I)I

    move-result v0

    .local v0, re:I
    return v0
.end method

.method public getIoverc()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->IovercControl(I)I

    move-result v0

    .local v0, re:I
    return v0
.end method

.method public getMpxDcc()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->Mpx_Dcc(I)I

    move-result v0

    .local v0, re:I
    return v0
.end method

.method public getOffChannelThreshold()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getOffChannelThreshold(I)I

    move-result v0

    return v0
.end method

.method public getOnChannelThreshold()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getOnChannelThreshold(I)I

    move-result v0

    return v0
.end method

.method public getPSInfo()Landroid/hardware/fmradio/FmRxRdsData;
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x80

    new-array v0, v7, [B

    .local v0, buff:[B
    const/4 v4, 0x0

    .local v4, piLower:I
    const/4 v3, 0x0

    .local v3, piHigher:I
    sget v7, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v7, v0, v8}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    aget-byte v7, v0, v8

    and-int/lit16 v4, v7, 0xff

    const/4 v7, 0x2

    aget-byte v7, v0, v7

    and-int/lit16 v3, v7, 0xff

    shl-int/lit8 v7, v3, 0x8

    or-int v2, v7, v4

    .local v2, pi:I
    iget-object v7, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v7, v2}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    iget-object v7, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    const/4 v8, 0x1

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x1f

    invoke-virtual {v7, v8}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    and-int/lit8 v1, v7, 0xf

    .local v1, numOfPs:I
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x5

    mul-int/lit8 v8, v1, 0x8

    invoke-direct {v5, v0, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .local v5, rdsStr:Ljava/lang/String;
    iget-object v7, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v7, v5}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #rdsStr:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    return-object v7

    :catch_0
    move-exception v6

    .local v6, x:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v7, "FMRadio"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number of PS names "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerMode()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getPwrMode(I)I

    move-result v0

    return v0
.end method

.method public getRTInfo()Landroid/hardware/fmradio/FmRxRdsData;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x80

    new-array v0, v6, [B

    .local v0, buff:[B
    const/4 v3, 0x0

    .local v3, piLower:I
    const/4 v2, 0x0

    .local v2, piHigher:I
    sget v6, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v6, v0, v7}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .local v4, rdsStr:Ljava/lang/String;
    const/4 v6, 0x3

    aget-byte v6, v0, v6

    and-int/lit16 v3, v6, 0xff

    aget-byte v6, v0, v7

    and-int/lit16 v2, v6, 0xff

    shl-int/lit8 v6, v2, 0x8

    or-int v1, v6, v3

    .local v1, pi:I
    iget-object v6, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v6, v1}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    iget-object v6, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit8 v7, v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    const/4 v6, 0x5

    const/4 v7, 0x0

    :try_start_0
    aget-byte v7, v0, v7

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v6, v4}, Landroid/hardware/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    return-object v6

    :catch_0
    move-exception v5

    .local v5, x:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v6, "FMRadio"

    const-string v7, "StringIndexOutOfBoundsException ..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRawRDS(I)[B
    .locals 6
    .parameter "numBlocks"

    .prologue
    const/4 v5, 0x0

    mul-int/lit8 v3, p1, 0x3

    new-array v1, v3, [B

    .local v1, rawRds:[B
    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    mul-int/lit8 v4, p1, 0x3

    invoke-static {v3, v1, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getRawRdsNative(I[BI)I

    move-result v2

    .local v2, re:I
    mul-int/lit8 v3, p1, 0x3

    if-ne v2, v3, :cond_0

    .end local v1           #rawRds:[B
    :goto_0
    return-object v1

    .restart local v1       #rawRds:[B
    :cond_0
    if-gtz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-array v0, v2, [B

    .local v0, buff:[B
    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    goto :goto_0
.end method

.method public getRmssiDelta()I
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->getRmssiDelta(I)I

    move-result v0

    .local v0, re:I
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value of RMSSI Delta is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getRSSINative(I)I

    move-result v0

    .local v0, rssi:I
    return v0
.end method

.method public getRssiLimit()[I
    .locals 2

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .local v0, rssiLimits:[I
    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getSINR()I
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->getSINR(I)I

    move-result v0

    .local v0, re:I
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value of SINR is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSINRThreshold()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getSINRThreshold(I)I

    move-result v0

    return v0
.end method

.method public getSINRsamples()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getSINRsamples(I)I

    move-result v0

    return v0
.end method

.method public getSignalThreshold()I
    .locals 9

    .prologue
    const/16 v8, -0x60

    const/16 v7, -0x64

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v2

    .local v2, state:I
    if-eqz v2, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    :cond_0
    const-string v4, "FMRadio"

    const-string v5, "getSignalThreshold: Device currently busy in executing another command."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    .local v3, threshold:I
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v5, 0x8000008

    invoke-static {v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .local v0, rmssiThreshold:I
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal Threshhold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x69

    if-ge v4, v0, :cond_2

    if-gt v0, v7, :cond_2

    const/16 v1, -0x64

    .local v1, signalStrength:I
    :goto_1
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .end local v1           #signalStrength:I
    :cond_2
    if-ge v7, v0, :cond_3

    if-gt v0, v8, :cond_3

    const/16 v1, -0x60

    .restart local v1       #signalStrength:I
    goto :goto_1

    .end local v1           #signalStrength:I
    :cond_3
    if-ge v8, v0, :cond_4

    const/16 v1, -0x5a

    .restart local v1       #signalStrength:I
    goto :goto_1

    .end local v1           #signalStrength:I
    :cond_4
    const/16 v1, -0x69

    .restart local v1       #signalStrength:I
    goto :goto_1

    :sswitch_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v3, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69 -> :sswitch_0
        -0x64 -> :sswitch_1
        -0x60 -> :sswitch_2
        -0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method public getStationList()[I
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .local v0, state:I
    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const-string v2, "FMRadio"

    const-string v3, "getStationList: Device currently busy in executing another command."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/16 v2, 0x64

    new-array v1, v2, [I

    .local v1, stnList:[I
    iget-object v2, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v2, v3}, Landroid/hardware/fmradio/FmRxControls;->stationList(I)[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTunedFrequency()I
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .local v1, state:I
    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v2, "FMRadio"

    const-string v3, "getTunedFrequency: Device currently busy in executing another command."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .local v0, frequency:I
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 1
    .parameter "callback"

    .prologue
    invoke-super {p0, p1}, Landroid/hardware/fmradio/FmTransceiver;->registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v0

    .local v0, status:Z
    return v0
.end method

.method public registerRdsGroupProcessing(I)Z
    .locals 5
    .parameter "fmGrpsToProc"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .local v1, state:I
    if-eqz v1, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    :cond_2
    const-string v3, "FMRadio"

    const-string v4, "registerRdsGroupProcessing: Device currently busy in executing another command."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, v3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .local v0, re:I
    if-nez v0, :cond_0

    iget-object v4, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, p1}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOptions(I)I

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public reset()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .local v0, state:I
    if-nez v0, :cond_0

    const-string v3, "FMRadio"

    const-string v4, "FM already turned Off."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiver;->setFMPowerState(I)V

    const-string v2, "FMRadio"

    const-string v3, "reset: NEW-STATE : FMState_Turned_Off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->unregisterClient()Z

    move-result v1

    const-string v2, "/dev/radio0"

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiver;->release(Ljava/lang/String;)Z

    move v2, v1

    goto :goto_0
.end method

.method public searchStationList(IIII)Z
    .locals 11
    .parameter "mode"
    .parameter "direction"
    .parameter "maximumStations"
    .parameter "pty"

    .prologue
    const/16 v10, 0x9

    const/4 v3, 0x0

    const/16 v5, 0x8

    const/4 v0, 0x2

    const/4 v9, 0x3

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v8

    .local v8, state:I
    const/4 v6, 0x1

    .local v6, bStatus:Z
    const/4 v7, 0x0

    .local v7, re:I
    if-eqz v8, :cond_0

    if-ne v8, v9, :cond_1

    :cond_0
    const-string v0, "FMRadio"

    const-string v1, "searchStationList: Device currently busy in executing another command."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_1
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchStations: mode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchStations: direction "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchStations: maximumStations "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchStations: pty "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_2

    if-eq p1, v9, :cond_2

    if-eq p1, v5, :cond_2

    if-eq p1, v10, :cond_2

    const/4 v6, 0x0

    :cond_2
    if-ltz p3, :cond_3

    const/16 v1, 0xc

    if-le p3, v1, :cond_4

    :cond_3
    const/4 v6, 0x0

    :cond_4
    if-eqz p2, :cond_5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v6, 0x0

    :cond_5
    if-eqz v6, :cond_8

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    const-string v1, "FMRadio"

    const-string v2, "searchStationList: CURRENT-STATE : FMRxOn ---> NEW-STATE : SearchInProg"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v5, :cond_6

    if-ne p1, v10, :cond_a

    :cond_6
    if-ne p1, v5, :cond_9

    move p1, v0

    :goto_1
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    :goto_2
    if-eqz v7, :cond_8

    const-string v0, "FMRadio"

    const-string v1, "search station list failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    if-ne v0, v9, :cond_7

    invoke-static {v9}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    :cond_7
    const/4 v6, 0x0

    :cond_8
    move v3, v6

    goto/16 :goto_0

    :cond_9
    move p1, v9

    goto :goto_1

    :cond_a
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    goto :goto_2
.end method

.method public searchStations(III)Z
    .locals 11
    .parameter "mode"
    .parameter "dwellPeriod"
    .parameter "direction"

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v9

    .local v9, state:I
    const/4 v7, 0x1

    .local v7, bStatus:Z
    if-eqz v9, :cond_0

    if-ne v9, v10, :cond_2

    :cond_0
    const-string v0, "FMRadio"

    const-string v1, "searchStations: Device currently busy in executing another command."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v5

    :cond_2
    const-string v0, "FMRadio"

    const-string v1, "Basic search..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_3

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_3
    if-ltz p2, :cond_4

    const/4 v0, 0x7

    if-le p2, v0, :cond_5

    :cond_4
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dwelling time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_5
    if-eqz p3, :cond_6

    if-eq p3, v3, :cond_6

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_6
    if-eqz v7, :cond_a

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direction:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_8

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    :cond_7
    :goto_1
    const-string v0, "FMRadio"

    const-string v1, "searchStations: CURRENT-STATE : FMRxOn ---> NEW-STATE : SearchInProg"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fmradio/FmRxControls;->searchStations(IIIIII)I

    move-result v8

    .local v8, re:I
    if-eqz v8, :cond_9

    const-string v0, "FMRadio"

    const-string v1, "search station failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-static {v10}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    goto/16 :goto_0

    .end local v8           #re:I
    :cond_8
    if-ne p1, v3, :cond_7

    invoke-static {v3}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    goto :goto_1

    .restart local v8       #re:I
    :cond_9
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v9

    if-nez v9, :cond_a

    const-string v0, "FMRadio"

    const-string v1, "searchStations: CURRENT-STATE : FMState_Off (unexpected)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v8           #re:I
    :cond_a
    move v5, v7

    goto/16 :goto_0
.end method

.method public searchStations(IIIII)Z
    .locals 10
    .parameter "mode"
    .parameter "dwellPeriod"
    .parameter "direction"
    .parameter "pty"
    .parameter "pi"

    .prologue
    const/4 v7, 0x1

    .local v7, bStatus:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v9

    .local v9, state:I
    if-eqz v9, :cond_0

    const/4 v0, 0x3

    if-ne v9, v0, :cond_1

    :cond_0
    const-string v0, "FMRadio"

    const-string v1, "searchStations: Device currently busy in executing another command."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "FMRadio"

    const-string v1, "RDS search..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_2
    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/4 v0, 0x7

    if-le p2, v0, :cond_4

    :cond_3
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dwelling time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_4
    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-eq p3, v0, :cond_5

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_5
    if-eqz v7, :cond_7

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: dwellPeriod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: pty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStations: pi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fmradio/FmRxControls;->searchStations(IIIIII)I

    move-result v8

    .local v8, re:I
    if-eqz v8, :cond_7

    const-string v0, "FMRadio"

    const-string v1, "scan station failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    :cond_6
    const/4 v7, 0x0

    .end local v8           #re:I
    :cond_7
    move v0, v7

    goto/16 :goto_0
.end method

.method public setHiLoInj(I)V
    .locals 3
    .parameter "inj"

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setHiLoInj(II)I

    move-result v0

    .local v0, re:I
    return-void
.end method

.method public setMuteMode(I)Z
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v0

    .local v0, state:I
    if-eqz v0, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v1, "FMRadio"

    const-string v3, "setMuteMode: Device currently busy in executing another command."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v2}, Landroid/hardware/fmradio/FmRxControls;->muteControl(IZ)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v2, v3, v1}, Landroid/hardware/fmradio/FmRxControls;->muteControl(IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOffChannelThreshold(I)V
    .locals 3
    .parameter "data"

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setOffChannelThreshold(II)I

    move-result v0

    .local v0, re:I
    return-void
.end method

.method public setOnChannelThreshold(I)V
    .locals 3
    .parameter "data"

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setOnChannelThreshold(II)I

    move-result v0

    .local v0, re:I
    return-void
.end method

.method public setPowerMode(I)Z
    .locals 5
    .parameter "powerMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v1}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .local v0, re:I
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v1

    .end local v0           #re:I
    :cond_0
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, v2}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .restart local v0       #re:I
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setRdsGroupOptions(IIZ)Z
    .locals 5
    .parameter "enRdsGrpsMask"
    .parameter "rdsBuffSize"
    .parameter "enRdsChangeFilter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .local v1, state:I
    if-eqz v1, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    :cond_0
    const-string v3, "FMRadio"

    const-string v4, "setRdsGroupOptions: Device currently busy in executing another command."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, v3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .local v0, re:I
    if-nez v0, :cond_1

    iget-object v4, p0, Landroid/hardware/fmradio/FmReceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v4, p1, p2, p3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsGrpOptions(IIZ)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public setRmssiDel(I)V
    .locals 3
    .parameter "delta"

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setRmssiDel(II)I

    move-result v0

    .local v0, re:I
    return-void
.end method

.method public setSINRThreshold(I)V
    .locals 3
    .parameter "data"

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setSINRThreshold(II)I

    move-result v0

    .local v0, re:I
    return-void
.end method

.method public setSINRsamples(I)V
    .locals 3
    .parameter "data"

    .prologue
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->setSINRsamples(II)I

    move-result v0

    .local v0, re:I
    return-void
.end method

.method public setSignalThreshold(I)Z
    .locals 7
    .parameter "threshold"

    .prologue
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v3

    .local v3, state:I
    if-eqz v3, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_0
    const-string v4, "FMRadio"

    const-string v5, "setSignalThreshold: Device currently busy in executing another command."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    .local v0, bStatus:Z
    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal Threshhold input: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, rssiLev:I
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    const-string v4, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid threshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/16 v2, -0x69

    :goto_1
    if-eqz v0, :cond_1

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v5, 0x8000008

    invoke-static {v4, v5, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .local v1, re:I
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .end local v1           #re:I
    :pswitch_1
    const/16 v2, -0x64

    goto :goto_1

    :pswitch_2
    const/16 v2, -0x60

    goto :goto_1

    :pswitch_3
    const/16 v2, -0x5a

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setStereoMode(Z)Z
    .locals 5
    .parameter "stereoEnable"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->getFMState()I

    move-result v1

    .local v1, state:I
    if-eqz v1, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    :cond_0
    const-string v3, "FMRadio"

    const-string v4, "setStereoMode: Device currently busy in executing another command."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v3, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v3, v4, p1}, Landroid/hardware/fmradio/FmRxControls;->stereoControl(IZ)I

    move-result v0

    .local v0, re:I
    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->unregisterClient()Z

    move-result v0

    .local v0, status:Z
    return v0
.end method

.method public updateSpurFreq(IIZ)I
    .locals 2
    .parameter "freq"
    .parameter "rmssi"
    .parameter "enable"

    .prologue
    iget-object v0, p0, Landroid/hardware/fmradio/FmReceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/hardware/fmradio/FmRxControls;->updateSpurTable(IIIZ)I

    move-result v0

    return v0
.end method
.class public Lfe/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Z

.field public g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfe/g;->f:Z

    const/4 v0, -0x2

    iput v0, p0, Lfe/g;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lfe/g;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    return-object v0

    :pswitch_1
    const-string v0, "optimize_close_wlan"

    return-object v0

    :pswitch_2
    const-string v0, "optimize_clean_memory_lock_after_10mins"

    return-object v0

    :pswitch_3
    const-string v0, "optimize_low_resolution"

    return-object v0

    :pswitch_4
    const-string v0, "optimize_low_fps"

    return-object v0

    :pswitch_5
    const-string v0, "optimize_close_aod"

    return-object v0

    :pswitch_6
    const-string v0, "optimize_open_darkmode"

    return-object v0

    :pswitch_7
    const-string v0, "optimize_close_bluetooth"

    return-object v0

    :pswitch_8
    const-string v0, "optimize_screen_lock_time"

    return-object v0

    :pswitch_9
    const-string v0, "optimize_close_wakeup_notification"

    return-object v0

    :pswitch_a
    const-string v0, "optimize_disable_5g"

    return-object v0

    :pswitch_b
    const-string v0, "optimize_disable_gps"

    return-object v0

    :pswitch_c
    const-string v0, "optimize_close_haptic_feedback"

    return-object v0

    :pswitch_d
    const-string v0, "optimize_open_auto_brightness"

    return-object v0

    :pswitch_e
    const-string v0, "optimize_app_auto_start"

    return-object v0

    :pswitch_f
    const-string v0, "optimize_screen_brightness"

    return-object v0

    :pswitch_10
    const-string v0, "optimize_kill_app"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lfe/g;->h:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lfe/g;->f:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lfe/g;->e:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lfe/g;->d:Z

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lfe/g;->f:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lfe/g;->e:Z

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lfe/g;->h:I

    return-void
.end method

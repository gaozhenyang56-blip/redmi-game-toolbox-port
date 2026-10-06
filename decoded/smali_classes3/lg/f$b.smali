.class Llg/f$b;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Llg/f$c;

.field private b:Llg/f$d;

.field final synthetic c:Llg/f;


# direct methods
.method private constructor <init>(Llg/f;)V
    .locals 0

    iput-object p1, p0, Llg/f$b;->c:Llg/f;

    const-string p1, "NewNotificationPolicy"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Llg/f;Llg/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Llg/f$b;-><init>(Llg/f;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    new-instance v0, Llg/f$c;

    iget-object v1, p0, Llg/f$b;->c:Llg/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llg/f$c;-><init>(Llg/f;Llg/f$a;)V

    iput-object v0, p0, Llg/f$b;->a:Llg/f$c;

    new-instance v0, Llg/f$d;

    iget-object v1, p0, Llg/f$b;->c:Llg/f;

    invoke-direct {v0, v1, v2}, Llg/f$d;-><init>(Llg/f;Llg/f$a;)V

    iput-object v0, p0, Llg/f$b;->b:Llg/f$d;

    iget-object v0, p0, Llg/f$b;->c:Llg/f;

    invoke-static {v0}, Llg/f;->j(Llg/f;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Llg/f$b;->a:Llg/f$c;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Llg/f$b;->c:Llg/f;

    invoke-static {v0}, Llg/f;->i(Llg/f;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_is_in_miui_sos_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Llg/f$b;->b:Llg/f$d;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public quitSafely()Z
    .locals 3

    iget-object v0, p0, Llg/f$b;->c:Llg/f;

    invoke-static {v0}, Llg/f;->j(Llg/f;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Llg/f$b;->a:Llg/f$c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Llg/f$b;->c:Llg/f;

    invoke-static {v0}, Llg/f;->i(Llg/f;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Llg/f$b;->b:Llg/f$d;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result v0

    return v0
.end method

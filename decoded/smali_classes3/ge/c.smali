.class public Lge/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final b:Z

.field private static c:Ljava/lang/String;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lge/c;->b:Z

    const-string v0, "synergy_mode"

    sput-object v0, Lge/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lge/c;->a:Z

    return-void
.end method

.method public static synthetic a(Lge/c;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lge/c;->d(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lge/c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ucar_casting_state"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method private c(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lge/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic d(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    const-string v0, "miui.intent.action.HANG_UP_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "hang_up_enable"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "HangUpChangeReceiver"

    const-string v1, "Hangup"

    if-eqz p1, :cond_3

    invoke-direct {p0, p3}, Lge/c;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, p3}, Lge/c;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lge/c;->a:Z

    return-void

    :cond_1
    iput-boolean v0, p0, Lge/c;->a:Z

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isInCarWithMode:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",isMiuiSynergyMode:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",return!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-boolean v0, p0, Lge/c;->a:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    :goto_1
    invoke-static {p3, p1}, Lme/w;->C0(Landroid/content/Context;Z)V

    invoke-static {p1, v1}, Lhd/a;->b1(ZLjava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive broadcast ACTION_HANG_UP_CHANGED "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v1

    new-instance v2, Lge/b;

    invoke-direct {v2, p0, v0, p2, p1}, Lge/b;-><init>(Lge/c;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    return-void
.end method

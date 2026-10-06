.class Lcom/miui/superpower/statusbar/icon/SimSignalView$c;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/icon/SimSignalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/miui/superpower/statusbar/icon/SimSignalView;


# direct methods
.method private constructor <init>(Lcom/miui/superpower/statusbar/icon/SimSignalView;I)V
    .locals 1

    iput-object p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;->b:Lcom/miui/superpower/statusbar/icon/SimSignalView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;->a:I

    :try_start_0
    const-class p1, Landroid/telephony/PhoneStateListener;

    const-string v0, "mSubId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lbh/f;->o(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/superpower/statusbar/icon/SimSignalView;ILcom/miui/superpower/statusbar/icon/SimSignalView$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;-><init>(Lcom/miui/superpower/statusbar/icon/SimSignalView;I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;->b:Lcom/miui/superpower/statusbar/icon/SimSignalView;

    invoke-static {v0, p1}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->b(Lcom/miui/superpower/statusbar/icon/SimSignalView;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;->b:Lcom/miui/superpower/statusbar/icon/SimSignalView;

    iget v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;->a:I

    invoke-static {p1, v0}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->a(Lcom/miui/superpower/statusbar/icon/SimSignalView;I)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    :try_start_0
    const-string v0, "getMiuiLevel"

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    iput p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;->a:I

    :goto_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;->b:Lcom/miui/superpower/statusbar/icon/SimSignalView;

    iget v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;->a:I

    invoke-static {p1, v0}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->a(Lcom/miui/superpower/statusbar/icon/SimSignalView;I)V

    return-void
.end method

.class public Lsd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lsd/f;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lsd/b;->b:Landroid/content/Context;

    new-instance v0, Lsd/f;

    invoke-direct {v0}, Lsd/f;-><init>()V

    iput-object v0, p0, Lsd/b;->a:Lsd/f;

    invoke-virtual {v0, p1}, Lsd/f;->z(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lsd/b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {}, Lsd/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsd/b;

    invoke-direct {v0, p0}, Lsd/b;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lsd/b;->a:Lsd/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lsd/f;->A(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static c(Lsd/b;Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    invoke-direct {p0, p1}, Lsd/b;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 2

    const-string v0, "persist.vendor.reverse.quickcharge"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Lsd/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lsd/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static f()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "odin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-boolean v2, Lsl/a;->a:Z

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-string v2, "pissarropro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zeus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "pissarroinpro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "persist.vendor.accelerate.charge"

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v3
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lme/k;->b()Z

    move-result v0

    return v0
.end method

.method public static i(Z)V
    .locals 1

    invoke-static {}, Lsd/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lme/k;->d(Z)V

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x7

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    invoke-static {p0}, Lke/a;->d(I)Ljava/lang/Boolean;

    :goto_1
    return-void
.end method


# virtual methods
.method public h(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFastChargeNotificationClicked: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FastChargeController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "plugType"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "com.miui.powercenter.action.TURN_ON_FAST_CHARGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "key_fast_charge_enabled"

    const/4 v4, 0x4

    if-nez v1, :cond_3

    const-string v1, "com.miui.powercenter.action.TURN_OFF_FAST_CHARGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lhd/a;->k0()V

    iget-object v0, p0, Lsd/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lsd/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    if-ne p1, v4, :cond_2

    invoke-static {v0}, Lsd/b;->i(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lsd/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    invoke-virtual {v0}, Lde/i;->O()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lhd/a;->e0()V

    iget-object v0, p0, Lsd/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lsd/c;->c(Landroid/content/Context;I)V

    if-ne p1, v4, :cond_4

    invoke-static {v2}, Lsd/b;->i(Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lsd/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    :goto_0
    return-void
.end method

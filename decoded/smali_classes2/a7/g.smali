.class public La7/g;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/gamebooster/service/w;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 2

    invoke-direct {p0}, La7/c;-><init>()V

    iput-object p1, p0, La7/g;->b:Landroid/content/Context;

    iput-object p2, p0, La7/g;->c:Lcom/miui/gamebooster/service/w;

    const-string p1, "android.provider.MiuiSettings$ScreenEffect"

    const-string p2, "GAME_MODE"

    invoke-static {p1, p2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, La7/g;->e:Ljava/lang/String;

    :cond_0
    const-string p2, "android.provider.MiuiSettings$Key"

    const-string v0, "ENABLE_THREE_GESTURE_KEY"

    invoke-static {p2, v0}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, La7/g;->d:Ljava/lang/String;

    :cond_1
    const-string p2, "GAME_MODE_DISABLE_EYECARE"

    invoke-static {p1, p2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, La7/g;->f:I

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-boolean v0, p0, La7/g;->a:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->F(Z)Z

    move-result v1

    const-string v2, "GameBoosterService"

    if-eqz v1, :cond_0

    const-string v1, "misShieldAutoBright...stop "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/g;->b:Landroid/content/Context;

    invoke-static {v1, v0}, La8/u1;->c(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {v0}, Lm6/a;->G(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, La8/g0;->I()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, La8/g0;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "misShieldEyeShield...stop "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, La7/g;->e:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, La7/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, La7/g;->e:Ljava/lang/String;

    invoke-static {v1, v3, v0, v0}, La8/c0;->k(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_1
    invoke-static {v0}, Lm6/a;->I(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, La7/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {}, La8/g0;->w()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lef/d0;->a()I

    move-result v1

    const/16 v3, 0xc

    if-lt v1, v3, :cond_3

    :cond_2
    const-string v1, "misShieldThreeFinger...stop "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, La7/g;->d:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v0}, La8/c0;->k(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_3
    invoke-static {v0}, Lm6/a;->q(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "misDisableVoiceTrigger...stop "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "disable_voicetrigger"

    invoke-static {v1, v3, v0, v2}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_4
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 6

    iget-boolean v0, p0, La7/g;->a:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->F(Z)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "GameBoosterService"

    if-eqz v1, :cond_0

    const-string v1, "misShieldAutoBright...start "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/g;->b:Landroid/content/Context;

    invoke-static {v1, v2}, La8/u1;->c(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {v0}, Lm6/a;->G(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, La8/g0;->I()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, La8/g0;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "misShieldEyeShield...start "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, La7/g;->e:Ljava/lang/String;

    iget v5, p0, La7/g;->f:I

    or-int/2addr v5, v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, La7/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, La7/g;->e:Ljava/lang/String;

    iget v5, p0, La7/g;->f:I

    or-int/2addr v5, v5

    invoke-static {v1, v4, v5, v0}, La8/c0;->k(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_1
    invoke-static {v0}, Lm6/a;->I(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, La7/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {}, La8/g0;->w()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lef/d0;->a()I

    move-result v1

    const/16 v4, 0xc

    if-lt v1, v4, :cond_3

    :cond_2
    const-string v1, "misShieldThreeFinger...start "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, La7/g;->d:Ljava/lang/String;

    invoke-static {v1, v4, v0, v0}, La8/c0;->k(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_3
    invoke-static {v0}, Lm6/a;->q(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "misDisableVoiceTrigger...start "

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La7/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v3, "disable_voicetrigger"

    invoke-static {v0, v3, v2, v1}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_4
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La7/g;->a:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

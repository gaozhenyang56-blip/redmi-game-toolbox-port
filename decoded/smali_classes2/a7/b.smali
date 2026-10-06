.class public La7/b;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Object;

.field private e:Lcom/miui/gamebooster/service/w;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 2

    const-class v0, Landroid/app/StatusBarManager;

    invoke-direct {p0}, La7/c;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, La7/b;->f:Z

    iput-object p1, p0, La7/b;->c:Landroid/content/Context;

    iput-object p2, p0, La7/b;->e:Lcom/miui/gamebooster/service/w;

    const-string p2, "statusbar"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, La7/b;->d:Ljava/lang/Object;

    :try_start_0
    const-string p1, "android.app.MiuiStatusBarManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "DISABLE_FLAG_FLOAT_NOTIFICATION"

    invoke-static {p1, p2}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, La7/b;->i:I

    const-string p1, "DISABLE_NONE"

    invoke-static {v0, p1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, La7/b;->g:I

    const-string p1, "DISABLE_EXPAND"

    invoke-static {v0, p1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, La7/b;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameBoosterReflectUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private f(I)V
    .locals 6

    :try_start_0
    iget-object v0, p0, La7/b;->d:Ljava/lang/Object;

    const-string v1, "disable"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameBoosterReflectUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, La7/b;->f:Z

    iget-boolean v1, p0, La7/b;->a:Z

    const-string v2, "GameBoosterService"

    if-eqz v1, :cond_0

    const-string v1, "mIsAntiMsg...stop"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, La7/b;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "misShieldPullNotificationBar...stop"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, La7/b;->a:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, La7/b;->b:Z

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, La7/b;->g:I

    invoke-direct {p0, v1}, La7/b;->f(I)V

    :cond_3
    iget-object v1, p0, La7/b;->e:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/service/w;->Y(Z)V

    iget-object v1, p0, La7/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gb_notification"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "game_IsAntiMsg"

    invoke-static {v1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    iget-object v0, p0, La7/b;->c:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, La7/b;->f:Z

    iget v1, p0, La7/b;->g:I

    iget-boolean v2, p0, La7/b;->a:Z

    const-string v3, "GameBoosterService"

    if-eqz v2, :cond_0

    iget v2, p0, La7/b;->i:I

    or-int/2addr v1, v2

    const-string v2, "mIsAntiMsg...start "

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, La7/b;->b:Z

    if-eqz v2, :cond_1

    iget v2, p0, La7/b;->h:I

    or-int/2addr v1, v2

    const-string v2, "misShieldPullNotificationBar...start "

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v2, p0, La7/b;->a:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, La7/b;->b:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, La7/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gb_notification"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, v1}, La7/b;->f(I)V

    :goto_1
    const-string v1, "game_IsAntiMsg"

    invoke-static {v1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    iget-object v1, p0, La7/b;->e:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/service/w;->Y(Z)V

    iget-object v0, p0, La7/b;->c:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, La8/g0;->R()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, La7/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {v1}, Lm6/a;->i(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La7/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {v1}, Lm6/a;->j(Z)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, La7/b;->a:Z

    invoke-static {v1}, Lm6/a;->H(Z)Z

    move-result v0

    iput-boolean v0, p0, La7/b;->b:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, La7/b;->f:Z

    return v0
.end method

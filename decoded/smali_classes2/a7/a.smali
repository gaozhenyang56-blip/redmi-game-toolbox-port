.class public La7/a;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/gamebooster/service/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 0

    invoke-direct {p0}, La7/c;-><init>()V

    iput-object p1, p0, La7/a;->b:Landroid/content/Context;

    iput-object p2, p0, La7/a;->c:Lcom/miui/gamebooster/service/w;

    return-void
.end method

.method private f(Z)V
    .locals 2

    const-string v0, "android.provider.SystemSettings$Secure"

    const-string v1, "SCREEN_BUTTONS_STATE"

    invoke-static {v0, v1}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, La7/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, La7/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "GameBoosterService"

    const-string v1, "mIsAntiKeyboard...stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La7/a;->f(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, La7/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "GameBoosterService"

    const-string v1, "mIsAntiKeyboard...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La7/a;->f(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, La7/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    const/4 v0, 0x1

    invoke-static {v0}, Lm6/a;->k(Z)Z

    move-result v0

    iput-boolean v0, p0, La7/a;->a:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

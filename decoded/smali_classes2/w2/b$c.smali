.class Lw2/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/mutiwindow/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Lf7/e;
    .locals 1

    sget-object v0, Lf7/e;->g:Lf7/e;

    return-object v0
.end method

.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 2

    invoke-static {}, Lo2/h;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lw2/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

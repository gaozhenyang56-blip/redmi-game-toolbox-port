.class Lcom/miui/powercenter/provider/PowerSaveService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/provider/PowerSaveService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/provider/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/PowerSaveService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Ltd/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lme/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lme/h;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lme/h;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lme/h;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lme/h;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    new-instance v3, Ltd/a;

    invoke-direct {v3}, Ltd/a;-><init>()V

    invoke-static {v0, v3}, Lcom/miui/powercenter/provider/PowerSaveService;->s(Lcom/miui/powercenter/provider/PowerSaveService;Ltd/a;)Ltd/a;

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->r(Lcom/miui/powercenter/provider/PowerSaveService;)Ltd/a;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v0, v3}, Ltd/a;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/powercenter/provider/PowerSaveService;->u(Lcom/miui/powercenter/provider/PowerSaveService;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->t(Lcom/miui/powercenter/provider/PowerSaveService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "is_pc_5g_dialog_popped"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v4}, Lcom/miui/powercenter/provider/PowerSaveService;->c(Lcom/miui/powercenter/provider/PowerSaveService;)Landroid/database/ContentObserver;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lvd/b;->l(Landroid/content/Context;)Lvd/b;

    move-result-object v0

    invoke-virtual {v0}, Lvd/b;->u()V

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "POWER_SAVE_MODE_OPEN"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0}, Lme/h;->f(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    if-ne v3, v1, :cond_2

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isPhoneIdleState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lme/h;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lme/h;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lbe/d;->c(Landroid/content/Context;)V

    invoke-static {v0}, Lme/h;->j(Landroid/content/Context;)V

    :cond_2
    new-instance v1, Lwd/b;

    invoke-direct {v1}, Lwd/b;-><init>()V

    invoke-virtual {v1, v0}, Lwd/b;->a(Landroid/content/Context;)V

    new-instance v1, Lwd/a;

    invoke-direct {v1}, Lwd/a;-><init>()V

    invoke-virtual {v1, v0}, Lwd/a;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v1}, Lcom/miui/powercenter/provider/PowerSaveService;->d(Lcom/miui/powercenter/provider/PowerSaveService;)Lwd/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lwd/d;->f(Landroid/content/Context;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lme/w;->o0(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lee/e;->a()Lee/e;

    move-result-object v1

    invoke-virtual {v1}, Lee/e;->b()V

    invoke-static {}, Lmd/o;->h()Lmd/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmd/o;->l(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lsd/b;->a(Landroid/content/Context;)Lsd/b;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/powercenter/provider/PowerSaveService;->f(Lcom/miui/powercenter/provider/PowerSaveService;Lsd/b;)Lsd/b;

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    new-instance v3, Lge/f;

    invoke-direct {v3}, Lge/f;-><init>()V

    invoke-static {v1, v3}, Lcom/miui/powercenter/provider/PowerSaveService;->h(Lcom/miui/powercenter/provider/PowerSaveService;Lge/f;)Lge/f;

    iget-object v1, p0, Lcom/miui/powercenter/provider/PowerSaveService$d;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v1}, Lcom/miui/powercenter/provider/PowerSaveService;->g(Lcom/miui/powercenter/provider/PowerSaveService;)Lge/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lge/f;->a(Landroid/content/Context;)V

    :cond_4
    invoke-static {v0}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v1

    invoke-virtual {v1}, Lpd/c;->y()V

    :cond_5
    invoke-static {v0}, Lce/g;->u(Landroid/content/Context;)V

    invoke-static {v2}, Lgd/c;->C1(I)V

    invoke-static {v0}, Lje/c;->f(Landroid/content/Context;)Lje/c;

    move-result-object v0

    invoke-virtual {v0}, Lje/c;->i()V

    return-void
.end method

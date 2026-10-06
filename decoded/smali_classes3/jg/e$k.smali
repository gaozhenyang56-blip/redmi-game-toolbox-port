.class Ljg/e$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/e;->T(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljg/e;


# direct methods
.method constructor <init>(Ljg/e;Z)V
    .locals 0

    iput-object p1, p0, Ljg/e$k;->b:Ljg/e;

    iput-boolean p2, p0, Ljg/e$k;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljg/e$k;->b:Ljg/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljg/e;->i(Ljg/e;I)V

    iget-boolean v0, p0, Ljg/e$k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljg/e$k;->b:Ljg/e;

    invoke-static {v0}, Ljg/e;->u(Ljg/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lme/w;->x0(Landroid/content/Context;I)V

    iget-object v0, p0, Ljg/e$k;->b:Ljg/e;

    invoke-static {v0}, Ljg/e;->u(Ljg/e;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/w;->s0(Landroid/content/Context;I)V

    iget-object v0, p0, Ljg/e$k;->b:Ljg/e;

    invoke-static {v0}, Ljg/e;->u(Ljg/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->o0(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Ljg/e$k;->b:Ljg/e;

    invoke-static {v1}, Ljg/e;->u(Ljg/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SuperPowerSaveManager"

    const-string v2, "start CATEGORY_HOME error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

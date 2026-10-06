.class Lhd/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhd/d;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lhd/d$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lhd/d$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {}, Lme/w;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhd/d$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->s(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lhd/a;->B0(Z)V

    :cond_1
    invoke-static {}, Lmd/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lgd/c;->M0()Z

    move-result v0

    invoke-static {v0}, Lhd/a;->K0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PowerDailyUploadHelper"

    const-string v2, "dailyUpload error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

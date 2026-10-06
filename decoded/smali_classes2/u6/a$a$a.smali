.class Lu6/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu6/a$a;


# direct methods
.method constructor <init>(Lu6/a$a;)V
    .locals 0

    iput-object p1, p0, Lu6/a$a$a;->a:Lu6/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu6/a$a$a;->a:Lu6/a$a;

    iget-object v0, v0, Lu6/a$a;->a:Lu6/a;

    const-string v1, "https://connect.rom.miui.com/generate_204"

    invoke-static {v0, v1}, Lu6/a;->d(Lu6/a;Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lu6/a$a$a;->a:Lu6/a$a;

    iget-object v1, v1, Lu6/a$a;->a:Lu6/a;

    invoke-static {v1}, Lu6/a;->e(Lu6/a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lu6/a$a$a;->a:Lu6/a$a;

    iget-object v0, v0, Lu6/a$a;->a:Lu6/a;

    invoke-static {v0}, Lu6/a;->g(Lu6/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lu6/a$a$a;->a:Lu6/a$a;

    iget-object v1, v1, Lu6/a$a;->a:Lu6/a;

    invoke-static {v1}, Lu6/a;->f(Lu6/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

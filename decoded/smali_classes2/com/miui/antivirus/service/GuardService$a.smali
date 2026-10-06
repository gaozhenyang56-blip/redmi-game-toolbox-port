.class Lcom/miui/antivirus/service/GuardService$a;
.super Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/service/GuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/GuardService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityChanged current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lm2/j;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuardService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lm2/j;->b()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v2

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    const-string v0, "IN"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lw2/t;->z()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChange! preName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; curName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->w(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lo2/h;->k(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->x(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->y(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lo2/h;->j(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->z(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_5
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->A(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lw2/t;->p(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->B(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_6
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->C(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lw2/t;->m(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->D(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_7
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->w(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->A(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->y(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v4, v1

    goto :goto_0

    :cond_a
    move v4, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->w(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->A(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->y(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_c
    move v1, v2

    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->C(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    iget-object v2, v2, Lcom/miui/antivirus/service/GuardService;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/antivirus/service/GuardService;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_e
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    iget-object v2, v2, Lcom/miui/antivirus/service/GuardService;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/miui/antivirus/service/GuardService;->f:Ljava/lang/String;

    :goto_2
    iput-object v2, v0, Lcom/miui/antivirus/service/GuardService;->g:Ljava/lang/String;

    :cond_f
    if-eq v1, v4, :cond_10

    iget-object v3, p0, Lcom/miui/antivirus/service/GuardService$a;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/miui/antivirus/service/GuardService;->E(Lcom/miui/antivirus/service/GuardService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

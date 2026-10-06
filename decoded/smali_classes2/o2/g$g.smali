.class Lo2/g$g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lw2/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lo2/g$i;

.field private b:Lorg/json/JSONArray;

.field private c:J

.field private d:I

.field final synthetic e:Lo2/g;


# direct methods
.method public constructor <init>(Lo2/g;Lo2/g$i;Lorg/json/JSONArray;I)V
    .locals 0

    iput-object p1, p0, Lo2/g$g;->e:Lo2/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lo2/g$g;->a:Lo2/g$i;

    iput-object p3, p0, Lo2/g$g;->b:Lorg/json/JSONArray;

    iput p4, p0, Lo2/g$g;->d:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lw2/d;",
            ">;"
        }
    .end annotation

    const-string p1, "exception when check sign foreground: "

    const-string v0, "PaySafetyCheckManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lw2/f;

    sget-object v3, Lw2/g;->e:Ljava/lang/String;

    iget-object v4, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {v4}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lw2/f;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v3, Lw2/f$c;

    invoke-direct {v3, v2}, Lw2/f$c;-><init>(Lw2/f;)V

    const-string v4, "params"

    iget-object v5, p0, Lo2/g$g;->b:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lw2/f$c;->a(Ljava/lang/String;Ljava/lang/String;)Lw2/f$c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lw2/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lw2/f;->n()Lw2/f$b;

    move-result-object v3

    iget v4, p0, Lo2/g$g;->d:I

    iget-object v5, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {v5}, Lo2/g;->k(Lo2/g;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eq v4, v5, :cond_0

    return-object v1

    :cond_0
    sget-object v4, Lw2/f$b;->a:Lw2/f$b;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lw2/f;->f()Lorg/json/JSONArray;

    move-result-object v2

    sget-boolean v3, Lw2/g;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v2}, Lw2/h;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    move v3, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Lw2/d;

    const/4 v6, 0x5

    invoke-direct {v4, v6}, Lw2/d;-><init>(I)V

    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw2/d;

    iget-object v6, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {v6}, Lo2/g;->j(Lo2/g;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v4, Lw2/d;->k:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {v7}, Lo2/g;->j(Lo2/g;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lw2/d;->h:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lw2/d;->l:Ljava/lang/String;

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v2, v5

    :goto_3
    iget-object v3, p0, Lo2/g$g;->b:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lo2/g$g;->b:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {v4}, Lo2/g;->j(Lo2/g;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    new-instance v4, Lw2/d;

    const/4 v6, 0x3

    invoke-direct {v4, v6}, Lw2/d;-><init>(I)V

    iget-object v6, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {v6}, Lo2/g;->j(Lo2/g;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lw2/d;->h:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :goto_4
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v1
.end method

.method protected b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw2/d;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lo2/g$g;->d:I

    iget-object v1, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {v1}, Lo2/g;->k(Lo2/g;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/d;

    new-instance v1, Lcom/miui/antivirus/model/d;

    invoke-direct {v1}, Lcom/miui/antivirus/model/d;-><init>()V

    sget-object v2, Lo2/g$k;->a:Lo2/g$k;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/d;->N(Lo2/g$k;)V

    iget-object v2, v0, Lw2/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/d;->I(Ljava/lang/String;)V

    iget-object v2, v0, Lw2/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/d;->D(Ljava/lang/String;)V

    iget-object v2, v0, Lw2/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/d;->C(Ljava/lang/String;)V

    iget-object v2, v0, Lw2/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/d;->R(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/d;->E(Lcom/miui/antivirus/model/d$c;)V

    sget-object v2, Lcom/miui/antivirus/model/d$b;->c:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/d;->B(Lcom/miui/antivirus/model/d$b;)V

    iget v0, v0, Lw2/d;->a:I

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/model/d;->T(I)V

    iget-object v0, p0, Lo2/g$g;->a:Lo2/g$i;

    invoke-interface {v0, v1}, Lo2/g$i;->k(Lcom/miui/antivirus/model/d;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo2/g$g;->c:J

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lo2/g;->l(Lo2/g;J)J

    iget-object p1, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {p1}, Lo2/g;->i(Lo2/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    iget-object v0, p0, Lo2/g$g;->e:Lo2/g;

    invoke-static {v0}, Lo2/g;->i(Lo2/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "PaySafetyCheckManager"

    const-string v0, "virus scan first finished, now signature scan finished !"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lo2/g$g;->a:Lo2/g$i;

    invoke-interface {p1}, Lo2/g$i;->h()V

    :cond_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo2/g$g;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lo2/g$g;->b(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo2/g$g;->c:J

    return-void
.end method

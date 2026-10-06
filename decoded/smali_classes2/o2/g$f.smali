.class Lo2/g$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
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
.field private a:Lo2/g$h;

.field private b:Lorg/json/JSONArray;

.field final synthetic c:Lo2/g;


# direct methods
.method public constructor <init>(Lo2/g;Lo2/g$h;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lo2/g$f;->c:Lo2/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lo2/g$f;->a:Lo2/g$h;

    iput-object p3, p0, Lo2/g$f;->b:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
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

    const-string p1, "PaySafetyCheckManager"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lw2/f;

    sget-object v2, Lw2/g;->e:Ljava/lang/String;

    iget-object v3, p0, Lo2/g$f;->c:Lo2/g;

    invoke-static {v3}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lw2/f;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v2, Lw2/f$c;

    invoke-direct {v2, v1}, Lw2/f$c;-><init>(Lw2/f;)V

    const-string v3, "params"

    iget-object v4, p0, Lo2/g$f;->b:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lw2/f$c;->a(Ljava/lang/String;Ljava/lang/String;)Lw2/f$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "active request url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lw2/g;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lw2/f;->n()Lw2/f$b;

    move-result-object v2

    sget-object v3, Lw2/f$b;->a:Lw2/f$b;

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lw2/f;->f()Lorg/json/JSONArray;

    move-result-object v1

    sget-boolean v2, Lw2/g;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Lw2/h;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Lw2/d;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lw2/d;-><init>(I)V

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw2/d;

    iget-object v5, p0, Lo2/g$f;->c:Lo2/g;

    invoke-static {v5}, Lo2/g;->j(Lo2/g;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v4, Lw2/d;->k:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, p0, Lo2/g$f;->c:Lo2/g;

    invoke-static {v6}, Lo2/g;->j(Lo2/g;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lw2/d;->h:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lw2/d;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NameNotFoundException when check sign background: "

    invoke-static {p1, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw2/d;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/d;

    iget v1, v0, Lw2/d;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lo2/g$f;->a:Lo2/g$h;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lo2/g$h;->e(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background scan : unofficial app risk = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lw2/d;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PaySafetyCheckManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lo2/g$f;->a:Lo2/g$h;

    invoke-interface {p1}, Lo2/g$h;->c()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo2/g$f;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lo2/g$f;->b(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

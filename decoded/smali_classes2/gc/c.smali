.class public Lgc/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lgc/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9

    sget-boolean v0, Lec/c;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lec/c;->m()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v0, :cond_3

    aget-object v6, p1, v3

    iget-object v7, p0, Lgc/c;->a:Landroid/content/Context;

    invoke-static {v7}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v7

    iget-object v8, p0, Lgc/c;->a:Landroid/content/Context;

    invoke-virtual {v7, v8}, Li4/a;->h(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v4, "1"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lgc/c;->a:Landroid/content/Context;

    :goto_1
    invoke-static {v4, v6, v5}, Lec/c;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    move v4, v5

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lgc/c;->a:Landroid/content/Context;

    invoke-static {v7}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v7

    iget-object v8, p0, Lgc/c;->a:Landroid/content/Context;

    invoke-virtual {v7, v8}, Li4/a;->l(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v4, "6"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lgc/c;->a:Landroid/content/Context;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lec/c;->C(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lgc/c;->a:Landroid/content/Context;

    invoke-static {p1, v5}, Lec/c;->w(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgc/c;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

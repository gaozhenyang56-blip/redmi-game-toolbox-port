.class Ll7/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/b;->d(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Ll7/b;


# direct methods
.method constructor <init>(Ll7/b;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Ll7/b$i;->c:Ll7/b;

    iput-object p2, p0, Ll7/b$i;->a:Landroid/content/Context;

    iput-boolean p3, p0, Ll7/b$i;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ll7/b$i;->a:Landroid/content/Context;

    iget-boolean v1, p0, Ll7/b$i;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "xunyou_booster_speed"

    goto :goto_0

    :cond_0
    const-string v1, "xunyou_voice"

    :goto_0
    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lue/e;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "translation"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Ll7/b$i;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v1}, La8/o0;->x(Z)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, La8/o0;->y(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TAG"

    const-string v2, "checkUpdate error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

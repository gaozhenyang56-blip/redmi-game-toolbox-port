.class public Lcom/miui/gamebooster/utils/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Li6/a;->j(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    invoke-virtual {v0}, Li6/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "collimator"

    invoke-static {v0, p0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

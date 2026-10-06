.class public Lcom/miui/gamebooster/utils/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u662f"

    goto :goto_0

    :cond_0
    const-string v1, "\u5426"

    :goto_0
    const-string v2, "if_open"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2}, La8/l0;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, La8/l0;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "style"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "status"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

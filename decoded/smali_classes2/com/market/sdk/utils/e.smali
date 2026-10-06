.class public Lcom/market/sdk/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/market/sdk/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market/sdk/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/market/sdk/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market/sdk/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/market/sdk/utils/e$a;

    invoke-direct {v0}, Lcom/market/sdk/utils/e$a;-><init>()V

    sput-object v0, Lcom/market/sdk/utils/e;->a:Lcom/market/sdk/k;

    new-instance v0, Lcom/market/sdk/utils/e$b;

    invoke-direct {v0}, Lcom/market/sdk/utils/e$b;-><init>()V

    sput-object v0, Lcom/market/sdk/utils/e;->b:Lcom/market/sdk/k;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "packageName"

    invoke-static {p0, v1}, Lcom/market/sdk/utils/e;->b(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/market/sdk/utils/e;->b(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "q"

    invoke-static {p0, v1}, Lcom/market/sdk/utils/e;->b(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static b(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

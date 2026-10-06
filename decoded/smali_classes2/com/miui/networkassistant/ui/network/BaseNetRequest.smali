.class public final Lcom/miui/networkassistant/ui/network/BaseNetRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/networkassistant/ui/network/BaseNetRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BH-BaseNetRequest"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TIME_OUT:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/network/BaseNetRequest;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/BaseNetRequest;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->call$lambda$1$lambda$0(Ljava/lang/String;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/util/HashMap;ILcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->call$lambda$1(Ljava/lang/String;Ljava/util/HashMap;ILcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V

    return-void
.end method

.method private static final call$lambda$1(Ljava/lang/String;Ljava/util/HashMap;ILcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V
    .locals 2

    const-string v0, "$url"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/BaseNetRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->makeHttpRequest(Ljava/lang/String;Ljava/util/HashMap;IZ)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lpa/a;

    invoke-direct {p1, p0, p3, p4}, Lpa/a;-><init>(Ljava/lang/String;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final call$lambda$1$lambda$0(Ljava/lang/String;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V
    .locals 3

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;->onFailure()V

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "BH-BaseNetRequest"

    const-string v2, "call : "

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;->onFailure()V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;->onResponse(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    invoke-interface {p1, p0}, Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;->onResponse(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string p4, "url"

    invoke-static {p1, p4}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callback"

    invoke-static {p6, p4}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Lpa/b;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lpa/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;ILcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V

    invoke-static {p4}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->runOnPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->call(Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;)V

    return-void
.end method

.method public final makeHttpRequest(Ljava/lang/String;Ljava/util/HashMap;IZ)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p4, "url"

    invoke-static {p1, p4}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x2

    const-string v0, "query_micard_info"

    if-ne p3, p4, :cond_0

    :try_start_0
    new-instance p3, Lp4/i;

    invoke-direct {p3, v0}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Leg/j;->f(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p3, Lp4/i;

    invoke-direct {p3, v0}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Leg/j;->e(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "makeHttpRequest: url="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BH-BaseNetRequest"

    invoke-static {p4, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    :goto_0
    sget-boolean p3, Luf/a;->a:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "url="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",makeHttpRequest: ="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ltt"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p2
.end method

.method public final post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->call(Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;)V

    return-void
.end method

.method public final securityGet(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->call(Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;)V

    return-void
.end method

.method public final securityPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->call(Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;)V

    return-void
.end method

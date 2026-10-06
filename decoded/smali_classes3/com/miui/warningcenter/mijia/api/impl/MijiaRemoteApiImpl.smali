.class public final Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMijiaRemoteApiImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MijiaRemoteApiImpl.kt\ncom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1549#2:85\n1620#2,3:86\n1549#2:90\n1620#2,3:91\n1#3:89\n*S KotlinDebug\n*F\n+ 1 MijiaRemoteApiImpl.kt\ncom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl\n*L\n20#1:85\n20#1:86,3\n25#1:90\n25#1:91,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CloseWindowApiImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final client:Lym/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;->Companion:Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lym/u;)V
    .locals 1
    .param p1    # Lym/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;->client:Lym/u;

    return-void
.end method

.method private final genSign(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lqj/l;->x(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    invoke-virtual {v1}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    invoke-virtual {v2}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lqj/l;->L(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, ""

    invoke-static/range {v3 .. v11}, Lqj/l;->E(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lak/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "6f875c57-e561-56b5-84a1-68b55ad68066"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public notifyWindowClose(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CloseWindowApiImpl"

    const-string v1, "warnings"

    invoke-static {p1, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    new-instance v4, Lcom/miui/warningcenter/mijia/api/impl/RequestBodyMessageAlertList;

    invoke-virtual {v3}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getDid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getAlertType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/miui/warningcenter/mijia/api/impl/RequestBodyMessageAlertList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqj/l;->x(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    new-instance v3, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;

    new-instance v4, Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;

    invoke-virtual {v2}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getSrv()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v3, v4, v1}, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;-><init>(Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;Ljava/util/List;)V

    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lym/t;->c(Ljava/lang/String;)Lym/t;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lym/y;->c(Lym/t;Ljava/lang/String;)Lym/y;

    move-result-object v1

    sget-object v2, Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;->Companion:Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;

    invoke-virtual {v2}, Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;->getBASE_URL()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lym/x$a;

    invoke-direct {v3}, Lym/x$a;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mijia/warning/cancel?sign="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;->genSign(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lym/x$a;->g(Ljava/lang/String;)Lym/x$a;

    invoke-virtual {v3, v1}, Lym/x$a;->e(Lym/y;)Lym/x$a;

    invoke-virtual {v3}, Lym/x$a;->a()Lym/x;

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;->client:Lym/u;

    invoke-virtual {v1, p1}, Lym/u;->q(Lym/x;)Lym/d;

    move-result-object p1

    invoke-interface {p1}, Lym/d;->J()Lym/z;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request close window api success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lym/z;->c()Lym/a0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lym/a0;->l()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "request close window api failed: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

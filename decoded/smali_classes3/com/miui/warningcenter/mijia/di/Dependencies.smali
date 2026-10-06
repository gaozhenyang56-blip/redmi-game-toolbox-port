.class public final Lcom/miui/warningcenter/mijia/di/Dependencies;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/miui/warningcenter/mijia/di/Dependencies;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final alertWindowRepository:Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final apiImpl:Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final appDispatcher:Llk/i1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultDispatcher:Llk/d0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ioDispatcher:Llk/d0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final okHttpClient:Lym/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/miui/warningcenter/mijia/di/Dependencies;

    invoke-direct {v0}, Lcom/miui/warningcenter/mijia/di/Dependencies;-><init>()V

    sput-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->INSTANCE:Lcom/miui/warningcenter/mijia/di/Dependencies;

    invoke-static {}, Llk/w0;->a()Llk/d0;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->defaultDispatcher:Llk/d0;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x4

    const/4 v3, 0x4

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v0}, Llk/k1;->c(Ljava/util/concurrent/ExecutorService;)Llk/i1;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->appDispatcher:Llk/i1;

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->ioDispatcher:Llk/d0;

    new-instance v1, Lym/u;

    invoke-direct {v1}, Lym/u;-><init>()V

    sput-object v1, Lcom/miui/warningcenter/mijia/di/Dependencies;->okHttpClient:Lym/u;

    new-instance v2, Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;

    invoke-direct {v2, v1}, Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;-><init>(Lym/u;)V

    sput-object v2, Lcom/miui/warningcenter/mijia/di/Dependencies;->apiImpl:Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;

    new-instance v1, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;

    sget-object v3, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->Companion:Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;

    invoke-virtual {v3}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;->getInstance()Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;-><init>(Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;Llk/d0;)V

    sput-object v1, Lcom/miui/warningcenter/mijia/di/Dependencies;->alertWindowRepository:Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlertWindowRepository()Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->alertWindowRepository:Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;

    return-object v0
.end method

.method public final getApiImpl()Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->apiImpl:Lcom/miui/warningcenter/mijia/api/impl/MijiaRemoteApiImpl;

    return-object v0
.end method

.method public final getAppDispatcher()Llk/i1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->appDispatcher:Llk/i1;

    return-object v0
.end method

.method public final getDefaultDispatcher()Llk/d0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->defaultDispatcher:Llk/d0;

    return-object v0
.end method

.method public final getIoDispatcher()Llk/d0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->ioDispatcher:Llk/d0;

    return-object v0
.end method

.method public final getOkHttpClient()Lym/u;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/mijia/di/Dependencies;->okHttpClient:Lym/u;

    return-object v0
.end method

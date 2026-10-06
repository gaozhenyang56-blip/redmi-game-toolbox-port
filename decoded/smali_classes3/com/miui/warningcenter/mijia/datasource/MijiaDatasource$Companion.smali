.class public final Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;-><init>()V

    return-void
.end method

.method private static synthetic getINSTANCE$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->access$getINSTANCE$cp()Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->access$getINSTANCE$cp()Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;-><init>(Lbk/g;)V

    invoke-static {v1}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->access$setINSTANCE$cp(Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;)V

    :cond_0
    sget-object v1, Loj/t;->a:Loj/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->access$getINSTANCE$cp()Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    return-object v0
.end method

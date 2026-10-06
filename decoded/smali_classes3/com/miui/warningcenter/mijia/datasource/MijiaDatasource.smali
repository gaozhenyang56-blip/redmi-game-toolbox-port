.class public final Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile INSTANCE:Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final _alertPush:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final alertPush:Lkotlinx/coroutines/flow/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/a0<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->Companion:Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Lkotlinx/coroutines/flow/c0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/s;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->_alertPush:Lkotlinx/coroutines/flow/s;

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->b(Lkotlinx/coroutines/flow/s;)Lkotlinx/coroutines/flow/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->alertPush:Lkotlinx/coroutines/flow/a0;

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;
    .locals 1

    sget-object v0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->INSTANCE:Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;)V
    .locals 0

    sput-object p0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->INSTANCE:Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    return-void
.end method

.method public static final getInstance()Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->Companion:Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;

    invoke-virtual {v0}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource$Companion;->getInstance()Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAlertPush()Lkotlinx/coroutines/flow/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/a0<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->alertPush:Lkotlinx/coroutines/flow/a0;

    return-object v0
.end method

.method public final updateAlertPush(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newData"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->_alertPush:Lkotlinx/coroutines/flow/s;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/s;->setValue(Ljava/lang/Object;)V

    return-void
.end method

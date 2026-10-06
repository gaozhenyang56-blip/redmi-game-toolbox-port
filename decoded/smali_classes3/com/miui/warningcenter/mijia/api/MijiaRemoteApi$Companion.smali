.class public final Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;

.field private static final BASE_URL:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLEAR_ALERT_API:Ljava/lang/String; = "/mijia/warning/cancel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SALT:Ljava/lang/String; = "6f875c57-e561-56b5-84a1-68b55ad68066"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;

    invoke-direct {v0}, Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;-><init>()V

    sput-object v0, Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;->$$INSTANCE:Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;

    const-string v0, "https://warning-mijia.sec.miui.com"

    sput-object v0, Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;->BASE_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBASE_URL()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method

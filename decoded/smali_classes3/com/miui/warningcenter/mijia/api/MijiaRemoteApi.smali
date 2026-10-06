.class public interface abstract Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;
    }
.end annotation


# static fields
.field public static final CLEAR_ALERT_API:Ljava/lang/String; = "/mijia/warning/cancel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;
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

    sget-object v0, Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;->$$INSTANCE:Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;

    sput-object v0, Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;->Companion:Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract notifyWindowClose(Ljava/util/List;)V
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
.end method

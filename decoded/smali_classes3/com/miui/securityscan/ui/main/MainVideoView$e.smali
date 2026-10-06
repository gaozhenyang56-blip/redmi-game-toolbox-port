.class final enum Lcom/miui/securityscan/ui/main/MainVideoView$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/MainVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/securityscan/ui/main/MainVideoView$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/securityscan/ui/main/MainVideoView$e;

.field public static final enum b:Lcom/miui/securityscan/ui/main/MainVideoView$e;

.field private static final synthetic c:[Lcom/miui/securityscan/ui/main/MainVideoView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/securityscan/ui/main/MainVideoView$e;

    const-string v1, "SCAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/ui/main/MainVideoView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/ui/main/MainVideoView$e;->a:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    new-instance v1, Lcom/miui/securityscan/ui/main/MainVideoView$e;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/securityscan/ui/main/MainVideoView$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/securityscan/ui/main/MainVideoView$e;->b:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/securityscan/ui/main/MainVideoView$e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/securityscan/ui/main/MainVideoView$e;->c:[Lcom/miui/securityscan/ui/main/MainVideoView$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/ui/main/MainVideoView$e;
    .locals 1

    const-class v0, Lcom/miui/securityscan/ui/main/MainVideoView$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/securityscan/ui/main/MainVideoView$e;

    return-object p0
.end method

.method public static values()[Lcom/miui/securityscan/ui/main/MainVideoView$e;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/ui/main/MainVideoView$e;->c:[Lcom/miui/securityscan/ui/main/MainVideoView$e;

    invoke-virtual {v0}, [Lcom/miui/securityscan/ui/main/MainVideoView$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/securityscan/ui/main/MainVideoView$e;

    return-object v0
.end method

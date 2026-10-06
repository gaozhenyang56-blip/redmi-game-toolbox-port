.class final enum Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/ui/FirstAidVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

.field public static final enum b:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

.field private static final synthetic c:[Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    const-string v1, "SCAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->a:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    new-instance v1, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->c:[Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;
    .locals 1

    const-class v0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    return-object p0
.end method

.method public static values()[Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;
    .locals 1

    sget-object v0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->c:[Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    invoke-virtual {v0}, [Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    return-object v0
.end method

.class public final enum Lc6/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc6/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc6/h$a;

.field public static final enum c:Lc6/h$a;

.field public static final enum d:Lc6/h$a;

.field public static final enum e:Lc6/h$a;

.field public static final enum f:Lc6/h$a;

.field public static final enum g:Lc6/h$a;

.field public static final enum h:Lc6/h$a;

.field private static final synthetic i:[Lc6/h$a;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc6/h$a;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const-string v3, "single_on"

    invoke-direct {v0, v1, v2, v3}, Lc6/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc6/h$a;->b:Lc6/h$a;

    new-instance v0, Lc6/h$a;

    const-string v1, "MULTI"

    const/4 v2, 0x1

    const-string v3, "multi_on"

    invoke-direct {v0, v1, v2, v3}, Lc6/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc6/h$a;->c:Lc6/h$a;

    new-instance v0, Lc6/h$a;

    const-string v1, "SURROUND"

    const/4 v2, 0x2

    const-string v3, "surround_on"

    invoke-direct {v0, v1, v2, v3}, Lc6/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc6/h$a;->d:Lc6/h$a;

    new-instance v0, Lc6/h$a;

    const-string v1, "VOICEPRINT"

    const/4 v2, 0x3

    const-string v3, "vpnr_on"

    invoke-direct {v0, v1, v2, v3}, Lc6/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc6/h$a;->e:Lc6/h$a;

    new-instance v0, Lc6/h$a;

    const-string v1, "OFF"

    const/4 v2, 0x4

    const-string v3, "off"

    invoke-direct {v0, v1, v2, v3}, Lc6/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc6/h$a;->f:Lc6/h$a;

    new-instance v0, Lc6/h$a;

    const-string v1, "SMART_FRAMES_INSERTION"

    const/4 v2, 0x5

    const-string v3, "smart_frames_insertion"

    invoke-direct {v0, v1, v2, v3}, Lc6/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc6/h$a;->g:Lc6/h$a;

    new-instance v0, Lc6/h$a;

    const-string v1, "SUPER_RESOLUTION"

    const/4 v2, 0x6

    const-string v3, "super_ratio"

    invoke-direct {v0, v1, v2, v3}, Lc6/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc6/h$a;->h:Lc6/h$a;

    invoke-static {}, Lc6/h$a;->a()[Lc6/h$a;

    move-result-object v0

    sput-object v0, Lc6/h$a;->i:[Lc6/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lc6/h$a;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lc6/h$a;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lc6/h$a;

    sget-object v1, Lc6/h$a;->b:Lc6/h$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lc6/h$a;->c:Lc6/h$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lc6/h$a;->d:Lc6/h$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lc6/h$a;->e:Lc6/h$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lc6/h$a;->f:Lc6/h$a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lc6/h$a;->g:Lc6/h$a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lc6/h$a;->h:Lc6/h$a;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lc6/h$a;
    .locals 1

    const-class v0, Lc6/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc6/h$a;

    return-object p0
.end method

.method public static values()[Lc6/h$a;
    .locals 1

    sget-object v0, Lc6/h$a;->i:[Lc6/h$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc6/h$a;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lc6/h$a;->a:Ljava/lang/String;

    return-object v0
.end method
